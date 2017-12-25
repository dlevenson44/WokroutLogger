class CreateMotivations < ActiveRecord::Migration[5.1]
  def change
    create_table :motivations do |t|
    	t.string :quote
    	t.string :author
      t.timestamps
    end
  end
end
