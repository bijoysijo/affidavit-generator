class CreateAffidavits < ActiveRecord::Migration[6.0]
  def change
    create_table :affidavits do |t|
      t.string :name
      t.text :address
      t.string :vehicle_no
      t.string :accompanying_person
      t.string :place
      t.text :purpose

      t.timestamps
    end
  end
end
