module Broadcast
  class Hello
    include CableReady::Broadcaster

    def self.send_hi
      new.send_hi
    end

    def send_hi
      cable_ready[ApplicationChannel].prepend(html: render_hi, selector: "#test").broadcast_to("test")
    end

    private

    def render_hi
      ApplicationController.render(partial: "layouts/hi", layout: false, locals: {from: "Broadcast::Hello"})
    end
  end
end
