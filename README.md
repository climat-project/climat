# Climat

Simple and smart way to generate complex aliases to Command Line Interface tools.

- ✍️ Write complex CLI interfaces in a declarative style.
- 🗄️ Combine many inconsistent CLI tools under a single consistent one.
- 🥷 Or just rewrite the CLI interface of a tool for a faster and more user-tailored use.

## Installation

```shell
npm i climat
```

## Usage

Write your alias json in ```toolchain.json```
```json
{
  "name": "sgit",
  "children": [
    {
      "name": "acp",
      "parameters": [
        "opt:flag:ammend:a"
      ],
      "action": "git add . ; git commit $(ammend:--ammend) ; git push $(ammend:--force)"
    },
    {
      "name": "cf",
      "parameters": [
        "req:arg:branch",
        "opt:flag:force:f"
      ],
      "action": "git checkout feature/$(branch) $(force:--force)"
    }
  ]
}
```
Installing this via ```climat install toolchain.json``` will generate

```shell
sgit acp             # Will add all files to index, commit and push
sgit acp --ammend    # Will add all files to index, ammend last commit and push force
sgit acp -a          # Can use shorthands for parameters
sgit cf myFeature    # git checkout feature/myFeature
```