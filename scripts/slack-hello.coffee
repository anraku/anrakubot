# scripts/slack-hello.coffee
module.exports = (robot) ->
  robot.hear /hello/i, (msg) ->
    username = msg.message.user.name
    msg.send "Hello, " + username + "! my name is anrakubot"