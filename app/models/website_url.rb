class WebsiteUrl < ActiveRecord::Base
	has_one :website_content, inverse_of: :website_url

	#
	# Validations
	#
	validates :url, presence: true

	#
	# Instance methods
	#
	def get_detail_from_website
		Parser.new(self).scrap_and_save_content
	end
end
