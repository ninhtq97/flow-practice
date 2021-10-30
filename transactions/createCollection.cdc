import AwesomeNifty from "../contracts/AwesomeNifty.cdc"

transaction() {
  prepare(account: AuthAccount) {
    let collection <- AwesomeNifty.createCollection()

    account.save(
      <- collection,
      to: /storage/awesomeNiftyCollection
    )

    account.link<&{AwesomeNifty.Receiver}>(
      /public/awesomeNiftyCollection,
      target: /storage/awesomeNiftyCollection
    )
  }
  execute {}
}