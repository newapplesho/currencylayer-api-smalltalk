accessing
baseResourceUrl
	| url |
	url := ZnUrl new
		scheme: self settings scheme;
		host: 'apilayer.net';
		addPathSegment: 'api';
		queryAt: 'access_key' add: self settings accessKey;
		yourself.
	^ url