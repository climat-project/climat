<p align="center">

<img alt="Climat logo" src="https://raw.githubusercontent.com/climat-project/doc-and-design/master/static/img/logo-name-prerelease-tag.svg" width="500px"/>
</p><br/><br/>

# ⚠️ PRE-RELEASE: Some features might not work and everything is subject to change ⚠️

Generate powerful macros for your CLI tools with a simple and smart approach.

- ✍️ Write complex CLI interfaces in a declarative style.
- 🗄️ Combine many inconsistent CLI tools under a single consistent one.
- 🥷 Or just rewrite the CLI interface of a tool for a faster and more user-tailored experience.

## Installation

```sh
npm i climat
```

## Usage

Write your macro in `sgit.cli`

```cli
sgit {
    children [
        acp(amend a?: flag) {
            action "git add . && git commit $(amend:--amend) && git push $(amend:--force)"
        },
        cf(branch: arg, force f: flag) {
            action "git checkout feature/$(branch) $(force:--force)"
        }
    ]
}
```

Installing this via `sudo climat install sgit.cli` will generate

```shell
sgit acp             # Will add all files to index, commit and push
sgit acp --ammend    # Will add all files to index, ammend last commit and push force
sgit acp -a          # Can use shorthands for parameters
sgit cf myFeature    # git checkout feature/myFeature
```

## What does it stand for?

**CLi** **MA**cro **T**ree
