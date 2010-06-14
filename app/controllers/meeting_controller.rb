
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

  def edit
    @meeting = Meeting.find(params[:id])
  end

  def update
    @meeting = Meeting.find(params[:id])

    if @meeting.update_attributes(params[:meeting])
      redirect_to(@meeting)
    else
      render :action => "edit"
    end
  end

end
