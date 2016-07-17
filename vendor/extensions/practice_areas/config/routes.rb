Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :practice_areas do
    resources :practice_areas, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :practice_areas, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :practice_areas, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
