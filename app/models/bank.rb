################################################################################
# Model:  Bank
#
# Purpose:
#
# Bank attributes:
#   name            - string,  not NULL, unique
#   title           - string,  not NULL
#   brief_title     - string,  not NULL
#   legal_address   - string,  not NULL
#   postal_address  - string,  not NULL
#   phone           - string,  not NULL
#   email           - string,  not NULL, unique
#   url             - string,  not NULL, unique
#   bic             - string
#   corr_acc        - string
#   corr_acc_with   - string
#   inn             - string,  not NULL, unique 
#   kpp             - string
#   ogrn            - string,  not null, unique
#   okpo            - string
#   okato           - string
#   comment         - text
#   status          - enum { active (0) | archived (1) }
#
#  11.01.2022 ZT
################################################################################
class Bank < ApplicationRecord
  include Emailable
  
  # has_many :partner_banks
  # has_many :partners, through: :partner_banks
  
  enum status: %w(active archived)

  validates :name,          presence: true, uniqueness: true
  validates :title,         presence: true, uniqueness: true
  validates :bic,           presence: true, uniqueness: {case_sensitive: false}, format: {with: /\A[\d+]{9}\Z/,  message: 'must be 9 digits'}
  validates :corr_acc,      presence: true, uniqueness: {case_sensitive: false}, format: {with: /\A[\d+]{20}\Z/, message: 'must be 20 digits'}
  validates :corr_acc_with, presence: true
  validates :inn,           presence: true, uniqueness: {case_sensitive: false}, format: {with: /\A[\d+]{10}\Z/, message: 'must be 10 digits'}
  validates :ogrn,          presence: true, uniqueness: {case_sensitive: false}, format: {with: /\A[\d+]{13}\Z/, message: 'must be 13 digits'}
  validates :kpp,                           uniqueness: true, format: {with: /\A[\d+]{9}\Z/, message: "must be 9 digits"}, if: -> {kpp.present?}
  validates :okpo,                          uniqueness: true, format: {with: /\A[\d+]{8}\Z/, message: "must be 8 digits"}, if: -> {okpo.present?}
end
