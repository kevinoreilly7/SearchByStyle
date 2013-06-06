class CreateRequirementStyles < ActiveRecord::Migration
  def change
    create_table :requirement_styles do |t|
      t.integer :style_id
      t.integer :requirement_id

      t.timestamps
    end
  end
end
