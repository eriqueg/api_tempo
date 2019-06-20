class ComunicacaoWeather


    def buscar(cidade)
            
            @cidade = cidade
            #@key = 2c95be93f58b3a6e7e8c70e496354c03

            url = "http://api.openweathermap.org/data/2.5/weather?APPID=2c95be93f58b3a6e7e8c70e496354c03&q=#{@cidade}&lang=pt_br"
            #url = "https://viacep.com.br/ws/#{@cep}/json/"
            retorno = JSON.parse(Net::HTTP.get(URI(url)))
           
            temp = {"Data": Time.at(retorno["dt"]),
                "Clima": retorno["weather"][0]["main"], 
                "Descrição": retorno["weather"][0]["description"],
                "Temperatura": retorno["main"]["temp"],
                "Pressão": retorno["main"]["pressure"],
                "Humidade": retorno["main"]["humidity"],
                "Temperatura Maxima": retorno["main"]["temp_max"],
                "Temperatura Minima": retorno["main"]["temp_min"],
                "Vento": retorno["wind"]["speed"],
                "Alvorada": Time.at(retorno["sys"]["sunrise"]),
                "Crepúsculo": Time.at(retorno["sys"]["sunset"])}
end

    end
end