class AccountsController < ApplicationController
  def new

  end

  def create
    @account = Account.new(account_params)

    @account.save
    redirect_to @account
  end

  private
    def account_params
      params.require(:accounts).permit(:email)
    end
end
