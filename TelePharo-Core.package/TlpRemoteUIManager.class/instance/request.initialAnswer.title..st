ui-requests
request: aStringOrText initialAnswer: defaultAnswer title: aTitle

	^self requestUserBy: [:ui | 
		ui request: aStringOrText initialAnswer: defaultAnswer title: aTitle]