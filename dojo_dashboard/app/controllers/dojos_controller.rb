class DojosController < ApplicationController
    
    def index
        @dojos = Dojo.all
        @lastdojo = Dojo.last
    end

    def new
    end

    def create
        puts "*****************",params
        dojo = Dojo.create(dojoParams)
        if dojo.errors.full_messages.empty?
            redirect_to '/dojos'
        else 
            flash[:errors] = dojo.errors.full_messages
            redirect_to '/dojos/new'
        end
    end

    def show
        @dojo = Dojo.find(params[:id])
    end
    
    def edit
        @dojo = Dojo.find(params[:id])
    end

    def update
        @dojo = Dojo.update(params[:id], dojoParams)
        redirect_to "/dojos/#{params[:id]}"
    end

    def delete
        if @dojo = Dojo.find(params[:id])
            @dojo.destroy
        redirect_to "/dojos"
        end
    end

    def increment_counter
        if session[:counter].nil?
        session[:counter] = 0
        end
        session[:counter] += 1
    end

    private
    def dojoParams
    params.require(:dojo).permit(:branch, :street, :city, :state)
    end

end
