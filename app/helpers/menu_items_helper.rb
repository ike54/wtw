module MenuItemsHelper

    def make_menu

     	sections = []
    	@menu.each do |item|
    		sections.push item.section
    	end
    	sections = sections.uniq

        html = "".html_safe
    	sections.each do |section|
    		html.safe_concat "<h2>" + section + "</h2>"
    		html.safe_concat "<dl>"
    		x = @menu.find(:all, :conditions => {:section  => section})
    		x.each do |item|
    			html.safe_concat "<dt>" + item.item

    			if item.price == nil
    				html.safe_concat "</dt>"
    			else
    				html.safe_concat " - " + item.price + "</dt>"
    			end
    			if item.description == nil
    				html.safe_concat ""
    			else
    				html.safe_concat "<dd>" + item.description + "</dd>"
    			end
    			html.safe_concat "<br />"		
    		end
    		html.safe_concat "</dl>" 
    	end

    	html
    end
end
