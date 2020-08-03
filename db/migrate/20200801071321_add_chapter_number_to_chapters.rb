class AddChapterNumberToChapters < ActiveRecord::Migration[6.0]
  def change
    add_column :chapters, :chapter_number, :int
  end
end
