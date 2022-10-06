class RemoveColumn < ActiveRecord::Migration[6.0]
 def change
     create_table :possts do |t|
      t.string :title

      t.timestamps
    end
  end
end