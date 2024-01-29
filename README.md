一个基于filecoin lotus优化的一个远程c2的实现，仅需要改动一小部分代码，就能实现c2远端执行。

## 合并lotus-remotec2到自己的优化版本

默认master分支是dev分支，是编写说明文档的分之，建议使用发行版本对应的分支。

仅需要合并名为"_**实现remotec2,需要合并的代码**_"的提交

## Building & Documentation

> Note: The default `master` branch is the dev branch, please use with caution. For the latest stable version, checkout the most recent [`Latest release`](https://github.com/filecoin-project/lotus/releases).
 
For complete instructions on how to build, install and setup lotus, please visit [https://lotus.filecoin.io](https://lotus.filecoin.io/lotus/install/prerequisites/#supported-platforms). Basic build instructions can be found further down in this readme.

## Reporting a Vulnerability

Please send an email to security@filecoin.org. See our [security policy](SECURITY.md) for more details.

## Related packages

These repos are independent and reusable modules, but are tightly integrated into Lotus to make up a fully featured Filecoin implementation:

- [go-fil-markets](https://github.com/filecoin-project/go-fil-markets) which has its own [kanban work tracker available here](https://app.zenhub.com/workspaces/markets-shared-components-5daa144a7046a60001c6e253/board)
- [builtin-actors](https://github.com/filecoin-project/builtin-actors)

## Contribute

Lotus is a universally open project and welcomes contributions of all kinds: code, docs, and more. However, before making a contribution, we ask you to heed these recommendations:

1. If the proposal entails a protocol change, please first submit a [Filecoin Improvement Proposal](https://github.com/filecoin-project/FIPs).
2. If the change is complex and requires prior discussion, [open an issue](github.com/filecoin-project/lotus/issues) or a [discussion](https://github.com/filecoin-project/lotus/discussions) to request feedback before you start working on a pull request. This is to avoid disappointment and sunk costs, in case the change is not actually needed or accepted.
3. Please refrain from submitting PRs to adapt existing code to subjective preferences. The changeset should contain functional or technical improvements/enhancements, bug fixes, new features, or some other clear material contribution. Simple stylistic changes are likely to be rejected in order to reduce code churn.

When implementing a change:

1. Adhere to the standard Go formatting guidelines, e.g. [Effective Go](https://golang.org/doc/effective_go.html). Run `go fmt`.
2. Stick to the idioms and patterns used in the codebase. Familiar-looking code has a higher chance of being accepted than eerie code. Pay attention to commonly used variable and parameter names, avoidance of naked returns, error handling patterns, etc.
3. Comments: follow the advice on the [Commentary](https://golang.org/doc/effective_go.html#commentary) section of Effective Go.
4. Minimize code churn. Modify only what is strictly necessary. Well-encapsulated changesets will get a quicker response from maintainers.
5. Lint your code with [`golangci-lint`](https://golangci-lint.run) (CI will reject your PR if unlinted).
6. Add tests.
7. Title the PR in a meaningful way and describe the rationale and the thought process in the PR description.
8. Write clean, thoughtful, and detailed [commit messages](https://chris.beams.io/posts/git-commit/). This is even more important than the PR description, because commit messages are stored _inside_ the Git history. One good rule is: if you are happy posting the commit message as the PR description, then it's a good commit message.

## Basic Build Instructions
**System-specific Software Dependencies**:

Building Lotus requires some system dependencies, usually provided by your distribution.

Ubuntu/Debian:
```
sudo apt install mesa-opencl-icd ocl-icd-opencl-dev gcc git bzr jq pkg-config curl clang build-essential hwloc libhwloc-dev wget -y && sudo apt upgrade -y
```

Fedora:
```
sudo dnf -y install gcc make git bzr jq pkgconfig mesa-libOpenCL mesa-libOpenCL-devel opencl-headers ocl-icd ocl-icd-devel clang llvm wget hwloc hwloc-devel
```

For other distributions you can find the required dependencies [here.](https://lotus.filecoin.io/lotus/install/prerequisites/#supported-platforms) For instructions specific to macOS, you can find them [here.](https://lotus.filecoin.io/lotus/install/macos/)

#### Go

To build Lotus, you need a working installation of [Go 1.19.12 or higher](https://golang.org/dl/):

```bash
wget -c https://golang.org/dl/go1.19.12.linux-amd64.tar.gz -O - | sudo tar -xz -C /usr/local
```

**TIP:**
You'll need to add `/usr/local/go/bin` to your path. For most Linux distributions you can run something like:

## 接入使用
```shell
export C2_REMOTE_TOKEN=您的对应矿工的token
export C2_ADVERTISE_ADDRESS=您的C2网关ip:port
