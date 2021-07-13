class HomesController < ApplicationController
  def index
    @news = News.all.order(updated_at: "DESC")
  end

  def about
  end

  def enjoy
  end
  
  def faq
  end
end
