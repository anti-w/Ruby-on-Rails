class CreateAdresses < ActiveRecord::Migration[7.0]
  def change
    create_table :adressess do |t|
      t.string :street
      t.references :adressable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
