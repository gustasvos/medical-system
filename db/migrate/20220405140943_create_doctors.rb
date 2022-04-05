class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.integer :id
      t.string :name
      t.string :crm
      t.string :crm_uf

      t.timestamps
    end
  end
end
