ContentCrawler::Application.routes.draw do
  jsonapi_resources :website_urls,     only: [:create]
  jsonapi_resources :website_contents, only: [:index]
end