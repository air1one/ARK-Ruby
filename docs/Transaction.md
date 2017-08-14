# Transactions

## Get a single transaction.

```php
client.transaction(id)
```

## Get all transactions.

```php
client.transactions(parameters: {})
```

## Get a single unconfirmed transaction.

```php
client.unconfirmed_transaction(id)
```

## Get all unconfirmed transactions.

```php
client.unconfirmed_transactions(parameters: {})
```

## Create a new transaction.

```php
client.create_transaction(recipientId, amount, vendorField, secret, secondSecret)
```
