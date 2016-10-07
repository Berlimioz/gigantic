class ImagesContainer < ActiveRecord::Base
  include Gigantic::ContainerObject

  def perform_upload_for(request_params)
    params = JSON.parse(request_params)

    params.each do |p_hash|
      Image.create(picture: p_hash, images_container_id: self.id, original_filename: p_hash['original_filename'])
    end

    self.update_attributes(message: "Un nouveau container avec ces images : #{self.images.pluck(:original_filename).join(', ')}")
  end

  def valid_upload_params?(request_params)
    params = JSON.parse(request_params)
    if params
      puts params.first['relative_path']
      params.first['relative_path']
      params =~ /^d+$/
    end
  end

  def to_s
    "#{id} : #{self.images.count}"
  end
end
