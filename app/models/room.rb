class Room < ApplicationRecord
  has_many :room_users, dependent: :destroy
  has_many :users, through: :room_users  
  has_many :messages, dependent: :destroy
  #roomが削除された時に小モデルのroom_usersとmessagesも削除する

  validates :name, presence: true
end
