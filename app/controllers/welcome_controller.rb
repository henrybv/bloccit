class WelcomeController < ApplicationController
	def index
		@posts = Post.all
		@posts.each_with_index do |post, index|
			if index % 5 == 0
				post.title = "SPAM"
			end
		end
	end

	def show
		@post = Post.find(params[:id])
	end

	def about
	end

	def contact
	end

	def faq
	end
	
end
