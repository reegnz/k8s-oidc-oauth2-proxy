# kubernetes OIDC sidecar authentication

Using the /var/run/secrets/kubernetes.io/serviceaccount/token we can 
authenticate pod-2-pod requests.

The authenticated_subjects.csv file contents determine which serviceaccounts
are permitted to access the service.

Accessing the service:

```sh
curl httpbin.default.svc \
  -H 'Authorization: Bearer $(cat /var/run/secrets/kubernetes.io/serviceaccount/token)'
```
