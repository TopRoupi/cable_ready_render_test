# frozen_string_literal: true

class ApplicationChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "application-stream"
    puts "ssssssssssS"
    stream_for params[:id]
  end
end
