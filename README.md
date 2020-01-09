# globus-get

Authenticate via MyProxy and retrieve files from a Globus Online server

# building
`make build`

# running

Open a shell inside the container, and run `/opt/globus-get/bin/myproxylogin`

## example:
`make shell`

`/opt/globus-get/bin/myproxylogin myglobusserver.example.com myusername 'password;1'`
