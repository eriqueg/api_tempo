class ComunicacaoHora
    def buscar(cidade)
            
        @cidade = cidade
        #@key = 2c95be93f58b3a6e7e8c70e496354c03

        url = "http://api.openweathermap.org/data/2.5/forecast?APPID=2c95be93f58b3a6e7e8c70e496354c03&q=#{@cidade}"
        #url = "https://viacep.com.br/ws/#{@cep}/json/"
        retorno = JSON.parse(Net::HTTP.get(URI(url)))
        #retorno = [:main][:temp]

end
    
end