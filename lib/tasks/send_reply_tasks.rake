desc 'Envio de Email para responder as Dailies'
# email the answer to morning dailies 
task reply_send_m: :environment do
  RepliesMailer.enviar("M").deliver_now!
end

# email the answer to afternoon dailies 
task reply_send_t: :environment do
  RepliesMailer.enviar("T").deliver_now!
end
