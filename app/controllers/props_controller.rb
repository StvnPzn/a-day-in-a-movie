class PropsController < ApplicationController
  def index
    if params[:query].present?
      @props = Prop.joins(:movie).where(sql_query, query: "%#{params[:query]}%")
    else
      @props = Prop.all
    end
  end

  def show
    @prop = Prop.find(params[:id])
    @booking = Booking.new
    
  end

  def new
    @prop = Prop.new
  end

  def create
    @prop = Prop.new(prop_params)
    @movie = Movie.find(params[:movie_id])
    @prop.movie = @movie
    if @prop.save
      redirect_to props_path(@prop)
    else
      render :new
    end
  end

  def edit
    @prop = Prop.find(params[:id])
  end

  def update
    @prop = Prop.find(params[:id])
    @prop = @prop.update(prop_params)
  end

  def destroy
    @prop = Prop.find(params[:id])
    @prop.destroy
    redirect_to prop_path(@prop)
  end

  private

  def prop_params
    params.require(:prop).permit(:name, :category, :availability, :description, :price, :photo)
  end

  def sql_query
    " \
    props.name @@ :query \
    OR props.description @@ :query \
    OR props.category @@ :query \
    OR movies.name @@ :query \
    "
  end
end
