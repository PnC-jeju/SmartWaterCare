class CreatePressureSensors < ActiveRecord::Migration[6.1]
  def change
    create_table :pressure_sensors do |t|
      t.string :dong, null: false
      t.string :roomtype, null: false
      t.string :pressuresensor_sn, null: false
      t.integer :pressuresensor_number, null: false
      t.float :pressure, null: false
      t.float :temperature, null: false
      t.datetime :getting_time
      t.string :location
      
      t.datetime :created_at, null: false, default: -> { 'CURRENT_TIMESTAMP' }
      t.datetime :updated_at, null: false, default: -> { 'CURRENT_TIMESTAMP' }
      
    end
  end
end
