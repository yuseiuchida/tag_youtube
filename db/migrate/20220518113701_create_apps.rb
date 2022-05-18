class CreateApps < ActiveRecord::Migration[6.1]
  def change
    create_table :apps do |t|
      t.references :user, forein_key: true
      t.string :name, null: false
      t.string :link, null: false
      t.timestamps
    end
  end
end
