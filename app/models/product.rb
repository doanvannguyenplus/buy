class Product < ApplicationRecord
  belongs_to :color
  belongs_to :size
  belongs_to :categori
  belongs_to :gender
  belongs_to :type
  belongs_to :campaign
  belongs_to :collection
  belongs_to :designer
  belongs_to :mix
  belongs_to :sale
end
