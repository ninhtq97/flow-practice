import Messenger from "../contracts/Messenger.cdc"

transaction {
  prepare(acct: AuthAccount) {
    let inbox = Messenger.createInbox()
    acct.save(inbox, to: /storage/MessengerInbox)
    acct.link<&Messenger.Inbox>(/public/MessengerInbox, target: /storage/MessengerInbox)
  }

  execute { }
}