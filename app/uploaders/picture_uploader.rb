# encoding: utf-8

class PictureUploader < CarrierWave::Uploader::Base

 storage :file
 
 def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
 end

 def cache_dir
   'tmp/project-picture'
 end

  
end
