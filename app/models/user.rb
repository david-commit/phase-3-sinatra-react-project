class User < ActiveRecord::Base
 has_many :reviews
 has_many :appointments
 has_many :trainers, through: :appointments
end