class NoticeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_confirm.subject
  #
  def sendmail_confirm(user, catering)
    @item = catering.menu.name
    @price = catering.menu.price
    @time = catering.arrived_at
    @address = catering.address
    @message = "ご注文いただいた商品があと1時間ほどで到着いたします。"
    @name = user.name

    mail to: user.email
  end
end
