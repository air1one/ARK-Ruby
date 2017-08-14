# Multi Signature

## Get pending multi signature transactions.

```php
client.pending_multi_signatures(publicKey)
```

## Sign a new multi signature.

```php
client.multi_signature_sign(transactionId, secret, parameters: {})
```

## Create a new multi signature.

```php
client.create_multi_signature(secret, secondSecret, keysgroup, lifetime, min)
```

## Get a list of accounts.

```php
client.multi_signature_accounts(publicKey)
```
