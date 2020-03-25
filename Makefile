APP:=chaos-mesh

build:
	kustomize build

deploy: kustomize-out.yaml
	kapp deploy --app $(APP) --diff-changes -f $<

delete:
	kapp delete --app $(APP)

kustomize-out.yaml: kustomization.yaml */*.yaml
	kustomize build > $@

update:
	go-getter git::https://github.com/pingcap/chaos-mesh.git//manifests/ manifests/
	go-getter git::https://github.com/pingcap/chaos-mesh.git//helm/chaos-mesh/ helm/chaos-mesh/
	helm convert --force --destination=helm-convert helm/chaos-mesh
