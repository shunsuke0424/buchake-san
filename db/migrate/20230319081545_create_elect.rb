class CreateElect < ActiveRecord::Migration[7.0]
  def change
    create_table :elects do |t|
      t.references :elector, foreign_key: { to_table: :users }, index: true
      t.references :elected, foreign_key: { to_table: :users }, index: true
      t.references :question, foreign_key: true, index: true
      t.index [:elector_id, :elected_id, :question_id], unique: true
      t.timestamps
    end
  end
end
