class Lead < ApplicationRecord
    validates :email, :number, :leadtype, :region, :quantity, presence: true

end
