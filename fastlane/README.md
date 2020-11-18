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
or alternatively using `brew install fastlane`

# Available Actions
### get_target_name
```
fastlane get_target_name
```
Gets target name from code

#### Example:

```
bundle exec fastlane get_target_name code:build/default/uat
```

```
bundle exec fastlane get_target_name code:build/default/uat
```

```
bundle exec fastlane get_target_name code:build/default/uat/build_for_uat
```

#### Options

* **`code`**: Project code for any lane options in info.json inside configs / builds. In gitlab, we use branch name for this parameter.

---
### get_env_name
```
fastlane get_env_name
```
Gets env name from code

#### Example:

```
bundle exec fastlane get_env_name code:build/default/uat
```

```
bundle exec fastlane get_env_name code:build/default/uat/build_for_uat
```

#### Options

* **`code`**: Project code for any lane options in info.json inside configs / builds. In gitlab, we use branch name for this parameter.

---
### get_config_info
```
fastlane get_config_info
```
Gets config info from info.json

#### Example:

```
bundle exec fastlane get_config_info code:build/default/uat
```

```
bundle exec fastlane get_config_info code:build/default/uat/build_for_uat
```

```
bundle exec fastlane get_config_info code:build/ABCI
```

#### Options

* **`code`**: Project code for any lane options in info.json inside configs / builds. In gitlab, we use branch name for this parameter.

---
### get_build_info
```
fastlane get_build_info
```
Gets build info from info.json

#### Example:

```
bundle exec fastlane get_build_info code:build/default/uat
```

```
bundle exec fastlane get_build_info code:build/default/uat/build_for_uat
```

```
bundle exec fastlane get_build_info code:build/ABCI
```

#### Options

* **`code`**: Project code for any lane options in info.json inside configs / builds. In gitlab, we use branch name for this parameter.

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
Bumps a build number **`NOT IN USED, since it does not support multiple targets`**

#### Example:

```
bundle exec fastlane bump_build_number code:build/default/uat
```

#### Options

* **`code`**: Project code for any lane options in info.json inside configs / builds. In gitlab, we use branch name for this parameter.

---
### generate_build_name
```
fastlane generate_build_name
```
Generate a build name

#### Example:

```
bundle exec fastlane generate_build_name code:build/default/uat export_method:adhoc
```

#### Options

* **`code`**: Project code for any lane options in info.json inside configs / builds. In gitlab, we use branch name for this parameter.

* **`export_method`**: Export method: `development` / `adhoc` / `appstore` build configuration in Xcode.

* **`ipa_suffix`**: last name component.

---
### build_ipa
```
fastlane build_ipa
```
Builds an IPA

#### Example:

```
bundle exec fastlane build_ipa code:build/default/uat export_method:adhoc
```

#### Options

* **`code`**: Project code for any lane options in info.json inside configs / builds. In gitlab, we use branch name for this parameter.

* **`export_method`**: Export method: `development` / `adhoc` / `appstore` build configuration in Xcode.

---
### upload_appcenter
```
fastlane upload_appcenter
```
Uploads an IPA to App Center

#### Example:

```
bundle exec fastlane upload_appcenter code:build/default/uat
```

#### Options

* **`code`**: Project code for any lane options in info.json inside configs / builds. In gitlab, we use branch name for this parameter.

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
bundle exec fastlane upload_filemanager code:build/default/uat export_method:adhoc
```

#### Options

* **`code`**: Project code for any lane options in info.json inside configs / builds. In gitlab, we use branch name for this parameter.

* **`export_method`**: Export method: `development` / `adhoc` / `appstore` build configuration in Xcode.

---
### upload_appstore
```
fastlane upload_appstore
```
Uploads an IPA to App Store

#### Example:

```
bundle exec fastlane upload_appstore code:build/default/uat export_method:appstore
```

#### Options

* **`code`**: Project code for any lane options in info.json inside configs / builds. In gitlab, we use branch name for this parameter.

* **`export_method`**: Export method: `development` / `adhoc` / `appstore` build configuration in Xcode.

---
### git_checkout
```
fastlane git_checkout
```
Fetch remote and checkout out target branch **`NOT IN USED, since Gitlab supported`**

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
Commit bump build number message push to remote **`NOT IN USED, since it change create too many commits`**

#### Example:

```
bundle exec fastlane git_commit_build code:build/default/uat export_method:adhoc branch:develop
```

#### Options

* **`code`**: Project code for any lane options in info.json inside configs / builds. In gitlab, we use branch name for this parameter.

* **`branch`**: Target branch to push.

---
### beta_appcenter
```
fastlane beta_appcenter
```
Builds an Ad Hoc IPA and upload to App Center

#### Example:

```
bundle exec fastlane beta_appcenter code:build/default/uat branch:develop
```

#### Options

* **`code`**: Project code for any lane options in info.json inside configs / builds. In gitlab, we use branch name for this parameter.

* **`branch`**: Target branch to pull and push.

---
### beta_filemanager
```
fastlane beta_filemanager
```
Builds an Ad Hoc IPA and upload to File Manager

#### Example:

```
bundle exec fastlane beta_filemanager code:build/default/uat branch:develop
```

#### Options

* **`code`**: Project code for any lane options in info.json inside configs / builds. In gitlab, we use branch name for this parameter.

* **`branch`**: Target branch to pull and push.

---
### release_filemanager
```
fastlane release_filemanager
```
Builds an App Store IPA and upload to File Manager

#### Example:

```
bundle exec fastlane release_filemanager code:build/default/uat branch:develop
```

#### Options

* **`code`**: Project code for any lane options in info.json inside configs / builds. In gitlab, we use branch name for this parameter.

* **`branch`**: Target branch to pull and push.

---
### release_appstore
```
fastlane release_appstore
```
Builds an App Store IPA and upload to App Store

#### Example:

```
bundle exec fastlane release_appstore code:build/default/uat branch:develop
```

#### Options

* **`code`**: Project code for any lane options in info.json inside configs / builds. In gitlab, we use branch name for this parameter.

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
