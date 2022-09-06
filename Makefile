.PHONY: install
install:
	kubectl create -f manifests/setup
	until kubectl get servicemonitors --all-namespaces ; do date; sleep 1; echo ""; done
	kubectl create -f manifests/

.PHONY: uninstall
uninstall:
	kubectl delete --ignore-not-found=true -f manifests/ -f manifests/setup
