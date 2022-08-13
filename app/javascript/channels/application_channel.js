import CableReady from 'cable_ready'
import consumer from './consumer'

consumer.subscriptions.create({channel: 'ApplicationChannel', id: "test"}, {
  received (data) {
    if (data.cableReady) CableReady.perform(data.operations)
  }
})
