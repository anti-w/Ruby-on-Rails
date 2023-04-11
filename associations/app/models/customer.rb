class Customer < ApplicationRecord
    has_many :adressess, as: :adressable
end
