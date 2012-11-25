class CreateMoviegoers < ActiveRecord::Migration
  def up
    create_table 'movies' do |t|
      t.string 'title'
      t.string 'rating'
      t.text 'description'
      t.datetime 'release_date'
      # Add fields that let Rails automatically keep track
      # of when movies are added or modified:
      t.timestamps
    end
    create_table "moviegoers", :force => true do |t|
      t.string "provider"
      t.string "uid"
      t.string "name"
      t.datetime "created_at"
      t.datetime "updated_at"
  end

  def down
    drop_table 'movies' # deletes the whole table and all its data!
    drop_table 'moviegoers' # deletes the whole table and all its data!
  end
end
