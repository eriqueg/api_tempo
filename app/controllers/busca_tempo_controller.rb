class BuscaTempoController < ApplicationController
    require 'net/http'
    require 'json'
    require 'time'
    def buscar
        render json: ComunicacaoWeather.new.buscar(tempo_params[:cidade])
    end

    def buscar_hora
        render json: ComunicacaoHora.new.buscar(tempo_params[:cidade])
    end
    def buscar_dia
        render json: ComunicacaoProximos.new.buscar(tempo_params[:cidade])
    end

    private 
    def tempo_params
        params.permit(:cidade)
    end

end
