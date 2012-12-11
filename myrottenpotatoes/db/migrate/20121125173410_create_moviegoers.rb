class CreateMoviegoers < ActiveRecord::Migration
  def up
    create_table "moviegoers", :force => true do |t|
      t.string "provider"
      t.string "uid"
      t.string "name"
      t.datetime "created_at"
      t.datetime "updated_at"
    end
  end
  def down
    drop_table 'movies' # deletes the whole table and all its data!
    drop_table 'moviegoers' # deletes the whole table and all its data!
  end
end
