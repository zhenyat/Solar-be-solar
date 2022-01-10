################################################################################
# Model:  Company
#
# Purpose:
#
# Company attributes:
#   name              - string,  not NULL, unique
#   title             - string,  not NULL, unique
#   inn               - string,  not NULL, unique
#   ogrnip            - string,  not NULL, unique
#   certificate_number - string
#   certificate_date   - date
#   email             - string,  not NULL, unique
#   phone             - string
#   legal_address     - string
#   pickup_address    - string
#   url               - string
#   comment           - text
#   status            - enum { active (0) | archived (1) }
#   seo_title         - string
#   seo_description   - text
#   seo_keywords      - text
#
#  09.01.2022 ZT
################################################################################
class Company < ApplicationRecord
  include ImagesHandleable
  include Emailable

  enum status: %w(active archived)

  validates :name,   presence: true, uniqueness: true
  validates :title,  presence: true, uniqueness: true
  validates :inn,    presence: true, uniqueness: true, format: {with: /\A[\d+]{12}\Z/, message: 'must be 12 digits'}
  validates :ogrnip, presence: true, uniqueness: true, format: {with: /\A[\d+]{15}\Z/, message: 'must be 15 digits'}
end
