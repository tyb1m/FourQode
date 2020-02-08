class MypagesController < ApplicationController
  def notification
  end
  def appContractor
  end
  def solvedQuestion
    @labels = ["Ruby", "Javascript"]
  end
  def unsolvedQuestion
    @labels = ["Ruby", "Javascript", "HTML"]
  end
  def leadedQuestion
  end
  def review
  end
  def guid
  end
  def comment
  end
  def contact
  end
  def sale
  end
  def salesHistory
  end
  def transferApp
  end
  def registrationCard
  end
  def transferConfirm
  end
  def transferComppleted
  end
  def salesTerm
  end
  def charge
    @price = { "5200": [ 200, "¥5,000" ], "10200": [ 400, "¥9,800" ], "20700": [ 900, "¥19,800" ], "31200": [ 1400, "¥29,800" ], "41700": [ 1900, "¥39,800" ], "52300": [ 2500, "¥49,800" ] }
  end
  def profile
  end
  def mailPassword
  end
  def card
  end
  def myInfo
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

end
