#Because the file is called application_helper.html.erb
#the module and all of its' function are accesible by layouts/application.html.erb
module ApplicationHelper

	def full_title(page_title)
		base_title="TSX Stock Fetcher"
		if page_title.empty?
			base_title
		else
			"#{base_title}| #{page_title}"
		end
	end
end
