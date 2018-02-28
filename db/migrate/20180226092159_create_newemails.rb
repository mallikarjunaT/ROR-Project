class CreateNewemails < ActiveRecord::Migration[5.1]
  def change
    create_table :newemails do |t|
      t.string :name
      t.string :email
      t.string :login

      t.timestamps
    end
  end
end
