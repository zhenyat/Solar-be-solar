class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string  :name,     null: false, index: { unique: true }
      t.string  :title,    null: false, index: { unique: true }
      t.string  :inn,      null: false, index: { unique: true }
      t.string  :ogrnip,   null: false, index: { unique: true }
      t.string  :certificate_number
      t.date    :certificate_date
      t.string  :email,    null: false, index: { unique: true }
      t.string  :phone
      t.string  :legal_address
      t.string  :pickup_address
      t.string  :url
      t.text    :comment
      t.integer :status,   null: false, default: 0, limit: 1  # default: active
      t.string  :seo_title
      t.text    :seo_description
      t.text    :seo_keywords

      t.timestamps
    end
  end
end
