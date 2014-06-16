DemoApp::Application.routes.draw do

  devise_for :users, controllers: {registrations: 'users/registrations', sessions: 'users/sessions'}

  scope '(:locale)' do
    root 'users/posts#index'

    namespace :users do
      resources :posts


        resource :comments
      end
    end


  namespace :admin do
    #root 'posts#index'
    get 'login' => 'home#login'
    resources :posts
  end

end
