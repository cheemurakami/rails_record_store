class RemoveGenre < ActiveRecord::Migration[5.2]
  def change
    remove_column(:albums, :genre, :string)
  end
end
