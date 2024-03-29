class ReviewsController < ApplicationController
	def index
		@movies = Movie.find params[:movie_id]
		@review = @movies.reviews
	end

	def new
		@movie = Movie.find params[:movie_id]
		@review = @movie.reviews.new
	end

	def create
		@movie = Movie.find params[:movie_id]
		@review = @movie.reviews.new review_params

		if @review.save
			redirect_to action: 'index', controller: 'movies'
		else
			render 'new'
		end
	end

	private

	def review_params
		params.require(:review).permit(:reviewer, :content)
	end
end
