class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.references :client, foreign_key: true, null: false
      t.string :title
      t.integer :status
      t.integer :monthlyOrAnnual
      t.integer :salary
      t.string :benefitProgram
      t.string :holiday
      t.integer :language
      t.integer :framework
      t.string :characteristics
      t.string :skillset
      t.string :selectionProcess
      t.string :training
      t.date :startingDate
      t.integer :workplace
      t.string :access
      t.text :description

      t.timestamps
    end
  end
end
