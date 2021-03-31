# NFTStorage::UnauthorizedErrorResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ok** | **Boolean** |  | [optional][default to false] |
| **error** | [**UnauthorizedErrorResponseError**](UnauthorizedErrorResponseError.md) |  | [optional] |

## Example

```ruby
require 'nft_storage'

instance = NFTStorage::UnauthorizedErrorResponse.new(
  ok: null,
  error: null
)
```

