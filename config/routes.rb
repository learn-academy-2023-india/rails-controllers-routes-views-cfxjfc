Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  root 'bidness#home'
  get '/home', to: 'bidness#home'
  get '/about', to: 'bidness#about'
  get '/contact', to: 'bidness#contact'
  get '/products', to: 'bidness#products'
  get '/main/cubed/:number', to: 'main#cubed'
  get '/main/evenly/:num1/:num2', to: 'main#evenly'
  get '/main/palindrome/:word', to: 'main#palindrome'
  get '/main/random/:min/:max', to: 'main#random'
  get '/main/madlib/:noun/:verb/:adjective/:adverb', to: 'main#madlib'

  # Defines the root path route ("/")
  # root "posts#index"
end
