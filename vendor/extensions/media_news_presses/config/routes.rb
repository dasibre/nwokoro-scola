Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :media_news_presses do
    resources :media_news_presses, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :media_news_presses, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :media_news_presses, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end


  # Frontend routes
  namespace :media_news_presses do
    resources :sections, :only => [:index, :show]
  end

  # Admin routes
  namespace :media_news_presses, :path => '' do
    namespace :admin, :path => "#{Refinery::Core.backend_route}/media_news_presses" do
      resources :sections, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
