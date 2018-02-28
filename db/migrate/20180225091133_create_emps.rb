class CreateEmps < ActiveRecord::Migration[5.1]
  def change
    create_table :emps do |t|

      t.timestamps
    end
  end
end
