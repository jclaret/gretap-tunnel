# Building and uploading the image to an SNO

```
make build-and-upload-and-load TAG=test4 SERVER=192.168.18.18
```

# Deploying the environment

In order to deploy:
```
make deploy TAG=test4
```

You can tear down the environment with:
```
make undeploy
```

# Deploying the remote endpoint

Copy `deploy-endpoint.sh` to node that can reach the l1cp SR-IOV port and run it:
```
bash -x deploy-endpoint.sh
```
