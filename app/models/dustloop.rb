class Dustloop < ApplicationRecord
    belongs_to :user
    paginates_per 9
end
