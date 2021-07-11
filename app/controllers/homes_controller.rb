class HomesController < ApplicationController
  def index
    @news = News.all.order(updated_at: "DESC")
  end
end
