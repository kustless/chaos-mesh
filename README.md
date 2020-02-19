# chaos-mesh

## Build

```sh
kustomize build github.com/kustless/chaos-mesh
```

## Apply

```sh
kubectl create ns chaos-mesh
kustomize build github.com/kustless/chaos-mesh | kubectl apply -f -
```

## Delete

```sh
kustomize build github.com/kustless/chaos-mesh | kubectl delete -f -
```
