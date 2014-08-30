class Post < ActiveRecord::Base
	include Bootsy::Container
	has_many :comments
	mount_uploader :image, ImageUploader
end
