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

This will generate given `enum` to have auto-completion in code and avoid any typo errors:

```swift
/// Auto-generated

import Localizable

enum Strings {
    @Localizable static var login = "login"
    @Localizable static var sign_in = "sign_in"
}
```

### Integration with Xcode's project

1. Copy `Resources/Localizable` folder into project's `Resources`
1. Place your translations `Strings.xml` file into `Resources`
1. Add new Build Phase to generate strings

```sh
cd $SRCROOT/$TARGETNAME/Resources/Localizable
./make.sh $SCRIPT_INPUT_FILE_0 .. $SCRIPT_OUTPUT_FILE_0
```

- Input Files: `$(SRCROOT)/$(TARGETNAME)/Resources/Strings.xml`
- Output Files: `$(SRCROOT)/$(TARGETNAME)/Strings.swift`

### Reformat input XML

As an option here is possible to reformat input source XML to keep languages in sorted order:

```sh
$ format.sh Strings.xml
```

This will overwrite existing file.

### How to add it to Xcode project?

1. In Xcode select **File ⭢ Swift Packages ⭢ Add Package Dependency...**
1. Copy-paste repository URL: **https://github.com/avdyushin/Localizable**
1. Hit **Next** two times, under **Add to Target** select your build target.
1. Hit **Finish**

#### Links
[Using XML and XSLT for code generation](https://grigory.nl/posts/xslt-auto-generation/)

