require 'elasticsearch/model'

class Message < ApplicationRecord

  belongs_to :chat

  validates :chat_id,
          presence: true,
          numericality: { only_integer: true, greater_than_or_equal_to: 1 },
          uniqueness: { scope: :chat_id }

  include Searchable

end