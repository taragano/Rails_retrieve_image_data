class Picture < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	after_save :update_dimensions 

	def update_dimensions 
		if self.image.present? && self.image.metadata.present? 
			width = self.image.metadata["width"]
			height = self.image.metadata["height"] 
			self.update_column(:width, width)
			self.update_column(:height, height)
			puts "*****"
			puts "Width: #{self.width}"
			puts "Width: #{self.height}"
			puts "*****"
		end
	end
end
