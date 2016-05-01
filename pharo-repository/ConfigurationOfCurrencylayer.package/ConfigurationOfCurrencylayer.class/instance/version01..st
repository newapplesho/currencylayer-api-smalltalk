versions
version01: spec 
	<version: '0.1' imports: #('0.1-baseline') >
	
	spec for: #common do: [
		spec package: 'Neo-JSON-Core' with: 'Neo-JSON-Core-SvenVanCaekenberghe.33'.
		spec
			baseline: 'Currencylayer' with: [ 
				spec repository:'github://newapplesho/currencylayer-api-smalltalk:v0.1/pharo-repository' ];
			import: 'Currencylayer' 
	]