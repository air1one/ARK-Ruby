# Transactions

## Get a single transaction.

```ruby
client.transaction(id)
```

## Get all transactions.

```ruby
client.transactions(parameters: {})
```

## Get a single unconfirmed transaction.

```ruby
client.unconfirmed_transaction(id)
```

## Get all unconfirmed transactions.

```ruby
client.unconfirmed_transactions(parameters: {})
```

## Create a new transaction.

```ruby
client.create_transaction(recipientId, amount, vendorField, secret, secondSecret)
```
