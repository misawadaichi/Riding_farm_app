class HomesController < ApplicationController
  def index
    @news = New.all.order(updated_at: "DESC")
  end

  def about
  end

  def enjoy
  end
  
  def faq
  end
end
