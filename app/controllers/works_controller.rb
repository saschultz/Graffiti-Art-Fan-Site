class WorksController < ApplicationController
  def index
    @works = Work.all
  end

  def show
    @work = Work.find(params[:id])
  end

  def new
    @work = Work.new
  end

  def create
    @work = Work.new(work_params)
    # @work.score = 0
     if @work.save
       redirect_to works_path
     else
       render :new
     end
  end

private
  def work_params
    params.require(:work).permit(:artist, :location, :link)
  end

end
