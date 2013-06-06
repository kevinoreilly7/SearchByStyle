class CreateStyles < ActiveRecord::Migration
  def change
    create_table :styles do |t|
      t.boolean :exterior
      t.boolean :interior
      t.boolean :people
      t.boolean :amenity

      t.timestamps
    end
  end
end
