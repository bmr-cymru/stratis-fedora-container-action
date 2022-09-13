# Stratis CI Workflow Fedora Container Action

- run a workflow step in a Fedora docker container.

## Examples

#### Typical Use Case

```yaml
- name: Checkout 
  uses: actions/checkout@v2 # Required to mount the Github Workspace to a volume 
- uses: addnab/docker-run-action@v3
  with:
    username: ${{ secrets.DOCKER_USERNAME }}
    password: ${{ secrets.DOCKER_PASSWORD }}
    registry: gcr.io
    image: private-image:latest
    options: -v ${{ github.workspace }}:/work -e ABC=123
    run: |
      echo "Running Script"
      /work/run-script
```

