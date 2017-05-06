class AddConfirmPasswordToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :confirm_password, :string
  end
end
