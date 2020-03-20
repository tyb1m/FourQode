class MypagesController < ApplicationController
  def notification
  end
  def app_contractor
    @title = "「インクリメンタルサーチ」"
  end
  def solved_question
    labels
  end
  def unsolved_question
    labels
  end
  def leaded_question
    labels
  end
  def review
    labels
  end
  def guid
  end
  def comment
  end
  def contact
  end
  def sale
  end
  def sales_history
  end
  def transfer_app
    @card = true
  end
  def registration_card
  end
  def transfer_confirm
  end
  def transfer_comppleted
    flash.now[:notice] = 'コインのチャージが完了しました。'
  end
  def sales_term
  end
  def charge
    @price = { "5200": [ 200, "¥5,000" ], "10200": [ 400, "¥9,800" ], "20700": [ 900, "¥19,800" ], "31200": [ 1400, "¥29,800" ], "41700": [ 1900, "¥39,800" ], "52300": [ 2500, "¥49,800" ] }
  end
  def charge_completed
  end
  def profile
  end
  def mail_password
  end
  def card
    @card = true
  end
  def registration_credit
  end
  def confirm_credit
  end
  def credit_completed
  end
  def my_info
  end
  def review2_1_1
    # @user = User.find(params[:id])
  end
  def review2_2_1
  end
  def review2_2_2
  end
  def review2_2_3
  end
  def labels
    @labels = ["Ruby", "Javascript", "HTML"]
  end

end
