instance creation
openFor: aRemotePharo
	^ self basicNew  
		remotePharo: aRemotePharo;
		initialize;
		openOn: GTPlayPage new;
		yourself 
		 