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

#### Links
[Using XML and XSLT for code generation](https://grigory.nl/posts/xslt-auto-generation/)

