class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email_address
      t.string :password_digest
      t.string :address
      t.string :phone_number

      t.timestamps
    end
  end
end
