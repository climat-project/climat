<p align="center">
<img alt="Climat logo" src="https://raw.githubusercontent.com/climat-project/doc-and-design/master/static/img/logo-name.svg" width="500px"/>
</p><br/><br/>
Simple and smart way to generate complex aliases to Command Line Interface tools.

- ✍️ Write complex CLI interfaces in a declarative style.
- 🗄️ Combine many inconsistent CLI tools under a single consistent one.
- 🥷 Or just rewrite the CLI interface of a tool for a faster and more user-tailored use.

## Installation

```shell
npm i climat
```

## Usage

Write your alias in `sgit.cli`

```cli
sgit {
    children [
        acp(ammend a?: flag) {
            action "git add . ; git commit $(ammend:--ammend) ; git push $(ammend:--force)"
        },
        cf(branch: arg, force f: flag) {
            action "git checkout feature/$(branch) $(force:--force)"
        }
    ]
}
```

Installing this via `climat install sgit.cli`, then restarting bash will generate

```shell
sgit acp             # Will add all files to index, commit and push
sgit acp --ammend    # Will add all files to index, ammend last commit and push force
sgit acp -a          # Can use shorthands for parameters
sgit cf myFeature    # git checkout feature/myFeature
```
