class RepliesMailer < ActionMailer::Base
	default :from => 'no-reply@dailies.com'

	def reply_send(user, daily)
		@user = user
		@daily = daily
		mail({
			:to => @user.email,
			:subject => "Responda a Daily - #{daily.data} - #{daily.team.nome}"
			})
	end

	def enviar(tipo)
		team = Team.all
		team.each do |t|
			d = Daily.new
			d.tipo = tipo
			d.data = Time.now.to_date
			d.team=t
			d.save
			t.members.each do |m|
				RepliesMailer.reply_send(User.find(m.id),d).deliver_now
			end
		end
		
	end
end