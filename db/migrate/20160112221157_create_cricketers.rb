class CreateCricketers < ActiveRecord::Migration
  def change
    create_table :cricketers do |t|
      t.string :fullname
      t.string :country
      t.text :description
      t.string :posted_from

      t.timestamps
    end
  end
end
