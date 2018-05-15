class WebsiteContent < ActiveRecord::Base
  belongs_to :website_url, inverse_of: :website_content
end
