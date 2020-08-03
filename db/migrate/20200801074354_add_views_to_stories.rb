class AddViewsToStories < ActiveRecord::Migration[6.0]
  def change
    add_column :stories, :views, :int
  end
end
