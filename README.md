# arborist-action

GitHub Action to run [`arborist`](https://github.com/jhoblitt/arborist/).

![A Tidy Repo Forest](./images/4193380335_A_lush_forest_of_tall_trees_with_branches_being_cu_xl-beta-v2-2-2.png)

Prune orphaned branches from a forest of repos.

## Usage

### Config File

See [arborist#config-file](https://github.com/jhoblitt/arborist#config-file)
for documentation on the `.arborist.yaml` configuration file.

### Example Workflow

```yaml
---
name: Arborist

"on":
  - create
  - delete
  - pull_request
  - push

permissions:
  contents: write

jobs:
  arborist:
    name: Prune dead branches
    runs-on: ubuntu-latest

    steps:
      - name: Checkout
        uses: actions/checkout@v3

      - name: run arborist
        uses: jhoblitt/arborist-action@v1
        with:
          repo-token: "${{ secrets.GITHUB_TOKEN }}"
```

### Inputs

| Name       | Type   | Required | Description      |
| -          | -      | -        | -                |
| repo-token | String | Yes      | GitHub API Token |

### GitHub API Tokens

Note that the `${{ secrets.GITHUB_TOKEN }}` API token is limited in scope to
the local repository.  If `arborist` needs to be able to prune branches from
remote repositories, then a "Personal Access Token" will need to be created
with the appropriate scope(s).
