# NFTStorage::NFT

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cid** | **String** | Self-describing content-addressed identifiers for distributed systems. Check [spec](https://github.com/multiformats/cid) for more info. | [optional] |
| **size** | **Float** | Size in bytes of the NFT data. | [optional][default to 132614] |
| **created** | **Time** | This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: YYYY-MM-DDTHH:MM:SSZ. | [optional] |
| **type** | **String** | MIME type of the upload file or &#39;directory&#39; when uploading multiple files. | [optional] |
| **scope** | **String** | Name of the JWT token used to create this NFT. | [optional][default to &#39;default&#39;] |
| **pin** | [**Pin**](Pin.md) |  | [optional] |
| **files** | **Array&lt;Object&gt;** | Files in the directory (only if this NFT is a directory). | [optional] |
| **deals** | [**NFTDeals**](NFTDeals.md) |  | [optional] |

## Example

```ruby
require 'nft_storage'

instance = NFTStorage::NFT.new(
  cid: bafkreidivzimqfqtoqxkrpge6bjyhlvxqs3rhe73owtmdulaxr5do5in7u,
  size: null,
  created: 2021-03-12T17:03:07.787Z,
  type: image/jpeg,
  scope: null,
  pin: null,
  files: null,
  deals: null
)
```

