class MyArticlesController < ApplicationController
	
	def my_index
		@articles = Article.all
		
	end

	def my_new
	end



	def my_create

	  # render plain: params[:article].inspect
	    # @article = Article.new(pooja_params)
	    @article = Article.new(title: params[:pooja][:title] , text: params[:pooja][:text])
		@article.save
		redirect_to bye_url(@article)  

	end

	def my_show
		@art = Article.find(params[:asheesh])

	end

	def my_edit
		@article = Article.find(params[:ankur])
		
	end

	def my_update
		@sonu = Article.find(params[:id])
		@sonu.update(title: params[:article][:title] , text: params[:article][:text])
		redirect_to bye_path(@sonu)
		
	end


	def my_destroy
	  @monu = Article.find(params[:asheesh])
	  @monu.destroy
	 
	  redirect_to articles_path
	end


end
