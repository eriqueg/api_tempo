class ComunicacaoHora
    def buscar(cidade)
            
        @cidade = cidade
        

        url = "http://api.openweathermap.org/data/2.5/forecast/hourly?APPID=2c95be93f58b3a6e7e8c70e496354c03&q=#{@cidade}&lang=pt_br"
        
        retorno = JSON.parse(Net::HTTP.get(URI(url)))
        result = []               
        retorno["list"].each do |horario|           
            result << {Hora: Time.at(horario["dt"]),
                            Clima: horario["clouds"]["all"], 
                            Descrição: horario["weather"][0]["description"],
                            Temperatura: horario["main"]["temp"],
                            Pressão: horario["main"]["pressure"],
                            Humidade: horario["main"]["humidity"],
                            Temperatura_Mínima: horario["main"]["temp_min"],
                            Temperatura_Máxima: horario["main"]["temp_max"],
                            Vento: horario["wind"]["speed"]
                          }                                                    
                    end      
          result

    end
    
end