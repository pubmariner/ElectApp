class Elect < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :facts, presence: true
end
