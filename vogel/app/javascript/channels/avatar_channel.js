import consumer from "channels/consumer";

console.log("avatar_channel.js loaded!");

function addHeadShakeAnimation() {
  addClassToElement('avatar-head', 'avatar-head-animation-shake');
  setTimeout(function() {
    removeClassFromElement('avatar-head', 'avatar-head-animation-shake');
  }, 6000);
}

function addClassToElement(element, className) {
  var element = document.getElementsByClassName(element)[0];
  element.classList.add(className);
}

function removeClassFromElement(element, className) {
  var element = document.getElementsByClassName(element)[0];
  element.classList.remove(className);
}

consumer.subscriptions.create("AvatarChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
    console.log("Connected to the AvatarChannel!");
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
    console.log("Disconnected from the AvatarChannel!");
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel
    console.log("Received data from the AvatarChannel!");
    
    switch(JSON.parse(data).action) {
      case "move_head":
        console.log("Move Head!");
        addHeadShakeAnimation();
        break;
    }
  }
});
