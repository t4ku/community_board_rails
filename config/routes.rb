CommunityBoard::Application.routes.draw do
  use_doorkeeper

  devise_for :users
  resources :communities, except: :index do
    resources :posts
  end
  root to: 'communities#index'

  namespace "api" do
    namespace "v1" do
      resources :communities do
        resources :posts
      end
    end
  end

end
