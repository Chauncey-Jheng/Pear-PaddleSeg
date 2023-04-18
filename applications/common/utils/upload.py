import os
from flask import current_app
from sqlalchemy import desc
from applications.extensions import db
from applications.extensions.init_upload import photos
from applications.models import Photo
from applications.schemas import PhotoOutSchema
from applications.common.curd import model_to_dicts

# import PaddleSeg_Package
# from PaddleSeg.paddleseg.core import predict

def get_photo(page, limit):
    photo = Photo.query.order_by(desc(Photo.create_time)).paginate(page=page, per_page=limit, error_out=False)
    count = Photo.query.count()
    data = model_to_dicts(schema=PhotoOutSchema, data=photo.items)
    return data, count

def segment(filename):
    config_path = "PaddleSeg/pp_liteseg_infer_model/deploy.yaml"
    image_path = "static/upload/" + filename
    save_dir = "static/upload/"
    device = "cpu"
    cmdstr = """
        python PaddleSeg/deploy/python/infer.py \\
        --config  %s \\
        --image_path %s \\
        --save_dir %s \\
        --device %s
        """%(config_path, image_path, save_dir, device)
    os.system(cmdstr)
    base_name=os.path.splitext(filename)[0]
    seg_url = '/_uploads/photos/' + "seg_" + base_name + ".png"
    return seg_url

def upload_one(photo, mime):
    filename = photos.save(photo)
    # file_url = '/_uploads/photos/'+filename
    file_url = photos.url(filename)
    seg_file_url = segment(filename)
    upload_url = current_app.config.get("UPLOADED_PHOTOS_DEST")
    size = os.path.getsize(upload_url + '/' + filename)
    photo = Photo(name=filename, href=file_url, seg_href=seg_file_url, mime=mime, size=size)
    db.session.add(photo)
    db.session.commit()
    return file_url


def delete_photo_by_id(_id):
    photo_name = Photo.query.filter_by(id=_id).first().name
    photo = Photo.query.filter_by(id=_id).delete()
    db.session.commit()
    upload_url = current_app.config.get("UPLOADED_PHOTOS_DEST")
    os.remove(upload_url + '/' + photo_name)
    return photo
