class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :comment_body
      t.integer :rating

      t.timestamps
    end
  end
end
