ActionController::Routing::Routes.draw do |map|
  map.root :controller => 'home', :action => 'index'
  map.feed 'feed', :controller => 'home', :format => 'rss'
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end

