class CreateHints < ActiveRecord::Migration
  def self.up
    create_table :hints do |t|
      t.string :title
      t.text :hint

      t.timestamps
    end
  end

  def self.down
    drop_table :hints
  end
end
