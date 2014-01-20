class CreateProfiles < ActiveRecord::Migration

  def change
    create_table(:profiles) do |t|
      t.string :Full_name
      t.string :permanent_address
      t.string :business_address
      t.string :company_address
      t.integer :contact_number
      t.integer :user_id
    end
  end
end