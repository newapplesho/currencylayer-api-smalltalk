public
list
	| url |
	url := self baseResourceUrl.
	url addPathSegment: 'live'.
	url queryAt: 'access_key' add: self settings accessKey.
	^ self get: url.