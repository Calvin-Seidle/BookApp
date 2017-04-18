class CommentsController < ApplicationController

	def create
		@booklist = Booklist.find(params[:booklist_id])
		@comment = @booklist.comments.create(params[:comment].permit(:name, :body))
		redirect_to booklist_path(@booklist)
	end

	def destroy
		@booklist = Booklist.find(params[:booklist_id])
		@comment = @booklist.comments.find(params[:id])
		@comment.destroy

		redirect_to booklist_path(@booklist)
	end		

	def update

	end	

end
