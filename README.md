# globus-get

Authenticate via MyProxy and retrieve files from a Globus Online server

# building
`make build`

# running
`make shell`

`/opt/globus-get/bin/myproxylogin myproxy.example.com myusername 'password;1'`

`globus-url-copy -v -ss '/C=US/O=Globus Consortium/OU=Globus Connect Service/CN=F94C4D49-27F4-432B-84B7-76274BB4F0C8' gsiftp://globusserver.example.com/10M.dat file://./`

if you don't know your globus server's Subject, run the `globus-url-copy` line without the -ss '/C=US'... option, and it will tell you.
