class ChaptersController < ApplicationController
  def index;  end

  def show
    @chapter = Chapter.find_by id: params[:id]
  end
end
