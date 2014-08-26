class TagsController < ApplicationController
  before_filter :require_login, only: [:destroy]

  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
  end
  
  def destroy
    t = Tag.find(params[:id])
    t.taggings.map {|i|i.destroy}
    t.destroy
    
    flash.notice = "Tag '#{t.name}' Removed!"
    redirect_to tags_path
  end
end
