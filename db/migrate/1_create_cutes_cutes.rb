class CreateCutesCutes < ActiveRecord::Migration

  def up
    create_table :refinery_cutes do |t|
      t.string :name
      t.string :project
      t.text :description
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-cutes"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/cutes/cutes"})
    end

    drop_table :refinery_cutes

  end

end
