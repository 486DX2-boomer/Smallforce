# Smallforce

Smallforce is a package for Pharo Smalltalk that provides bindings to the Salesforce REST API.

## Quickstart

Follow the instructions to sign up and authenticate from the [Salesforce REST documentation](https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/quickstart.htm).

1. You will need a developer org (or Trailhead playground).
2. Login to your org and setup your credentials.
3. Create a permission set with API Enabled permissions, and assign it your user.
4. Get your authentication token. I recommend using the Salesforce CLI.
5. Use the sf org command with `display --target org` and your username. It will look something like: `sf org display --target-org yourname@adjective-animal-1abcd2.com`
6. The CLI will provide you with your access token, API version, and instance URL. It will look like this:

```
=== Org Description

 KEY              VALUE

 ──────────────── ────────────────────────────────────────────────────────────────────────────────────────────────────────────────
 Access Token     00abc00def00012345
 Api Version      60.0

 Client Id        PlatformCLI

 Connected Status Connected

 Id               00abc000001A2c3d

 Instance Url     https://adjective-animal-1abcd2-dev-ed.my.salesforce.com

 Username         yourname@adjective-animal-1abcd2.com
```

7. Now in Pharo, create a Smallforce instance.

```
sf := Smallforce new.
sf accessToken: '00abc00def00012345'; org: 'https://adjective-animal-1abcd2-dev-ed.my.salesforce.com'; sfVersion:'v60.0'.
```

8. Smallforce wraps a ZnClient to allow handy access to Salesforce. Pass a message such as: `sf listVersions.` and you'll get: `an Array(a Dictionary('label'->'Summer ''14' 'url'->'/services/data/v31.0' ... ... a Dictionary('label'->'Spring ''24' 'url'->'/services/data/v60.0' 'version'->'60.0' )))`.

## Project Status

The vast majority of the API remains to be implemented.
