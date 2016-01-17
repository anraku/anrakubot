# scripts/slack-hello.coffee
module.exports = (robot) ->
  robot.hear /hello/i, (msg) ->
    username = msg.message.user.name
    msg.send "Hello, " + username + "! my name is anrakubot"
    
  robot.hear /運勢/i (msg) ->
    fortunes = [
      '大吉',
      '末吉',
      '大凶'
    ]
    result = fortunes[random(3)]
    msg.send "あなたの運勢は#{result}です！"