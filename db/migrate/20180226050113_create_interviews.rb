class CreateInterviews < ActiveRecord::Migration[5.1]
  def change
    create_table :interviews do |t|
      t.date :date
      t.string :status
      t.integer :employee_id
      t.integer :student_id
      
      t.timestamps
    end
  end
end
