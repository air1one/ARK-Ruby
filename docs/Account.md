# Account

## Get the balance of an account.

```php
client.account_balance(address)
```

## Get the public key of an account.

```php
client.account_publickey(address)
```

## Get the delegates of an account.

```php
client.account_delegates(address)
```

## Get the delegate fee of an account.

```php
client.account_delegates_fee(address)
```

## Add a new delegate to an account.

```php
client.create_account_delegates(secret, publicKey, secondSecret)
```

## Returns account information of an address.

```php
client.account(address)
```

## Get a list of accounts.

```php
client.accounts
```

## Get a list of top accounts.

```php
client.top_accounts
```

## Get the count of accounts.

```php
client.count_accounts
```
