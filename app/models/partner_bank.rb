################################################################################
# Model:  PartnerBank
#
# Purpose:
#
# PartnerBank attributes:
#   partner_id  - FK
#   bank_id     - FK
#   account     - string, not NULL, unique
#   comment     - text
#   status      - enum { active (0) | archived (1) }
#
#  12.01.2022 ZT
################################################################################
class PartnerBank < ApplicationRecord
  belongs_to :partner, required: true
  belongs_to :bank,    required: true

  accepts_nested_attributes_for :bank

  enum status: %w(active archived)

  validates :account, presence: true, uniqueness: {case_sensitive: false}, format: {with: /\A[\d+]{20}\Z/, message: "must be 20 digits"}
  validates :partner, presence: true
  validates :bank,    presence: true
end
