class CreateAvailabilities < ActiveRecord::Migration[7.1]
  def change
    create_table :availabilities do |t|
      t.references :user, null: false, foreign_key: true
      t.date :date
      t.boolean :available

      t.timestamps
    end
  end
end
