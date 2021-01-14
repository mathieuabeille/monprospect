class Lead < ApplicationRecord
    validates :email, :number, :region, :quantity, presence: true

end
