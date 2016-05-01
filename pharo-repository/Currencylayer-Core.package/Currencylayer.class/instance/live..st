public
live: anArray
	| url |
	url := self baseResourceUrl.
	url addPathSegment: 'live'.
	url queryAt: 'currencies' add: (',' join: anArray).
	self sourceCurrency ifNotNil: [ url queryAt: 'source' put: self sourceCurrency ].
	^ self get: url.