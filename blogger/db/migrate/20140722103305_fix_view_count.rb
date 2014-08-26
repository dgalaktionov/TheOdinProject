class FixViewCount < ActiveRecord::Migration
  def change
    Article.connection.execute('UPDATE articles SET view_count=0')
  end
end
