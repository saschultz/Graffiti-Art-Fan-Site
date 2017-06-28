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

  def edit
    @work = Work.find(params[:id])
  end

  def update
    @work = Work.find(params[:id])
    if @work.update(work_params)
      redirect_to works_path
    else
      render :edit
    end
  end

private
  def work_params
    params.require(:work).permit(:artist, :location, :link)
  end

end
