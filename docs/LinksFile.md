# NFTStorage::LinksFile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ipfs** | **String** |  | [optional] |
| **http** | **String** |  | [optional] |

## Example

```ruby
require 'nft_storage'

instance = NFTStorage::LinksFile.new(
  ipfs: ipfs://bafkreidivzimqfqtoqxkrpge6bjyhlvxqs3rhe73owtmdulaxr5do5in7u/image.jpg,
  http: http://bafkreidivzimqfqtoqxkrpge6bjyhlvxqs3rhe73owtmdulaxr5do5in7u.ipfs.dweb.link/image.jpg
)
```

