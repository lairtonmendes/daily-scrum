desc 'Envio de Email para responder as Dailies'
# email das resposta para dailies de manhã
task reply_send_m: :environment do
  RepliesMailer.enviar("M").deliver_now!
end

# email das resposta para dailies de tarde
task reply_send_t: :environment do
  RepliesMailer.enviar("T").deliver_now!
end