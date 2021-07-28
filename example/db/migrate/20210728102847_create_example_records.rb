class CreateExampleRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :example_records do |t|
      t.string :foo

      t.timestamps
    end
  end
end
