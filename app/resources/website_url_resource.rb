class WebsiteUrlResource < JSONAPI::Resource
  attributes :url
  has_one :website_url

  filter :website_url

  before_save do
  	@model.get_detail_from_website
  end
end