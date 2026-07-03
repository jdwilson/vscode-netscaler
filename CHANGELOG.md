## v1.1.0

### Enhancements
* Updated syntax coverage to NetScaler 14.1: all CLI verbs (72), all command areas (168), and per-area entity keywords generated against the 14.1 command reference, including new areas such as `api`, `quic`, `quicBridge`, `bot`, `cloud`, `adm`, `analytics`, and `metrics`
* Updated service type keywords to the 14.1 set (e.g. `HTTP_QUIC`, `QUIC_BRIDGE`, `MONGO_TLS`, `LOGSTREAM_SSL`, `ADNS_DOT`) and extended them to `service`/`servicegroup` commands, not just vservers
* Added a grammar test suite (`make test`) with a generated corpus covering every 14.1 command

### Fixes
* Tokens at the end of a line (entities, parameters, numbers, IPs, closing string delimiters) are now highlighted; previously most patterns required trailing whitespace
* Command areas no longer match on verb suffixes mid-word (e.g. `transform policy` was mis-scoped via the `rm` in `transform`)
* Consecutive bare numbers are now all highlighted instead of every other one
* Parameter value keywords (e.g. `info`) no longer override entity names such as `show ns info`
* Removed an empty alternative in the command area pattern that could match empty strings
* Operators (`==`, `!=`, `&&`, `||`) now highlight when surrounded by spaces

### Changes
* Removed the `.txt` file association; `.conf` and `ns.conf` remain (select the NetScaler language manually for text files)

## v1.0.0

### Enhancements
* Added additional utility commands([#17][8])

## v0.3.1

### Enhancements
* Added additional operation keywords and service types to syntax definition
* Added additional snippets:
  * Add SSL Cipher Group and SSL Profile, based on [Citrix Tech Zone: Networking SSL/TLS Best Practices (SSL Labs A+ Q4 2021)][6]
  * Apply Base Configuration Settings to a new Citrix ADC, based on [Citrix Tech Zone: Best Practices for Citrix ADC Deployment][7]

## v0.3.0

Many thanks to [@alphaskade][alphaskade] for their contributions to this release.

### Enhancements
* Added highlighting of (some) bad ciphers, hash algorithms, and protocols, such as MD5, DES/3DES, SSLv2/v3 ([#14][5])
* Added numerous missing configuration elements and optimisations ([#14][5])

### Fixes
* Fixed highlighting of various numeric strings, such as interfaces and IP addresses ([#11][3])
* Fixed highlighting of AppFW patterns breaking string highlighting ([#13][4])

## v0.2.3

### Enhancements
* Added highlighting of additional parameter keywords

## v0.2.2

### Enhancements
* Added some initial snippets (including tab-completion) for common commands such as creating CS and LB vServers, Monitors, and IPs

## v0.2.1

### Fixes
* Fixed regression in keywords highlighting where they shouldn't ([#2][1])

## v0.2.0

### Enhancements
* Added highlighting of parameter keywords
* Added highlighting of quoted strings and escaped characters

### Fixes
* Fixed highlighting of numeric strings where they shouldn't ([#6][2])
* Fixed keywords highlighting where they shouldn't ([#2][1])

[1]: https://github.com/timdenholm/vscode-netscaler/issues/2
[2]: https://github.com/timdenholm/vscode-netscaler/issues/6
[3]: https://github.com/timdenholm/vscode-netscaler/issues/11
[4]: https://github.com/timdenholm/vscode-netscaler/issues/13
[5]: https://github.com/timdenholm/vscode-netscaler/pull/14
[6]: https://docs.citrix.com/en-us/tech-zone/build/tech-papers/networking-tls-best-practices.html
[7]: https://docs.citrix.com/en-us/tech-zone/build/tech-papers/best-practices-citrix-adc-deployments.html
[alphaskade]: https://github.com/alphaskade
[8]: https://github.com/timdenholm/vscode-netscaler/issues/17