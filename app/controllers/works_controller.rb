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
    @work.rating = 0
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

  def destroy
    @work = Work.find(params[:id])
    @work.destroy
    redirect_to works_path
  end

  def rate
    @work = Work.find(params[:work_id])

    if params[:class] = '1'
      current_rating = @work.rate_post('1')
      @work.update(rating: current_rating)
      redirect_to works_path
    elsif params[:class] = '2'
      current_rating = @work.rate_post('2')
      @work.update(rating: current_rating)
      redirect_to works_path
    elsif params[:class] = '3'
      current_rating = @work.rate_post('3')
      @work.update(rating: current_rating)
      redirect_to works_path
    elsif params[:class] = '4'
      current_rating = @work.rate_post('4')
      @work.update(rating: current_rating)
      redirect_to works_path
    elsif params[:class] = '5'
      current_rating = @work.rate_post('5')
      @work.update(rating: current_rating)
      redirect_to works_path
    end

    # redirect_to works_path
  end

private
  def work_params
    params.require(:work).permit(:artist, :location, :link)
  end

end
