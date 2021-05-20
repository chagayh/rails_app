class LstUpdateChannel < ApplicationCable::Channel
  def subscribed
    stream_from "list_update_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
