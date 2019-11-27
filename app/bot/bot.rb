required 'facebook/messenger'
include Facebook::Messenger

Facebook::Messenger::Subscriptions.subscribe(
    access_token: ENV["ACCESS_TOKEN"],
    subscribed_fields: ['messages'] #, 'messaging_account_linking', 'message_deliveries', 'message_echoes', 'messaging_game_plays', 'messaging_handovers', 'messaging_optins', 'messaging_policy_enforcement', 'messaging_postbacks', 'message_reactions', 'message_reads', 'messaging_referrals', 'standby' ]
)

Bot.on :message do |message|
  if message.text.include? "Bonjour"
    message.reply(text: 'Bonjour à vous !')
  elsif message.text.include? "Bonne nuit"
    message.reply(text: 'Dormez bien !')
  else
    message.reply(text: 'réponse par défaut.')
  end
end