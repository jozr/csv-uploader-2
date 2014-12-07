class ChangeReleaseYearToInteger < ActiveRecord::Migration
  def change
  	change_column :albums, :release_year, 'integer USING CAST(release_year AS integer)'
  end
end
