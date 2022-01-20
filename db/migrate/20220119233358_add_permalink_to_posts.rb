class AddPermalinkToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :permalink, :string, unique: true
    add_index :posts, :permalink, unique: true
  end
end
