class CreatePartners < ActiveRecord::Migration[6.1]
  def change
    create_table :partners do |t|
      t.string  :name,   null: false, index: { unique: true }
      t.string  :code,   null: false, index: { unique: true }
      t.string  :title,  null: false, index: { unique: true }
      t.integer :kind,   null: false, default: 3, limit: 1  # default: 'ooo'
      t.integer :role,   null: false, default: 0, limit: 1  # default: 'supplier'
      t.string  :phone
      t.string  :fax
      t.string  :email,  null: false, index: { unique: true }
      t.string  :url
      t.string  :inn,    null: false, index: { unique: true }
      t.string  :kpp
      t.string  :ogrn
      t.string  :ogrnip
      t.string  :okpo
      t.string  :okato
      t.string  :certificate_number
      t.date    :certificate_date
      t.integer :status, null: false, default: 0, limit: 1  # default: 'active'
      t.text    :comment
      t.string  :cloud_code
      t.timestamps
    end
  end
end
