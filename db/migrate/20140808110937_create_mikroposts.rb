class CreateMikroposts < ActiveRecord::Migration
  def change
    create_table :mikroposts do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
