class Dustloop < ApplicationRecord
    belongs_to :user
    has_many :comments, dependent: :destroy
    paginates_per 1000
end
