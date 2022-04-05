# Building the Mudlet Packages

Run create_release.sh in the repo root directory. It will build the following packages:

* released/arm_gui
* released/arm_prompt
* released/generic_mapper

The files thus created under released/ should be committed to the repo prior to each release. Ideally we'd keep only the the source code under source control, not the release products...but it works!