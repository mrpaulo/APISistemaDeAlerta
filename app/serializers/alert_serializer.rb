class AlertSerializer < ActiveModel::Serializer

	#my_date = Date.strptime("12/22/2011", "%m/%d/%Y")
	#teste = "Teste"

	attributes :id, :type_alert, :title, :last_description, :penultimate_description, :antepenultimate_description, :date_hour, :url_img, :photo
	
	def last_description
		if object.description.match('||')
			object.description.split('||').first
		else
			object.description
		end
	end

	def penultimate_description		
		if object.description.match('||')
			object.description.split('||')[1].to_s.strip
		else
			object.description
		end
	end

	def antepenultimate_description		
		if object.description.match('||')
			object.description.split('||')[2].to_s.strip
		else
			object.description
		end
	end

	def url_img
		if object.type_alert == 1 
			url_img = "img/thumbnailVermelho.jpg"
		
		elsif object.type_alert == 2 
			url_img = "img/thumbnailAmarelo.jpg"
		
		else
			url_img = "img/thumbnailVerde.jpg"
		end
	end

	def date_hour			
		object.updated_at.strftime('%d/%m/%Y - %H:%M h')
	end

end

