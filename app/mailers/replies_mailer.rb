# responsible class for sending emails daily for responses 'dailies'
class RepliesMailer < ActionMailer::Base
	# definition of mail delivery
	default :from => 'no-reply@dailies.com'

	# method for sending e-mail, receives two parameters user for who can be sent and daily for the answer
	def reply_send(user, daily)
		@user = user
		@daily = daily
		mail({
			:to => @user.email,
			:subject => "Responda a Daily - #{daily.data} - #{daily.team.nome}"
			})
	end

	# method to create a daily to all the team and sends email to all requesting the answer
	# parameter tipo M equals the daily morning and T equal daily afternoon
	def enviar(tipo)
		team = Team.all
		team.each do |t|
			d = Daily.new
			d.tipo = tipo
			d.data = Time.now.to_date
			d.team = t
			d.save
			t.members.each do |m|
				RepliesMailer.reply_send(User.find(m.id),d).deliver_now
			end
		end
		
	end
end