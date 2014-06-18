class ImageUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave


  version :standard do
    process :resize_to_fill => [750, 300, :north]
  end

  version :thumbnail do
    process :resize_to_fit => [150, 150]
  end

  version :tiny do
    process :resize_to_fit => [50, 50]
  end




  def default_image_name
    :placeholder
  end
  def extension_white_list
    %w(jpg jpeg gif png)
  end
end