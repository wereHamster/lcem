
ActionController::Routing::Routes.draw do |map|

  map.root :controller => :session, :action => :index

  map.meeting ':id', :controller => :meeting, :action => :show, :conditions => { :method => :get }
  map.meeting ':id', :controller => :meeting, :action => :update, :conditions => { :method => :put }
  map.connect ':id/:action.:format', :controller => :meeting

end
