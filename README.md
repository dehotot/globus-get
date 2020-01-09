# globus-get

Authenticate via MyProxy and retrieve files from a Globus Online server

# building
`make build`

# running

Open a shell inside the container, and run `myproxygetcredential.sh`

The arguments to `myproxygetcredential.sh` are:
1. the Server DN of the remote MyProxy
1. the address of the remote MyProxy
1. username on the remote MyProxy
1. password on the remote MyProxy

## example:
`make shell
/myproxygetcredential.sh "/C=US/O=Globus Consortium/OU=Globus Connect Service/CN=ec03d93c-000c-4803-b07c-776dcd52a6ba" 1.2.3.4 myusername 'password;1'`
