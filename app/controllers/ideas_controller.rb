class IdeasController < ApplicationController
before_action :ideas, only: [:index, :create, :update, :edit, :destroy]
before_action :idea, only: [ :edit, :update, :destroy]

  def index
    @idea = Idea.new
  end

  def create
    @idea = Idea.new(idea_params)
    respond_to do |format|
    if @idea.save
      format.js
    else
      format.html { render root_path }
    end
   end
  end

def destroy
  respond_to do |format|
  if @idea.destroy
    format.js
  end
end
end

private

def idea_params
  params.require(:idea).permit(:author, :title, :content)
end

def idea
  @idea = Idea.find(params[:id])
end

def ideas
  @ideas = Idea.order(:id).reverse_order
end

end
