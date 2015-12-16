Ecommerce::Engine.routes.draw do
  devise_for :users, class_name: "Ecommerce::User"
end
