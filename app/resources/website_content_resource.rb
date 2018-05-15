class WebsiteContentResource < JSONAPI::Resource
	attributes :header1, :header2, :header3, :a_hyperlink
	attribute  :url

	belongs_to :website_url

	def url
		"#{@model.website_url.try(:url)}"
	end
end