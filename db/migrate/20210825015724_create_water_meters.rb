class CreateWaterMeters < ActiveRecord::Migration[6.1]
  def change
    create_table :water_meters do |t|
      t.string :dong, null: false
      t.string :roomtype, null: false
      t.string :watermeter_sn, null: false
      t.integer :watermeter_number, null: false
      t.float :flowrate, :default => 0.0
      t.float :totalvolume, :default => 0.0
      t.string :pipesize, :default => '15A'
      t.datetime :getting_time
      t.string :location

      t.datetime :created_at, null: false, default: -> { 'CURRENT_TIMESTAMP' }
      t.datetime :updated_at, null: false, default: -> { 'CURRENT_TIMESTAMP' }
    end
  end
end
