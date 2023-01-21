class User < ApplicationRecord
  has_many :data #, class_name: "data #, foreign_key: "reference_id"
end
