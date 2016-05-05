class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.string :email
      t.string :interval
      t.string :available

      t.timestamps null: false
    end
  end
end
