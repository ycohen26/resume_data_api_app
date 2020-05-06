Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/students/:id" => "students#show"
    post "/students" => "students#create"
    patch "students/:id" => "students#update"

    post "/sessions" => "sessions#create"

    patch "/experiences" => "experiences#update"

    patch "/skills" => "skills#update"

    patch "/educations" => "educations#update"

    patch "/capstones" => "capstones#update"
  end
end
