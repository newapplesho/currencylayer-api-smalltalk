private
get: aUrl
	| request |
	request := ZnRequest empty.
	request method: #GET.
	request url: aUrl.
	client := self defaultClient new.
	client request: request.
	client execute.
	^ self readJsonFromResponse: client response.