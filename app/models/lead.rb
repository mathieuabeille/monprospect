class Lead < ApplicationRecord
    validates :email, :number, :leadtype, :quantity, presence: true

end
