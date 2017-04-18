class Idea < ApplicationRecord
  has_many :reviews, dependent: :destroy

  after_initialize :init

  validates(:title, { presence: true, uniqueness: true })
  validates(:text,{ presence: true, length: { minimum: 10 } })

  def init
    self.members  ||= 0           #will set the default value only if it's nil
    self.likes    ||= 0 #let's you set a default association
  end


end
