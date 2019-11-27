required 'facebook/messenger'
include Facebook::Messenger

Facebook::Messenger::Subscriptions.subscribe(
    access_token: ENV["ACCESS_TOKEN"],
    subscribed_fields: ['messages', 'messaging_account_linking', 'messaging_checkout_updates',
    'message_echoes', 'message_deliveries', 'messaging_game_plays', 'messaging_optins',
    'messaging_optouts', 'messaging_payments', 'messaging_postbacks',
    'messaging_pre_checkouts', 'message_reads', 'messaging_referrals',
    'messaging_handovers', 'messaging_policy_enforcement',
    'messaging_page_feedback', 'messaging_appointments']
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