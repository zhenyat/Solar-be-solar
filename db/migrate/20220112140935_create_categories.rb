class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string  :name,       null: false, index: { unique: true }
      t.string  :title,      null: false, index: { unique: true }
      t.text    :abstract,   null: false
      t.integer :position
      t.boolean :visibility
      t.integer :status,      null: false, default: 0, limit: 1  # default: active
      t.string  :url,         null: false, index: { unique: true }
      t.text    :comment
      t.string  :seo_title,   null: false
      t.text    :seo_description
      t.text    :seo_keywords

      t.timestamps
    end
  end
end
