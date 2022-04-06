class NasaController < ApplicationController

    def index
        @value = params[:search_term]
        if @value.nil?
            @nasa = Nasa.all   
        else
            @nasa = Nasa.search(@value)
        end
    end

    def about  
        @value = params[:search_term]
        @nasa = Nasa.search(@value)
    end
end