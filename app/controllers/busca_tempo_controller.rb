class BuscaTempoController < ApplicationController
    require 'net/http'
    require 'json'
    def buscar
        render json: ComunicacaoWeather.new.buscar(tempo_params[:cidade])
    end


    private 
    def tempo_params
        params.permit(:cidade)
    end

end
