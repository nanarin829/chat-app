class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user
  has_one_attached :image

  validates :content, presence: true, unless: :was_attached?
  #メソッドの返り値がfalseならばバリデーションによる検証を行う

  def was_attached?
    self.image.attached?
    #self.image.attached?という記述によって、画像があればtrue、なければfalseを返す仕組み
  end

end
