Rails.application.routes.draw do
  resources :comments, only: [:index]
  devise_for :users
  root 'items#index'


  resources :items, only: [:index, :new, :create] do
  collection do
    get 'get_category_children', defaults: { format: 'json' }
    get 'get_category_grandchildren', defaults: { format: 'json' }
    get 'get_size', defaults: { format: 'json' }
  end
end

end
