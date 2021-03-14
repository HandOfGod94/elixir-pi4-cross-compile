# HelloWorld

Cross compiling elixir has always been PITA.

This is small example to cross-compile elixir app from MacOSX.
It uses [earthly.dev](https://earthly.dev/)

### Prerequisite
* Docker >= 19
* earthly

### Command

```shell
# build otp release for pi as tarball
earthly +build
```

This will generate a tarball, which is compatible with raspberry pi 4.
If you want to work with older version, tweak `--platform` value as per the `hostnamectl` info.

> Note: I have not tried this with windows as docker host. It may or may not work.