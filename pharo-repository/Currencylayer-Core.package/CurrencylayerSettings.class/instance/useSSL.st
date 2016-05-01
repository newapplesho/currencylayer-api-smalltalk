accessing
useSSL
	^ self at: #useSSL ifAbsent: [ ^ true ].