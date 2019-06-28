class ComunicacaoProximos

    def buscar(cidade)
            
        @cidade = cidade
        

        url = "http://api.openweathermap.org/data/2.5/weather?APPID=2c95be93f58b3a6e7e8c70e496354c03&q=#{@cidade},br&lang=pt_br"
       

        retorno = JSON.parse(Net::HTTP.get(URI(url)))
               
            temp =  {"Hora" Time.at(retorno["dt"]),
                            Clima: retorno["clouds"]["all"], 
                            Descrição: retorno["weather"][0]["description"],
                            Temperatura: retorno["main"]["temp"],
                            Pressão: retorno["main"]["pressure"],
                            Humidade: retorno["main"]["humidity"],
                            Temperatura_Mínima: retorno["main"]["temp_min"],
                            Temperatura Máxima: retorno["main"]["temp_max"],
                            Vento: retorno["wind"]["speed"]}                                                    
                  


end

end