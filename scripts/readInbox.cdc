import Messenger from "../contracts/Messenger.cdc"

pub fun main(address: Address): Bool {
  let account = getAccount(address)

  let inboxRef = account.getCapability(/public/MessengerInbox).borrow<&Messenger.Inbox>()

  if inboxRef != nil {
    return true
  }

  return false
}
