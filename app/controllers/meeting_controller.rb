
class MeetingController < ApplicationController

  def show
    @meeting = Meeting.find(params[:id])
    @title = @meeting.name
    @athlet = Athlete.new
    @verein = session[:verein]
  end

  def register
    @meeting = Meeting.find(params[:id])
    @title = @meeting.name

    @athlet = Athlete.create(params[:athlete])
    return render :action => :show if @athlet.invalid?

    session[:verein] = @athlet.verein

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
