class MyCommentsController < ApplicationController

	def my_create
		byebug
		@article = Article.find(params[:article_id])
		@comment = @article.comments.create(commenter: params[:comment][:commenter], body: params[:comment][:commenter])
		redirect_to bye_path(@article)
	end

	def my_destroy
		@pooja = Article.find(params[:article_id])
		@comment = @pooja.comments.find(params[:id])
		@comment.destroy
		redirect_to bye_path(@pooja)
	end
 

  # private
  #   def comment_params
  #     params.require(:comment).permit(:commenter, :body)
  #   end
end
