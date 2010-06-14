
class SessionController < ApplicationController

  def index
    @meetings = Meeting.all(:order => :datum)
  end

  def login
  end

  def logout
  end

end
