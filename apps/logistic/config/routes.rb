Logistic::Engine.routes.draw do
  root "orders#index"
  
  resource :orders, only: [:index, :update] do
    get :get_last_order, on: :collection
  end
end
