class AddUnitIdForSubject < ActiveRecord::Migration
  def change
    add_column :subjects, :unit_id, :integer
    add_column :lessons, :subject_id, :integer
  end
end
