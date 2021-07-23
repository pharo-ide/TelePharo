instance creation
openFor: aRemotePharo 
	
	^ self basicNew application: self currentApplication;
		remotePharo: aRemotePharo;
		initialize;
		openWithSpec