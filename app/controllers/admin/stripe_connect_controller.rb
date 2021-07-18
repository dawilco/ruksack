class Admin::StripeConnectController < ApplicationController
  require 'stripe'

  def account_setup
    account = Stripe::Account.create({
                                       type: 'standard'
                                     })
    account_links = Stripe::AccountLink.create({
                                                 account: account[:id],
                                                 refresh_url: 'https://example.com/reauth',
                                                 return_url: 'https://example.com/return',
                                                 type: 'account_onboarding'
                                               })

    redirect_to account_links[:url]
  end
end
