Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :cutes do
    resources :cutes, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :cutes, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :cutes, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
