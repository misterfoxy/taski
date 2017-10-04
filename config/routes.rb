Rails.application.routes.draw do
  get 'contact', to: 'pages#contact'

  get 'about', to: "pages#about"

  get 'error', to: 'pages#error'

  get 'blog', to: redirect('https://misterfoxy.github.io')

  resources :projects

  root 'pages#home'

  get '*path', to: redirect('/error')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
