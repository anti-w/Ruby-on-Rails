class Adress < ApplicationRecord
  belongs_to :adressable, polymorphic: true
end
