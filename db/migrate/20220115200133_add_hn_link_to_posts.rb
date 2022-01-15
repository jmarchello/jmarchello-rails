class AddHnLinkToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :hn_url, :string
  end
end
