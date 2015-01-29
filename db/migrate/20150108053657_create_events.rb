class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name, default: ""
      t.string :ip_address, default: ""
      t.datetime :eventtime, default: ""

      t.timestamps
    end
  end
end
