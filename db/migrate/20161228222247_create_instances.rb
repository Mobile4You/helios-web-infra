class CreateInstances < ActiveRecord::Migration[5.0]
  def change
    create_table :instances do |t|
      t.string     :hostname,       null: false, index: { unique: true }
      t.belongs_to :profile, null: false, foreign_key: true
      t.string     :region

      t.timestamps
    end
  end
end
