module MenuItemsHelper
	def listItemsInSection(menu, section)
		#html = content_tag(:h2, section)

		   @menu.each do |item|
		    	list = content_tag(:dt, 'stuff')
		    	#list += content_tag(:dd, item.description)
		    	#list += content_tag(:dd, item.price)
		    end
		    #list += content_tag(:dl, list)
	    list	   



		#html 
    end
end
