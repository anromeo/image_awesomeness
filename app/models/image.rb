class Image < ActiveRecord::Base
  attr_accessible :photo, :image_name, :memory_id
  belongs_to :memory

  mount_uploader :photo, ImageUploader
  process_in_background :photo

  #after_save :enqueue_image

  #def enqueue_image
  #  Resque.enqueue(ImageCreator, id)
  #end
end
