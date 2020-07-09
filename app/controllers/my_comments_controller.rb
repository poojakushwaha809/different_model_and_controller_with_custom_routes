class MyCommentsController < ApplicationController

	def my_create
		@article = Article.find(params[:article_id])
		@comment = @article.comments.create(comment_params)
		redirect_to bye_path(@article)
	end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
