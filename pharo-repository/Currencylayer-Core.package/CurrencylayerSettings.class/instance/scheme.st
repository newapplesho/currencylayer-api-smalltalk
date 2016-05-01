accessing
scheme
	self useSSL ifTrue:[ ^ #https ].
	^ #http