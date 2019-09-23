# Import role to ansible-galaxy

Import role to ansible-galaxy action.

## Usage

```yaml
name: Import role

on: push

jobs:
  import:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v1
      - uses: youyo/import-role-to-ansible-galaxy@v1
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
          #GITHUB_TOKEN: ${{ secrets.MANUAL_CREATED_GITHUB_TOKEN }}
```

## Environment

| Key | Value | Suggested Type | Required |
| ------------- | ------------- | ------------- | ------------- |
| `GITHUB_TOKEN` | Your GitHub Token. This is contained your workflow. If you use to Organizations, create a manual token. [More info here.](https://help.github.com/en/articles/virtual-environments-for-github-actions#github_token-secret) | `secrets` | **Yes** |

## License

[MIT](LICENSE)
