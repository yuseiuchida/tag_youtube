class CreateRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :records do |t|
      t.references :user, forein_key: true
      t.references :app, forein_key: true
      t.timestamps
    end
  end
end
