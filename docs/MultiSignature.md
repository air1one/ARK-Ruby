# Multi Signature

## Get pending multi signature transactions.

```ruby
client.pending_multi_signatures(publicKey)
```

## Sign a new multi signature.

```ruby
client.multi_signature_sign(transactionId, secret, parameters = {})
```

## Create a new multi signature.

```ruby
client.create_multi_signature(secret, secondSecret, keysgroup, lifetime, min)
```

## Get a list of accounts.

```ruby
client.multi_signature_accounts(publicKey)
```
