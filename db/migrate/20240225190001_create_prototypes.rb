class CreatePrototypes < ActiveRecord::Migration[7.0]
  def change
    create_table :prototypes do |t|
      t.string :title,     nill: false
      t.text :catch_copy,  nill: false
      t.text :concept,     nill: false
      t.references :user,  null: false, foreign_key: true
      t.timestamps
    end
  end
end
