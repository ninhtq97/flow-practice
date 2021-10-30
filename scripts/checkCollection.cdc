import AwesomeNifty from "../contracts/AwesomeNifty.cdc"

pub fun main(address: Address): Bool {
  let collectionRef = getAccount(address)
    .getCapability(/public/awesomeNiftyCollection)
    .borrow<&{AwesomeNifty.Receiver}>()

  return collectionRef == nil ? false : true
}
