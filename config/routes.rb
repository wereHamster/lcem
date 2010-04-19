
ActionController::Routing::Routes.draw do |map|
  
  map.root :controller => :session, :action => :index

  map.meeting ':id', :controller => :meeting, :action => :show    
  map.connect ':id/:action.:format', :controller => :meeting
end
