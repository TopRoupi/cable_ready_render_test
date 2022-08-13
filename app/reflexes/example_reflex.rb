# frozen_string_literal: true

class ExampleReflex < ApplicationReflex
  delegate :uuid, to: :connection

  def test
    puts "We're live!"
    Broadcast::Hello.send_hi
    cable_ready.prepend(html: render(partial: "layouts/hi", layout: false, locals: {from: "ExampleReflex"}), selector: "#test").broadcast
    morph :nothing
  end
end
