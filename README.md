# Awesome Xcode Scripts


[![Awesome](https://cdn.rawgit.com/sindresorhus/awesome/d7305f38d29fed78fa85652e3a63e154dd8e8829/media/badge.svg)](https://github.com/aashishtamsya/awesome-xcode-scripts)
[![Platform](https://img.shields.io/badge/platform-Xcode-lightgrey.svg)](https://developer.apple.com/xcode/)
[![Programming Language](https://img.shields.io/badge/language-shell-yellow.svg)](https://en.wikipedia.org/wiki/Shell_script)
[![license](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE.md)

A curated list of useful xcode scripts 📝.

## Content
  

-	[Scripts](#scripts)
	-	[Build Versioning](#build-versioning)
	-	[Build Number on Git Commit](#build-number-on-git-commit)
-	[Installation](#installation)
-	[Contributing](#contributing)
-	[Credits](#credits)
-	[License](#license)
  
  
# Scripts 

### Build Versioning

*	[BuildVersion.sh](BuildVersion.sh)	-	A script that runs each time you build your app in Xcode to read the Build number, increment it, and write it back to the app's `{App}-Info.plist` file.

### Build Number on Git Commit

* []() - A script that runs each time you commit your app to git, the Build number gets incremented.

> **CAUTION**
>
> Use this only if you are pushing you code to git.

## Installation

1. Download the zip or clone the repo to your desired directory.

```sh
$ git clone https://github.com/aashishtamsya/awesome-xcode-scripts.git
```


## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request 😉 😊
  
## Credits
  
*	Build Versioning - [BuildVersion.sh](/BuildVersion.sh)	- [nekno](http://stackoverflow.com/users/110776/nekno)
*	Build Number on Git Commit - [BuildNumberOnGitCommit.sh](/BuildNumberOnGitCommit.sh)	- [Jared Sinclair](http://jaredsinclair.com/)

## License

The content of [*Awesome Xcode Scripts*](https://github.com/aashishtamsya/awesome-xcode-scripts) itself is licensed under the [Creative Commons Attribution 3.0 license](https://creativecommons.org/licenses/by/3.0/us/deed.en_US), and the underlying source code used to format and display that content is licensed under the [MIT license](https://opensource.org/licenses/mit-license.php).

See the [LICENSE](LICENSE.md) file for more info.