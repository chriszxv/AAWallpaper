fastlane documentation
================
# Installation

Make sure you have the latest version of the Xcode command line tools installed:

```
xcode-select --install
```

Install _fastlane_ using
```
[sudo] gem install fastlane -NV
```
or alternatively using `brew cask install fastlane`

# Available Actions
### get_config
```
fastlane get_config
```
Gets config info from config.json

#### Example:

```
bundle exec fastlane get_config code:default
```

```
bundle exec fastlane get_config code:build
```

```
bundle exec fastlane get_config code:build-default
```

#### Options

* **`code`**: Project Code for any lane options config in config.json.

---
### generate_export_method
```
fastlane generate_export_method
```
Generate an export method

#### Example:

```
bundle exec fastlane generate_export_method export_method:adhoc
```

#### Options

* **`export_method`**: Export method: `development` / `adhoc` / `appstore` build configuration in Xcode.

---
### bump_build_number
```
fastlane bump_build_number
```
Bumps a build number

#### Example:

```
bundle exec fastlane bump_build_number code:default
```

#### Options

* **`code`**: Project Code for any lane options config in config.json.

---
### generate_build_name
```
fastlane generate_build_name
```
Generate a build name

#### Example:

```
bundle exec fastlane generate_build_name code:default export_method:adhoc env:PRO
```

#### Options

* **`code`**: Project Code for any lane options config in config.json.

* **`export_method`**: Export method: `development` / `adhoc` / `appstore` build configuration in Xcode.

* **`env`**: last name component.

---
### build_ipa
```
fastlane build_ipa
```
Builds an IPA

#### Example:

```
bundle exec fastlane build_ipa code:default export_method:adhoc env:PRO
```

#### Options

* **`code`**: Project Code for any lane options config in config.json.

* **`export_method`**: Export method: `development` / `adhoc` / `appstore` build configuration in Xcode.

* **`env`**: Enviroment: `DEV` / `UAT` / `PRO` build configuration in Xcode.

---
### upload_appcenter
```
fastlane upload_appcenter
```
Uploads an IPA to App Center

#### Example:

```
bundle exec fastlane upload_appcenter code:default env:PRO
```

#### Options

* **`code`**: Project Code for any lane options config in config.json.

* **`env`**: Enviroment: `DEV` / `UAT` / `PRO` build configuration in Xcode.

---
### upload_filemanager
```
fastlane upload_filemanager
```
Uploads an IPA to File Manager

Simulate a curl call to file manager server:

`curl -F file0=@../builds/CODE.v1.1.0.b45.PRO.ipa https://10.3.2.1/diva/filemanager/upload.php`

#### Example:

```
bundle exec fastlane upload_filemanager code:default export_method:adhoc env:PRO
```

#### Options

* **`code`**: Project Code for any lane options config in config.json.

* **`export_method`**: Export method: `development` / `adhoc` / `appstore` build configuration in Xcode.

* **`env`**: Enviroment: `DEV` / `UAT` / `PRO` build configuration in Xcode.

---
### upload_appstore
```
fastlane upload_appstore
```
Uploads an IPA to App Store

#### Example:

```
bundle exec fastlane upload_appstore code:default export_method:appstore env:PRO
```

#### Options

* **`code`**: Project Code for any lane options config in config.json.

* **`export_method`**: Export method: `development` / `adhoc` / `appstore` build configuration in Xcode.

* **`env`**: Enviroment: `DEV` / `UAT` / `PRO` build configuration in Xcode.

---
### git_checkout
```
fastlane git_checkout
```
Fetch remote and checkout out target branch

#### Example:

```
bundle exec fastlane git_checkout branch:develop
```

#### Options

* **`branch`**: Target branch to pull.

---
### git_commit_build
```
fastlane git_commit_build
```
Commit bump build number message push to remote

#### Example:

```
bundle exec fastlane git_commit_build code:default export_method:adhoc env:PRO branch:develop
```

#### Options

* **`code`**: Project Code for any lane options config in config.json.

* **`env`**: Enviroment: `DEV` / `UAT` / `PRO` build configuration in Xcode.

* **`branch`**: Target branch to push.

---
### beta_appcenter
```
fastlane beta_appcenter
```
Builds an Ad Hoc IPA and upload to App Center

#### Example:

```
bundle exec fastlane beta_appcenter code:default env:PRO branch:develop
```

#### Options

* **`code`**: Project Code for any lane options config in config.json.

* **`env`**: Enviroment: `DEV` / `UAT` / `PRO` build configuration in Xcode.

* **`branch`**: Target branch to pull and push.

---
### beta_filemanager
```
fastlane beta_filemanager
```
Builds an Ad Hoc IPA and upload to File Manager

#### Example:

```
bundle exec fastlane beta_filemanager code:default env:PRO branch:develop
```

#### Options

* **`code`**: Project Code for any lane options config in config.json.

* **`env`**: Enviroment: `DEV` / `UAT` / `PRO` build configuration in Xcode.

* **`branch`**: Target branch to pull and push.

---
### release_filemanager
```
fastlane release_filemanager
```
Builds an App Store IPA and upload to File Manager

#### Example:

```
bundle exec fastlane release_filemanager code:default env:PRO branch:develop
```

#### Options

* **`code`**: Project Code for any lane options config in config.json.

* **`env`**: Enviroment: `DEV` / `UAT` / `PRO` build configuration in Xcode.

* **`branch`**: Target branch to pull and push.

---
### release_appstore
```
fastlane release_appstore
```
Builds an App Store IPA and upload to App Store

#### Example:

```
bundle exec fastlane release_appstore code:default env:PRO branch:develop
```

#### Options

* **`code`**: Project Code for any lane options config in config.json.

* **`env`**: Enviroment: `DEV` / `UAT` / `PRO` build configuration in Xcode.

* **`branch`**: Target branch to pull and push.

---
### test
```
fastlane test
```
Testing area

#### Example:

```
bundle exec fastlane test <option>:<value> 
```

#### Options

* Any options

---

----

This README.md is auto-generated and will be re-generated every time [fastlane](https://fastlane.tools) is run.
More information about fastlane can be found on [fastlane.tools](https://fastlane.tools).
The documentation of fastlane can be found on [docs.fastlane.tools](https://docs.fastlane.tools).
