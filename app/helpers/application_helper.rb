module ApplicationHelper
	def error_tag(model, attribute)
      if model.errors.has_key? attribute
        content_tag(
          :div,
          model.errors[attribute].first,
          class: 'error_message'
      )
      end
  	end

  	def url_with_protocol(url)
    	/^http/.match(url) ? url : "http://#{url}"
  	end

end
