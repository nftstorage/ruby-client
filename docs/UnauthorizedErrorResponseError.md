# NFTStorage::UnauthorizedErrorResponseError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional][default to &#39;HTTP Error&#39;] |
| **message** | **String** |  | [optional][default to &#39;Unauthorized&#39;] |

## Example

```ruby
require 'nft_storage'

instance = NFTStorage::UnauthorizedErrorResponseError.new(
  name: null,
  message: null
)
```

