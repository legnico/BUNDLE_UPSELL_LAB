class Shop < ActiveRecord::Base
  include ShopifyApp::SessionStorage

  def api_version
    ShopifyApp.configuration.api_version
  end

  def with_shopify!
    session = ShopifyAPI::Session.new(domain: shopify_domain, token: shopify_token, api_version: '2019-04')
    ShopifyAPI::Base.activate_session(session)
  end
end
