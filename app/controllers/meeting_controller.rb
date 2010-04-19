
class MeetingController < ApplicationController

	def show
	  @meeting = Meeting.find(params[:id])
	  @title = @meeting.name
	  @athlete = Athlete.new
	end

  def register
    @athlete = Athlete.create(params[:athlete])
    return render :action => :show if @athlete.invalid?
  end

  def export
    @meeting = Meeting.find(params[:id])
  end

end
