Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'landing_pages#index'

  resources :shortened_urls 

  #convert the lengthy URL into shortened URL
  get "/:unique_key" => 'shortened_urls#convert', :as => :convert_link

  #Showing shortened URL for user
  get "/your_short_url/:id" => 'shortened_urls#your_short_url', :as => :short_url
  
end
