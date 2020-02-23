class QuestionsController < ApplicationController

  def new
    flash[:warning1] = "クレジットカードの登録が完了いたしました。最速質問してみましょう！"
    flash[:warning2] = "新規質問作成"
    flash[:notice] = "金額が未入力です。"
  end

  def show
  end

end
