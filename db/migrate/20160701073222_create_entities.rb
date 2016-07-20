class CreateEntities < ActiveRecord::Migration
  def change
    create_table :entities do |t|
      t.string :entity_type, default: 'url'
      t.string :name, limit: 250, null: false
      t.string :aaa, limit: 250
      t.string :bbb, limit: 250

      t.timestamps null: false
    end
  end
end
