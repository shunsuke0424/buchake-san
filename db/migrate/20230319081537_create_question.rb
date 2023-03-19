class CreateQuestion < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.string :content, null: false
      t.belongs_to :group, index: true

      t.timestamps
    end
  end
end
