class ProfileUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  include Sprockets::Rails::Helper

  #temporary file if use file
  #storage :file
  storage :fog
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
  def extension_whitelist
    %w(jpg jpeg gif png)
  end
end
