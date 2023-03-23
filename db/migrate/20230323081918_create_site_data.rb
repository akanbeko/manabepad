class CreateSiteData < ActiveRecord::Migration[6.0]
  def change
    create_table :site_data do |t|
      t.references :site, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
