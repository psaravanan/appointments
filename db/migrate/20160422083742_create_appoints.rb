class CreateAppoints < ActiveRecord::Migration
  def change
    create_table :appoints do |t|
      t.string :name
      t.string :email
      t.datetime :fromtime
      t.datetime :totime

      t.timestamps null: false
    end
  end
end
