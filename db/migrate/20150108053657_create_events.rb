class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :ip_address
      t.datetime :eventtime

      t.timestamps
    end
  end
end
