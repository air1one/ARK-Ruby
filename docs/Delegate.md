# Delegate

## count

```php
client.count_delegates
```

## search

```php
client.search_delegates(q, parameters: {})
```

## voters

```php
client.delegate_voters(publicKey, parameters: {})
```

## delegate

```php
client.delegate(parameters: {})
```

## delegates

```php
client.delegates(parameters: {})
```

## fee

```php
client.delegate_fee
```

## forgedByAccount

```php
client.forged_by_account(generatorPublicKey)
```

## create

```php
client.create_delegate(secret, username, secondSecret: nil)
```


## vote

```php
client.vote_for_delegate(secret, delegates, secondSecret: nil)
```

## nextForgers

```php
client.next_forgers
```

## enableForging

```php
client.enable_forging(secret, parameters: {})
```

## disableForging

```php
client.disable_forging(secret, parameters: {})
```

## forgingStatus

```php
client.forging_status(publicKey, parameters: {})
```
