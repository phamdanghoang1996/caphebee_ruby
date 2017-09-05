Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "gioi-thieu", to: "intro#index"
  resources :category, only: [:index, :show], path: 'loai-thuc-uong', controller: 'category'
  resources :post, only: [:index, :show], path: 'bai-viet', controller: 'post'
  get "dia-chi", to: "address#index"
end
