
class MeetingController < ApplicationController

	def show
	  @meeting = Meeting.find(params[:id])
	  @title = @meeting.name
	  @athlet = Athlete.new
	end

  def register
    @meeting = Meeting.find(params[:id])
    @title = @meeting.name
    
    @athlet = Athlete.create(params[:athlete])
    @athlet.errors.each{|e,o| puts e; puts o}
    return render :action => :show if @athlet.invalid?
    
    @athlet.meeting = @meeting
    @athlet.save!
  end

  def export
    @meeting = Meeting.find(params[:id])
    @title = @meeting.name
  end

end
