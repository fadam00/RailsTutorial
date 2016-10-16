module ApplicationHelper

	def full_title(page_title= " ")# We declare the parameter of the function inside of page_title.
		base_title = "Ruby on Rails Tutorial Sample App"
		if page_title.empty?
			base_title
		else
			page_title + " | " + base_title
		end
	end
end
