class AddBookReference < ActiveRecord::Migration[6.0]
  def change
    remove_reference(:comments, :post, index: true)
    add_reference(:comments, :book, index: true)
  end
end
