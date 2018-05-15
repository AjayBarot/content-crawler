class Parser
	def initialize(model)
		@model = model
		@url 	 = model.url
	end

	def scrap_and_save_content
		scraper 						= Mechanize.new
  	raw_result  				= scraper.get(@url)
  	h1_data     				= search_into_html(raw_result, 'h1')
  	h2_data     				= search_into_html(raw_result, 'h2')
  	h3_data     				= search_into_html(raw_result, 'h3')
  	a_data     					= search_into_html(raw_result, 'a')

  	@model.build_website_content.tap do |f|
  		f.header1 			= h1_data
  		f.header2 			= h2_data 
  		f.header3 		  = h3_data
  		f.a_hyperlink   =  a_data
  	end.save
	end

	def search_into_html(result, tag)
		get_body_of_element(result.search(tag))
	end

	def get_body_of_element(element)
		element.try(:text)
	end
end