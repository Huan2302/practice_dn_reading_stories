class AddIntroductionToStories < ActiveRecord::Migration[6.0]
  def change
    add_column :stories, :introduction, :string
  end
end
