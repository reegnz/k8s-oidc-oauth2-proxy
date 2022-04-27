.PHONY: all
all: oauth2-proxy.yaml

oauth2-proxy.yaml:
	helm repo add oauth2-proxy https://oauth2-proxy.github.io/manifests
	helm template oauth2-proxy oauth2-proxy/oauth2-proxy > $@
