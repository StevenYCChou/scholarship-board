class CreateScholarships < ActiveRecord::Migration
  def change
    create_table :scholarships do |t|
      t.string :name
      t.string :link
      t.int :year
      t.date :deadline
      t.string :addr
      t.string :attachment
      t.int :prize
      t.int :max
      t.string :applicant
      t.text :desc1
      t.text :desc2

      t.timestamps
    end
  end
end
