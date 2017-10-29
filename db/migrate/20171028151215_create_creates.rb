class CreateCreates < ActiveRecord::Migration[5.1]
  def change
    create_table :creates do |t|

      t.timestamps
    end
  end
end
