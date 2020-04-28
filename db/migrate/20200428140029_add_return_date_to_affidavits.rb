class AddReturnDateToAffidavits < ActiveRecord::Migration[6.0]
  def change
    add_column :affidavits, :retun_date, :date
  end
end
