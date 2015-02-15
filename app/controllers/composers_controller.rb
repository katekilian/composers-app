class ComposersController < ApplicationController

  def index
    @composers = Composer.all
  end

  def new
    @composer = Composer.new
  end


end
