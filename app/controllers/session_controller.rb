
class SessionController < ApplicationController

	def index
	  @meetings = Meeting.all
	end

	def login
	end

	def logout
	end

end
