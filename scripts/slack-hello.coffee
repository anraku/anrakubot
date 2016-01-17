# scripts/slack-hello.coffee
module.exports = (robot) ->
  robot.hear /hello/i, (msg) ->
    username = msg.message.user.name
    msg.send "Hello, " + username + "! my name is anrakubot"
    
  robot.hear /運勢/i, (msg) ->
    msg.send msg.random ["大吉です！", "小吉です！", "凶です！", "大凶です！"]