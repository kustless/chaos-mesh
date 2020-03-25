build:
	kustomize build

update:
	go-getter git::https://github.com/pingcap/chaos-mesh.git//manifests/ manifests/
	go-getter git::https://github.com/pingcap/chaos-mesh.git//helm/chaos-mesh/ helm/chaos-mesh/
	helm convert --force --destination=helm-convert helm/chaos-mesh
