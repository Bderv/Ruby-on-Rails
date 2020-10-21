class DojosController < ApplicationController
  layout 'single', except: [:index]

  

  def index
    puts 'were in index'
    @dojos = Dojo.all
    @dojo = Dojo.new
    
  end

  def show
    dojotoshow
    render json: @dojo
  end

  def hello
    puts @dojo
    @dojo = Dojo.all
  end

  def dojotoshow
    @dojo = Dojo.find(params[:id])
  end
end
