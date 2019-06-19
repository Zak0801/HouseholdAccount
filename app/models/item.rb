class Item < ApplicationRecord
    validates :price, {presence: true}
    validates :category, {presence: true}
    validates :using_month, {presence: true}
    validates :using_day, {presence: true}

end
