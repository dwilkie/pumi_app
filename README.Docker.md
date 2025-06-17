### Building and running your application

When you're ready, start your application by running:

```bash
docker build -t pumi_app:1.0 .
docker run -p 3000:3000 -e SECRET_KEY_BASE="$SECRET_KEY_BASE" pumi_app:1.0
```

Consult Docker's [getting started](https://docs.docker.com/go/get-started-sharing/)
docs for more detail.
