# Prometheus Operator Playground

Minimal Grafana-free Prometheus Operator setup.

## Resources

- [Prometheus Operator docs](https://prometheus-operator.dev/docs/prologue/quick-start/)


## How to use it

```sh
minikube start
make install
kubectl --namespace monitoring port-forward svc/prometheus-k8s 9090
```
