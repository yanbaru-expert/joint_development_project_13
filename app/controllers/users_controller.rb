class UsersController < ApplicationController
    #新規作成画面に対するアクション
    def new
        @user = User.new
    end

    #新規登録するためのアクション
    def create
        User.create(user_params)
    end

    #ストロングパラメーター
    private
    def user_params
        params.require(:user).permit(:name, :age)
    end

end
