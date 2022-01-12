class CreatePartnerBanks < ActiveRecord::Migration[6.1]
  def change
    create_table :partner_banks do |t|
      t.references :partner, null: false, foreign_key: true
      t.references :bank,    null: false, foreign_key: true
      t.string     :account, null: false, index: { unique: true }
      t.text       :comment
      t.integer    :status,  null: false, default: 0, limit: 1  # default: 'active'

      t.timestamps
    end
  end
end
