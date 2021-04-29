# NFTStorage::Deal

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **batch_root_cid** | **String** |  | [optional] |
| **last_change** | **String** | This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: YYYY-MM-DDTHH:MM:SSZ. |  |
| **miner** | **String** | Miner ID | [optional] |
| **network** | **String** | Filecoin network for this Deal | [optional] |
| **piece_cid** | **String** | Piece CID string | [optional] |
| **status** | **String** | Deal status |  |
| **status_text** | **String** | Deal status description. | [optional] |
| **chain_deal_id** | **Float** | Identifier for the deal stored on chain. | [optional] |
| **deal_activation** | **String** | This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: YYYY-MM-DDTHH:MM:SSZ. | [optional] |
| **deal_expiration** | **String** | This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: YYYY-MM-DDTHH:MM:SSZ. | [optional] |

## Example

```ruby
require 'nft_storage'

instance = NFTStorage::Deal.new(
  batch_root_cid: bafkreidivzimqfqtoqxkrpge6bjyhlvxqs3rhe73owtmdulaxr5do5in7u,
  last_change: 2021-03-18T11:46:50.000Z,
  miner: f05678,
  network: null,
  piece_cid: bafkreidivzimqfqtoqxkrpge6bjyhlvxqs3rhe73owtmdulaxr5do5in7u,
  status: null,
  status_text: miner rejected my data,
  chain_deal_id: 138,
  deal_activation: 2021-03-18T11:46:50.000Z,
  deal_expiration: 2021-03-18T11:46:50.000Z
)
```

