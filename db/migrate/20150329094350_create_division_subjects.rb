class CreateDivisionSubjects < ActiveRecord::Migration
  def change
    create_table :division_subjects do |t|
      t.references :division, index: true
      t.references :subject, index: true

      t.timestamps null: false
    end
    add_foreign_key :division_subjects, :divisions
    add_foreign_key :division_subjects, :subjects
  end
end
