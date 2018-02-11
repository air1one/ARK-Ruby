# Delegate

## count

```ruby
client.count_delegates
```

## search

```ruby
client.search_delegates(q, parameters: {})
```

## voters

```ruby
client.delegate_voters(publicKey, parameters: {})
```

## delegate

```ruby
client.delegate(parameters: {})
```

## delegates

```ruby
client.delegates(parameters: {})
```

## fee

```ruby
client.delegate_fee
```

## forgedByAccount

```ruby
client.forged_by_account(generatorPublicKey)
```

## create

```ruby
client.create_delegate(username, secret, second_secret = nil)
```


## vote

```ruby
client.vote_for_delegate(delegates, secret, second_secret = nil)
```

## unvote

```ruby
client.remove_vote_for_delegate(delegates, secret, second_secret = nil)
```

## nextForgers

```ruby
client.next_forgers
```

## enableForging

```ruby
client.enable_forging(secret, parameters = {})
```

## disableForging

```ruby
client.disable_forging(secret, parameters = {})
```

## forgingStatus

```ruby
client.forging_status(publicKey, parameters = {})
```
