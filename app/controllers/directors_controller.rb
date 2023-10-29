class DirectorsController < ApplicationController
  def index
    @directors = Director.all
  end

  def new
    @director = Director.new
  end

  def create
    @director = Director.new(name: params[:director][:name],
                             nationality: params[:director][:nationality],
                             birth_date: params[:director][:birth_date],
                             favorite_genre: params[:director][:favorite_genre])

    if @director.save
      return redirect_to director_path(@director.id)
    end

    render :new
  end

  def edit
    @director = Director.find(params[:id])
  end

  def update
    @director = Director.find(params[:id])

    if @director.update(name: params[:director][:name],
                        nationality: params[:director][:nationality],
                        birth_date: params[:director][:birth_date],
                        favorite_genre: params[:director][:favorite_genre])
      return redirect_to director_path(@director.id)
    end

    render :edit
  end

  def show
    @director = Director.find(params[:id])
  end
end
