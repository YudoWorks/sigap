class Volunteer < ApplicationRecord
    validates :userId, {presence: true}
    validates :naturalDisasterId, {presence: true}
    validates :jobId, {presence: true}
end
