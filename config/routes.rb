Rails.application.routes.draw do
	get 'articles/new', :to => 'my_articles#my_new'
	post 'articles12233444', :to => 'my_articles#my_create', as: :hello 
	get 'article/:asheesh', :to => 'my_articles#my_show', as: :bye 
	get 'articles', :to => 'my_articles#my_index', as: :articles
	get 'articles/:ankur/edit', :to => 'my_articles#my_edit', as: :edit
	put 'articles/:id', :to => 'my_articles#my_update', as: :update
	delete 'articles/:asheesh', :to => 'my_articles#my_destroy', as: :delete

	post '/articles/:article_id/comments', :to => 'my_comments#my_create', as: :hii 
	get 'articles/:article_id/comments/:id/edit', :to => 'my_comments#my_edit', as: :comment_edit
	put 'articles/:article_id/comments/:id', :to => 'my_comments#my_update', as: :comment_update

	delete 'articles/:article_id/comments/:id', :to => 'my_comments#my_destroy', as: :ruin

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
