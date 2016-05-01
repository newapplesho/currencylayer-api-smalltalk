accessing
value
	| responseJson exception |
	responseJson := NeoJSONObject fromString: self response contents.
	(self response isSuccess and:[ responseJson success ])
		ifTrue:[ ^ responseJson ].
	
	exception := self defaultExceptionClass new.
	exception properties: responseJson.
	exception signal.