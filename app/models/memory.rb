class Memory < ActiveRecord::Base
  attr_accessible :date, :memory, :title, :user_id, :images_attributes

  belongs_to :user
  has_many :images

  accepts_nested_attributes_for :images
end