require 'image_library'

ImageLibrary.setup do |config|
  config.authorize_with :pundit
end

ImageLibrary::ImageUploader.class_eval do
  version :large do
    process :resize_and_pad => [300, 300]
  end
end
