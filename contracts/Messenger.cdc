pub contract Messenger {

  pub struct Message{
    pub let sender: Address
    pub let contents: String

    init(sender: Address, contents: String){
      self.sender = sender
      self.contents = contents
    }
  }

  pub struct Inbox{
    pub let messages: [Message]

    init(){
      self.messages = []
    }
  }

  pub fun createInbox(): Inbox {
    return Inbox()
  }

  pub let InboxStoragePath: StoragePath
  pub let InboxPublicPath: PublicPath

  init(){
    self.InboxStoragePath = /storage/MessengerInbox
    self.InboxPublicPath = /public/MessengerInbox
  }
}
