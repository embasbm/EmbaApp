App.user = App.cable.subscriptions.create "UserChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    tr = document.getElementById(data.user._id.$oid)
    tr.getElementsByClassName('first_name')[0].innerHTML = data.user.first_name
    tr.getElementsByClassName('last_name')[0].innerHTML = data.user.last_name
    tr.getElementsByClassName('email')[0].innerHTML = data.user.email
