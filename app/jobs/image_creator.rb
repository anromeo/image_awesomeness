class ImageCreator
  @queue = :pictures_queue
  def self.perform(id)
    image = Image.find(id)
    image.remote_photo_url = image.photo.recreate_versions!(:thumb, :medium, :large)
    image.save!
  end
end