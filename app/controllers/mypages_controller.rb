class MypagesController < ApplicationController
  def notifications
  end
  def app_contractors
  end
  def solved_questions
    @labels = ["Ruby", "Javascript"]
  end
  def unsolved_questions
    @labels = ["Ruby", "Javascript", "HTML"]
  end
  def leaded_questions
  end
  def reviews
  end
  def guid
  end
  def comments
  end
  def contacts
  end
  def sales
  end
  def charges
    @price = { "5200": [ 200, "¥5,000" ], "10200": [ 400, "¥9,800" ], "20700": [ 900, "¥19,800" ], "31200": [ 1400, "¥29,800" ], "41700": [ 1900, "¥39,800" ], "52300": [ 2500, "¥49,800" ] }
  end
  def profile
  end
  def mail_passwords
  end
  def cards
  end
  def my_infos
  end
end
