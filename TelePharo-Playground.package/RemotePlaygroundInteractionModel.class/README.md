This subclass overrides #doItReceiver

The compiler executes the method compiled for the doit on the receiver (using #withArgs:executeMethod:).
By overriding that method, we execute the doit on the remote system