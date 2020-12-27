class CreateSubgoals < ActiveRecord::Migration[6.0]
  def change
    create_table :subgoals do |t|
      t.string :subgoal, presence: true
      t.date :start_day, presence: true
      t.date :finish_day, presence: true
      t.integer :achivement
      t.text :check
      t.text :adjust
      t.boolean :type, null: false, default: false
      t.text :gap, presence: true
      t.text :solution, presence: true
      t.integer :priority, null: false, default: 0
      t.integer :impact, null: false, default: 0
      t.integer :worktime, null: false, default: 0
      t.integer :easy, null: false, default: 0
      t.integer :progress, null: false, default: 0
      t.boolean :hold, null: false, default: false
      t.text :note
      t.references :user, foreign_key: true
      t.references :goal, foreign_key: true
      

      t.timestamps
    end
  end
end