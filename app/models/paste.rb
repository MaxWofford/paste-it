class Paste < ActiveRecord::Base
  before_validation :generate_token

  validates :token, presence: true

  def generate_token
    self.token = loop do
      random_token = SecureRandom.urlsafe_base64(3, false)
      break random_token unless self.class.exists?(token: random_token)
    end
  end
end
