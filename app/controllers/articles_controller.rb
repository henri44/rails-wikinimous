class ArticlesController < ApplicationController
  before_action :find_article_id, only: [:show, :edit, :update, :destroy]
  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save
  end

  def edit
  end

  def update

  end

  def destroy
    @article.destroy
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end

  def find_article_id
    @article = Article.find(params[:id])
  end


end
