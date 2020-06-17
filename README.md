# Localizable
## Translation strings generation tool based on XSL templates.

- Keep all your translated strings in one XML file;
- Generate `Localizable.strings` for each language;
- Generate Swift's `enum` with strings identifiers.

### Usage

Sample input strings XML file:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<strings>
    <string id="login">
        <en>Log in</en>
        <nl>Inloggen</nl>
        <ru>Вход</ru>
    </string>
    <string id="sign_in">
        <en>Sign in</en>
        <de>Anmelden</de>
    </string>
</strings>
```

Generating Localizable.strings:

```sh
$ ./make.sh strings.xml output output/Strings.swift
```

### Using Localizable Swift Property Wrapper

Consider you have generated `enum` with strings identifiers:

```swift
class MyViewModel {
    @Localizable var login = Strings.login
}
```

### Integration with Xcode's project

TODO

#### Links
[Using XML and XSLT for code generation](https://grigory.nl/posts/xslt-auto-generation/)

