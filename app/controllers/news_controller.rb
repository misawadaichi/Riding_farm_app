class NewsController < ApplicationController
  def new
    @news = News.new
  end
  def create
    @news = News.new(news_params)
    if @news.save
      flash[:success] = "Object successfully created"
      redirect_to @news
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end
  def show
    @news = News.find(params[:id])
  end
  
  
  private
  def news_params
    params.require(:news).permit(:title, :content)
  end
end
