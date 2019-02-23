class Post < ApplicationRecord
   validates :content, {presence: true, length: {maximum: 140}}
    # user_idカラムにバリデーションを追加してください
   validates :user_id, {presence: true}

   



   # インスタンスメソッドuserを定義してください
   def user
     return User.find_by(id: self.user_id)
   end
end
