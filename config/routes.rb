ActionController::Routing::Routes.draw do |map|
  map.resources :user_sessions
  map.resources :users
  map.login "/login", :controller => "user_sessions", :action => "new"
  map.logout "/logout", :controller => "user_sessions", :action => "destroy"
  map.root :controller => "dashboard", :action => "index"
end
