# Account

## Get the balance of an account.

```ruby
client.account_balance(address)
```

## Get the public key of an account.

```ruby
client.account_publickey(address)
```

## Get the delegates of an account.

```ruby
client.account_delegates(address)
```

## Get the delegate fee of an account.

```ruby
client.account_delegates_fee(address)
```

## Add a new delegate to an account.

```ruby
client.create_account_delegates(secret, public_key, second_secret)
```

## Returns account information of an address.

```ruby
client.account(address)
```

## Get a list of accounts.

```ruby
client.accounts
```

## Get a list of top accounts.

```ruby
client.top_accounts
```

## Get the count of accounts.

```ruby
client.count_accounts
```
