# Repository Profiler Action
> An action to add context to your pull requests by gathering git commit history 🚀

## Usage

Add to your repository:

```yaml
on:
  repository_dispatch:
    types: repo_profile_execution
jobs:
  profile:
    runs-on: ubuntu-22.04
    steps:
      - name: Checkout
        uses: actions/checkout@v3
        with:
          fetch-depth: 0
      - name: Repository Profiler
        uses: Alokit-Innovations/repo-profiler@v0
```
