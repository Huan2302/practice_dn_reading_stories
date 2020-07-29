class StoriesController < ApplicationController
  def index
    # @stories = Story.relative_intro
    # unless params[:category].blank?
    #   categories = Category.find_by id: params[:category]
    #   if categories
    #     @stories = categories.stories
    #   else
    #     flash[:danger] = "no_category"
    #     redirect_to stories_path
    #   end
    # end
    # @orders = Story.paginate(:page => params[:page], :per_page => 48).order('created_at desc')
  end

  def show
    @story = Story.find_by(id: params[:id])
    @chapters = Chapter.where(:story_id => @story.id).order("created_at DESC")
  end
end
