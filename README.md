# docker-files
Commonly used docker files:

**mwallraf/python-db:<version>**
A dockerfile that is based on the standard `python:alpine` image and that includes the necessary libraries to connect to multiple databases: mysql, oracle, postgres, mongo

## Usage

Build an image:

```bash
make build-python-db
```

Exec the image:

```bash
make run-python-db
```

Push the image:

```bash
make push-python-db
```