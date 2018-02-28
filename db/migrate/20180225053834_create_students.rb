class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.string :phonenumber
      t.string :qualification
      t.string :skills
    

      t.timestamps
    end
  end
end
