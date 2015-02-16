class ComposersController < ApplicationController

  def index
    @composers = Composer.all
  end

  def show
    @composer= Composer.find(params[:id])
  end

  def new
    @composer = Composer.new
  end

  def create
    @composer = Composer.new(composer_params)
    if @composer.save
      redirect_to composers_path
    else
      render :new
    end
  end

  def edit
    @composer = Composer.find(params[:id])
  end




  private

  def composer_params
    params.require(:composer).permit(:name, :birth_year, :death_year, :era)
  end

end
