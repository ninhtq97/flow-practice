import AwesomeNifty from "../contracts/AwesomeNifty.cdc"

transaction() {
  prepare(account: AuthAccount) {
    let collection <- account.load<@AwesomeNifty.Collection>(from: /storage/awesomeNiftyCollection)

    destroy collection
  }
  execute {}
}