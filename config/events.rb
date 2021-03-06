WebsocketRails::EventMap.describe do
  # You can use this file to map incoming events to controller actions.
  # One event can be mapped to any number of controller actions. The
  # actions will be executed in the order they were subscribed.
  #
  # Uncomment and edit the next line to handle the client connected event:
  #   subscribe :client_connected, :to => Controller, :with_method => :method_name
  #
  # Here is an example of mapping namespaced events:
  #   namespace :product do
  #     subscribe :new, :to => ProductController, :with_method => :new_product
  #   end
  # The above will handle an event triggered on the client like `product.new`.

  #subscribe :receive_message, to: ChatController, with_method: :receive_message
  subscribe :login_user, to: LobbysController, with_method: :login_user
  subscribe :out_player, to: TexasWebsocketController, with_method: :out_player
  subscribe :call, to: TexasWebsocketController, with_method: :call
  subscribe :fold, to: TexasWebsocketController, with_method: :fold
  subscribe :check, to: TexasWebsocketController, with_method: :check
  subscribe :bet, to: TexasWebsocketController, with_method: :bet
  subscribe :raise, to: TexasWebsocketController, with_method: :raise
  subscribe :regame, to: TexasWebsocketController, with_method: :regame

  # デバッグ用
  subscribe :all_logout, to: TexasWebsocketController, with_method: :all_logout 
  
end
