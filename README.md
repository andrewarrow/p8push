# p8push
ruby gem for apple push notifications using only the new p8 format not the older pem format

add to Gemfile: `gem 'p8push', git: 'https://github.com/andrewarrow/p8push.git'`

```
export APN_PRIVATE_KEY=/path/APNsAuthKey_ABCDE12345.p8 
export APN_TEAM_ID=XYZDE99911
export APN_KEY_ID=ABCDE12345
export APN_BUNDLE_ID=com.bundle.id
```

```
APN = P8push::Client.development
token = 'GETREALTOKENFROMADEVICE'
notification = P8push::Notification.new(device: token)
notification.alert = 'Hello, World!'
APN.push(notification)
```

The gem with pem format this came from is https://github.com/nomad/houston
