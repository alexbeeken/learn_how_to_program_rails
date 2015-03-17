class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.column :title, :string
      t.timestamps
    end

    create_table :subjects do |t|
      t.column :title, :string
      t.timestamps
    end

    create_table :lessons do |t|
      t.column :title, :string
      t.timestamps
    end
  end
end
