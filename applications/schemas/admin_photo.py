from applications.extensions import ma
from marshmallow import fields


class PhotoOutSchema(ma.Schema):
    id = fields.Integer()
    name = fields.Str()
    href = fields.Str()
    seg_href = fields.Str()
    mime = fields.Str()
    size = fields.Str()
    ext = fields.Str()
    create_time = fields.DateTime()
