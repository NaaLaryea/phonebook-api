class Contact < ApplicationRecord
    validates :name, presence: true
    validates :phone_number, presence: true
end
