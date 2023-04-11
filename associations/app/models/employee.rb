class Employee < ApplicationRecord
    has_many :adressess, as: :adressable
end
