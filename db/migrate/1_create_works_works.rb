class CreateWorksWorks < ActiveRecord::Migration

  def up
    create_table :refinery_works do |t|
      t.string :title
      t.string :work_id
      t.integer :cover_photo_id
      t.string :client_name
      t.string :work_type
      t.text :work_description
      t.integer :work_photo_1_id
      t.integer :work_photo_2_id
      t.integer :work_photo_3_id
      t.integer :work_photo_4_id
      t.integer :work_photo_5_id
      t.integer :work_photo_6_id
      t.integer :work_photo_7_id
      t.integer :work_photo_8_id
      t.integer :work_photo_9_id
      t.integer :work_photo_10_id
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-works"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/works/works"})
    end

    drop_table :refinery_works

  end

end
