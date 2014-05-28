class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :name
      t.integer :attend
      t.references :invitee, index: true

      t.timestamps
    end
  end
end
