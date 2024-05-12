class AvatarChannel < ApplicationCable::Channel
  def subscribed
    stream_from "avatar_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
