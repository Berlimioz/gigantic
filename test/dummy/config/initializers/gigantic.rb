require 'cloudinary'

Gigantic.image_object_class_name = 'Image'
Gigantic.container_object_class_name = 'ImagesContainer'
Gigantic.delay_upload = false
Gigantic.container_object_types = { default: 'ImagesContainer' }
