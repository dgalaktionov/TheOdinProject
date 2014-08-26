class ArticlesController < ApplicationController
  include ArticlesHelper
  before_filter :require_login, except: [:index, :show]

  def index
    month = params["month"]
    
    if month
      @articles = Article.where("strftime('%m', created_at) + 0 = CAST(? AS INTEGER)", month)
    else
      @articles = Article.all
    end
  end
  
  def show
    @article = Article.find(params[:id])
    @comment = Comment.new
    @comment.article_id = @article.id
    @article.increment_counter
  end

  def new
    @article = Article.new
  end
  
  def create
    a = Article.new(article_params)
    a.author = current_user
    a.view_count = 0
    a.save
    flash.notice = "Article '#{a.title}' Created!"
    redirect_to article_path(a)
  end

  def destroy
    a = Article.find(params[:id])
    
    if a.author_id == current_user.id
      a.taggings.map {|i|i.destroy}
      a.destroy
      flash.notice = "Article '#{a.title}' Removed!"
    else
      flash.notice = "Permission denied for article '#{a.title}'!"
    end
    redirect_to articles_path
  end
  
  def edit
    @article = Article.find(params[:id])
    if @article.author_id != current_user.id
      flash.notice = "Permission denied for article '#{@article.title}'!"
      redirect_to articles_path
    end
  end

  def update
    a = Article.find(params[:id])
    if a.author_id == current_user.id
      a.update(article_params)
      flash.notice = "Article '#{a.title}' Updated!"
    else
      flash.notice = "Permission denied for article '#{a.title}'!"
    end
    redirect_to article_path(a)
  end

end
