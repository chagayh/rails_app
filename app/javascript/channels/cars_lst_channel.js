import consumer from "./consumer"

consumer.subscriptions.create("LstUpdateChannel", {
  connected() {
    console.log("Connected to list_update_channel")
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    let feed = document.getElementById('feed');
  
    feed.innerHTML +=
      "<p>" + data.id + ". " + data.title + "</p>";
  }
});
