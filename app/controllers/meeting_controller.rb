
class MeetingController < ApplicationController

  def show
    @meeting = Meeting.find(params[:id])
    @title = @meeting.name
  end

  def anmeldung
    @meeting = Meeting.find(params[:id])
    @title = @meeting.name
    @athlet = Athlete.new
    @verein = params[:verein]
    @athletes = @meeting.athletes.where(:verein => @verein)
  end

  def register
    @meeting = Meeting.find(params[:id])
    @title = @meeting.name

    @athlet = Athlete.create(params[:athlete])
    if @athlet.invalid?
        render :action => :show
    else
        @athlet.meeting = @meeting
        @athlet.save!

        redirect_to :action => :anmeldung, :verein => @athlet.verein
    end
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
