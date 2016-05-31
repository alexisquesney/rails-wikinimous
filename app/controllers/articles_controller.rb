class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to action: :index
  end

  def new
    @article = Article.new
  end

  def edit

  end

  def show

  end

  def update
    @article.update(article_params)
    redirect_to action: :index
  end

  def destroy
    @article.destroy
    redirect_to action: :index
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :content)
  end
end