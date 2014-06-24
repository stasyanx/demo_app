DemoApp::Application.routes.draw do

  devise_for :users, controllers: {registrations: 'users/registrations', sessions: 'users/sessions'}

  scope '(:locale)' do
    root 'users/posts#index'

    namespace :users do
      resources :posts, only: [:index,:show] do
        resource :comments
      end
      resources :about, only: [:index]
      resources :users, path:'current_user'
    end
  end

  namespace :admin do
    post 'login' => 'home#login'
    get 'login' => 'home#login'
    resources :posts
  end

end
