class CreateWanteds < ActiveRecord::Migration
  def change
    create_table :wanteds do |t|
      t.string :name
      t.text :msg
      t.date :date

      t.timestamps
    end
  end
end
