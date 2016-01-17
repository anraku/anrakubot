# scripts/slack-hello.coffee
module.exports = (robot) ->
  robot.hear /hello/i, (msg) ->
    username = msg.message.user.name
    msg.send "Hello, " + username + "! my name is anrakubot"
    
  robot.hear /‰^¨/i (msg) ->
    fortunes = [
      '‘å‹g',
      '––‹g',
      '‘å‹¥'
    ]
    result = fortunes[random(3)]
    msg.send "‚ ‚È‚½‚Ì‰^¨‚Í#{result}‚Å‚·I"