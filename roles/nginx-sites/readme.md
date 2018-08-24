Simple setup for nginx proxy.

`site_config` array schema

```
[
  {
    site_name: "jenkins",
    server_name: "jenkins.truongtx.me",
    server_port: 15843,

    basic_auth: false,  // whether to enable basic authentication
    basic_auth_user: jekyll,
    basic_auth_password: jekyll
  }
]
```
