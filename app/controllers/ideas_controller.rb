class IdeasController < ApplicationController
  def index
    @ideas = Idea.all.includes(:category).pluck(:color, :title, :body)
  end
end
