class CreateQueries < ActiveRecord::Migration
  def change
    create_table :queries do |t|
      t.text :question
      t.datetime :time
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
