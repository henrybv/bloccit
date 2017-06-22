class QuestionsController < ApplicationController  
	def index
		@questions = Question.all
	end

	def show
		@question = Question.find(params[:id])
	end

	def new
		@question = Question.new
	end

	def create
		@question = Question.new(params.require(:question).permit(:title, :body, :resolved))
  	# @question.title = params[:question][:title]
  	# @question.copy = params[:question][:copy]
  	# @question.price = params[:question][:price]

  	if @question.save
  		flash[:notice] = "question was saved."
  		redirect_to @question
  	else 
  		flash[:error] = "There was an error saving the question. Please try again."
  		render :new
  	end
  end

  def edit
  	@question = Question.find(params[:id])
  end

  def update
  	@question = Question.find(params[:id])

  	if @question.update_attributes(params.require(:question).permit(:title, :body, :resolved))
  		flash[:notice] = "Question was updated."
  		redirect_to @question
  	else
  		flash[:error] = "There was an error saving the question. Please try again."
  		render :edit
  	end
  end

  def destroy
  	@question = Question.find(params[:id])

	 if @question.destroy
	 	flash[:notice] = "\"#{@question.title}\" was deleted successfully."
	 	redirect_to questions_path
	 else
	 	flash[:error] = "There was an error deleting the question."
	 	render :show
	 end
  end

end
