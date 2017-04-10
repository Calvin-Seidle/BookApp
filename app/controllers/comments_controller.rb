class CommentsController < ApplicationController

	def create
		@booklist = Booklist.find(params[:booklist_id])
		
		@comment = @booklist.comments.create(params[:comment].permit(:name, :body))

		redirect_to booklist_path(@booklist)
	end		


end
