class PagesController < ApplicationController
	def show
		render template: "pages/#{params[:page]}"
	end

	def contact
	end

	def login
	end
	
	def about
	end
end
