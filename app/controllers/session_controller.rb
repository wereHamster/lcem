
class SessionController < ApplicationController

  def index
    @meetings = Meeting.all(:conditions => [ "anmeldeschluss > ?", Time.now ], :order => :datum)
  end

  def login
  end

  def logout
  end

end
