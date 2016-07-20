class CreateCollectionItems < ActiveRecord::Migration
  def change
    create_table :collection_items do |t|
      t.references :collection, index: true, null: false
      t.references :entity, index: true, null: false

      t.timestamps null: false
    end
  end
end
