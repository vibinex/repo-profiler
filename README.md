# Repository Profiler Action
> An action to create a metric-based profile from your repository metadata 🚀

## Usage

Add to your repository:

```yaml
on: [push]
jobs:
  profile:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v3
        with:
          fetch-depth: 0
      - name: Repository Profiler
        uses: Alokit-Innovations/repo-profiler@v0
```