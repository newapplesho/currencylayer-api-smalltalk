# currencylayer-api-smalltalk

Pharo Smalltalk wrapper for [currencylayer API](https://currencylayer.com).

## Supported Smalltalk Versions
[Pharo Smalltalk](http://pharo.org/) 4.0, 5.0

## Installation

```smalltalk
Metacello new
    baseline: 'Currencylayer';
    repository: 'github://newapplesho/currencylayer-api-smalltalk:v0.1/pharo-repository';
    load.
```

or

```smalltalk
Gofer new
url:'http://smalltalkhub.com/mc/newapplesho/currencylayer-api-smalltalk/main';
    package: 'ConfigurationOfCurrencylayer';
    load.
(Smalltalk at: #ConfigurationOfCurrencylayer) load.
```

## Set up
```smalltalk
CurrencylayerSettings default accessKey:'Your API Access Key'.
```

HTTPS Encryption

```smalltalk
"Subscription: Free"
CurrencylayerSettings default useSSL: false.

"Subscription: Basic, Pro, Enterprise"
CurrencylayerSettings default useSSL: true.
```

## Usage
You can read official documentation [here](https://currencylayer.com/documentation).

### Real-time Rates

```smalltalk
currencylayer := Currencylayer new.
currencylayer live:#('AUD' 'EUR' 'GBP' 'PLN').
```

### Source Currency Switching

```smalltalk
currencylayer := Currencylayer new.
currencylayer sourceCurrency: 'JPY'.
```

### Currency Conversion Endpoint

```smalltalk
currencylayer := Currencylayer new.
currencylayer convert: 100 from: 'JPY' to: 'USD'.  "print it"
```

Example response

```json
{
   "privacy":"https://currencylayer.com/privacy",
   "success":true,
   "info":{
      "timestamp":1462096813,
      "quote":0.009402
   },
   "query":{
      "to":"USD",
      "from":"JPY",
      "amount":100
   },
   "terms":"https://currencylayer.com/terms",
   "result":0.9402
}
```
