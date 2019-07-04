# Game Channel
class GameChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'game_channel'
  end

  def unsubscribed; end

  def create(options)
    ChatMessage.create(
      content: options.fetch('content'),
      user_id: options.fetch('userId')
    )
  end
end
