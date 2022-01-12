################################################################################
# Model:  Category
#
# Purpose:
#
# Category attributes:
#   name              - string,  not NULL, unique
#   title             - string,  not NULL, unique
#   abstract          - text
#   position          - integer, not NULL
#   visibility        - boolean
#   status            - enum { active (0) | archived (1) }
#   url               - url:  string
#   comment           - text
#   seo_title         - string
#   seo_description   - text
#   seo_keywords      - text
#
#  12.01.2022 ZT
################################################################################
class Category < ApplicationRecord
  include ImagesHandleable
  include Heritable
  include Positionable

  enum status: %w(active archived)

  validates :name,      presence: true, uniqueness: true
  validates :title,     presence: true, uniqueness: true
  validates :url,       presence: true, uniqueness: true
  validates :seo_title, presence: true
end
