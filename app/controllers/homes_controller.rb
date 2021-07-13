class HomesController < ApplicationController
  def index
    @news = News.all
  end

  def about
  end

  def enjoy
  end
  
  def faq
  end
end
