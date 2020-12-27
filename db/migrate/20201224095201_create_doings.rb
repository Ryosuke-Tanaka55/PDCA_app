class CreateDoings < ActiveRecord::Migration[6.0]
  def change
    create_table :doings do |t|
      t.string :doing, presence: true
      t.datetime :start_day, presence: true
      t.datetime :finish_day, presence: true
      t.integer :achivement
      t.text :check
      t.text :adjust
      t.boolean :type, null: false, default: false
      t.integer :priority, presence: true
      t.integer :impact, presence: true
      t.integer :worktime, presence: true
      t.integer :easy, presence: true
      t.integer :progress, null: false, default: 0
      t.boolean :hold, null: false, default: false
      t.text :note
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end