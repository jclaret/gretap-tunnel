# Building and uploading the image to an SNO

```
make build-and-upload-and-load TAG=test4 SERVER=192.168.18.18
```

# Deploying the environment

In order to deploy:
```
make deploy IMAGE=localhost/reproducer:test4
```

You can tear down the environment with:
```
make undeploy
```
