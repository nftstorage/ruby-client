# NFTStorage::Links

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ipfs** | **String** |  | [optional] |
| **http** | **String** |  | [optional] |
| **file** | [**Array&lt;LinksFile&gt;**](LinksFile.md) |  | [optional] |

## Example

```ruby
require 'nft_storage'

instance = NFTStorage::Links.new(
  ipfs: ipfs://bafkreidivzimqfqtoqxkrpge6bjyhlvxqs3rhe73owtmdulaxr5do5in7u,
  http: http://bafkreidivzimqfqtoqxkrpge6bjyhlvxqs3rhe73owtmdulaxr5do5in7u.ipfs.dweb.link,
  file: null
)
```

