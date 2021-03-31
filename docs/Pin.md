# NFTStorage::Pin

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cid** | **String** | Self-describing content-addressed identifiers for distributed systems. Check [spec](https://github.com/multiformats/cid) for more info. | [optional] |
| **name** | **String** |  | [optional] |
| **status** | [**PinStatus**](PinStatus.md) |  | [optional] |
| **created** | **Time** | This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: YYYY-MM-DDTHH:MM:SSZ. | [optional] |
| **size** | **Float** |  | [optional] |

## Example

```ruby
require 'nft_storage'

instance = NFTStorage::Pin.new(
  cid: bafkreidivzimqfqtoqxkrpge6bjyhlvxqs3rhe73owtmdulaxr5do5in7u,
  name: pin name,
  status: null,
  created: 2021-03-12T17:03:07.787Z,
  size: 132614
)
```

