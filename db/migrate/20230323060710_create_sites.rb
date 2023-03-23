class CreateSites < ActiveRecord::Migration[6.0]
  def change
    create_table :sites do |t|
      t.integer    :progress,          null: false
      t.date       :construcion_date,  null: false
      t.references :user,              null: false, foreign_key: true
      t.string     :sitename,          null: false
      t.string     :home_address,      null: false
      t.string     :site_address
      t.string     :site_phone,        null: false
      t.text       :remark
      t.timestamps
    end
  end
end
