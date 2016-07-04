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
