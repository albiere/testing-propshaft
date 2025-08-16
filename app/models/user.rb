class User < ApplicationRecord
  has_one_attached :avatar do |attachable|
    attachable.variant :medium, resize_to_fill: [ 192, 192, { crop: :centre } ], preprocessed: true
    attachable.variant :thumb, resize_to_fill: [ 128, 128, { crop: :centre } ], preprocessed: true
  end
end
