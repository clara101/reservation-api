Rails.application.routes.draw do
  namespace :api, :defaults => {:format => :json} do
    namespace :v1 do
      post "/reservations", to: "reservations#create"
      get "/reservations", to: "reservations#index"
    
    end
  end
end
