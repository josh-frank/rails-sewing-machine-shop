class CreateMachines < ActiveRecord::Migration[6.1]
  def change
    create_table :machines do |t|
      t.string :brand
      t.string :model
      t.string :bobbin
      t.string :needle

      t.timestamps
    end
  end
end
