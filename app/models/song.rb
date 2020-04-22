class Song < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :band
  belongs_to_active_hash :style
end
