class AddBioToTeams < ActiveRecord::Migration[6.0]
  def change
    add_column :teams, :bio, :text
  end
end
