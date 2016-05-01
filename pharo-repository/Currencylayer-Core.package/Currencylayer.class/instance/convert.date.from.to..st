public
convert: amount date: dateString from: fromCurrency to: toCurrency
	| url |
	url := self baseResourceUrl.
	url addPathSegment: 'convert'.
	url queryAt: 'from' add: fromCurrency.
	url queryAt: 'to' add: toCurrency.
	url queryAt: 'amount' add: amount.
	dateString isEmptyOrNil 
		ifFalse:[ url queryAt: 'date' add: dateString. ].
	^ self get: url.