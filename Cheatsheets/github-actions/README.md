# Cheat Sheet for GitHub Actions<img align="left" width="30px" alt="Terminal" src="../images/icons/githubactions.png" style="padding-right:10px;" /> 

**Triggering Workflows**
| Action | Description | Examples |
| --- | --- | --- |
| `on` | Triggers workflow execution at a certain event | `on: push`, `on: pull_request`, `on: pull_request_review`, `on: pull_request_target` |
| `on: branches` | Triggers workflow execution when a branch or tag is created or deleted | `on: branches: [master, development]` |
| `on: schedule` | Triggers workflow execution at a specific time or interval | `on: schedule: cron` |
| `on: workflow_dispatch` | Triggers workflow execution manually | `on: workflow_dispatch` |
| `on: release` | Triggers workflow execution when a release is created | `on: release` |
| `on: issues` | Triggers workflow execution when an issue is opened, closed, or labeled | `on: issues` |
| `on: project` | Triggers workflow execution when a project card is created, moved, or deleted | `on: project` | 
| `on: org_block` | Triggers workflow execution when an organization blocks or unblocks a user | `on: org_block` |

**Configuring Workflows**
| Action | Description | Examples |
| --- | --- | --- |
| `name` | Assigns a name to the workflow | `name: CI` |
| `jobs` | Defines the jobs that will be part of the workflow | `jobs: build`, `jobs: deploy`, `jobs: test` |

**Defining Jobs**
| Action | Description | Examples |
| --- | --- | --- |
| `runs-on` | Specifies the operating system for the job | `runs-on: ubuntu-latest`, `runs-on: windows-latest` |
| `name` | Assigns a name to the job | `name: build` |
| `steps` | Defines the steps that will be part of the job | `steps: checkout`, `steps: build`, `steps: deploy` |
| `uses` | Specifies the action to be used for the job | `uses: actions/checkout@v2`, `uses: actions/setup-node@v1` |
| `env` | Sets environment variables for the job | `env: FOO=bar`, `env: BAZ=qux` |
| `run` | Specifies the command to be run for the job | `run: echo "Hello World"` |

**Configuring Steps**
| Action | Description | Examples |
| --- | --- | --- |
| `with` | Specifies the inputs to an action | `with: repository: owner/repo` |
| `if` | Specifies a condition to check before running a step | `if: github.event_name == 'pull_request'` |
| `continue-on-error` | Specifies whether to continue executing steps if an error is encountered | `continue-on-error: true` 
| `matrix` | Allows a job to be run with multiple values for a given input | `matrix: os: [ubuntu-latest, windows-latest]` |
| `needs` | Specifies that a job depends on another job | `needs: job-name` |
| `outputs` | Specifies the outputs for a job | `outputs: my-value: ${{ steps.step-name.outputs.value }}` |
| `retry` | Specifies the number of times a job should be retried | `retry: 3` |
| `strategy` | Specifies the strategy to be used when running a job | `strategy: fail-fast` |
| `timeout-minutes` | Specifies the maximum number of minutes a job can run | `timeout-minutes: 5` |
| `shell` | Specifies the shell to be used when running a step | `shell: bash` |
| `working-directory` | Specifies the working directory for a step | `working-directory: my-project` |