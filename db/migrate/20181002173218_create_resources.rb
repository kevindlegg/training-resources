class CreateResources < ActiveRecord::Migration[5.2]
  def change
    create_table :resources do |t|
      t.string :title
      t.string :type
      t.string :vendor
      t.text :url
      t.text :license_link
      t.string :user_id
      t.string :password_digest
      t.text :discussion_link

      t.timestamps
    end
  end
end
