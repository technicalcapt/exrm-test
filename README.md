# ExrmTest

Before release:
configure your host url and set port: 8888
```
# Configures the endpoint
config :hello_phoenix, HelloPhoenix.Endpoint,
http: [port: 8888],
url: [host: "example.com"],
root: ".",
cache_static_manifest: "priv/static/manifest.json",
server: true
```

Alternately, we can set port from an environtment variable on our system:

```
. . .
config :hello_phoenix, HelloPhoenix.Endpoint,
http: [port: {:system, "PORT"}],
. . .

```

Uncomment the following line to instruct Phoenix to start the server for all endpoints:

```
. . .
# ## Using releases
#
# If you are doing OTP releases, you need to instruct Phoenix
# to start the server for all endpoints:
#
    config :phoenix, :serve_endpoints, true
    . . .
```

Pre-compile our static-assets using the phoenix.digest task with: `MIX_ENV=prod mix phoenix.digest`

And generate our release `MIX_ENV=prod mix compile && MIX_ENV=prod mix release`

Content of the release in the `rel` directory.

Test release with console command.Example:
`rel/exrm_test/bin/exrm_test console`
`rel/exrm_test/bin/exrm_test start`
`rel/exrm_test/bin/exrm_test stop`
`rel/exrm_test/bin/exrm_test ping`

Error config
```
 [error] Could not check origin for Phoenix.Socket transport.

This happens when you are attempting a socket connection to
a different host than the one configured in your config/
files. For example, in development the host is configured
to "localhost" but you may be trying to access it from
"127.0.0.1". To fix this issue, you may either:

  1. update [url: [host: ...]] to your actual host in the
     config file for your current environment (recommended)
       
  2. pass the :check_origin option when configuring your
     endpoint or when configuring the transport in your
     UserSocket module, explicitly outlining which origins
     are allowed:
                        
        check_origin: ["https://example.com",
                        "//another.com:888", "//other.com"]
```
