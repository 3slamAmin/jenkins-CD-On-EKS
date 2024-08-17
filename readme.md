# Helm Chart For Simple NodeJS App

This project provides the helm chart for my [Github CICD](https://github.com/3slamAmin/Github-CICD) Project, used in the deployment phase for EKS.
## The Following are the parameter

The following table lists the configurable parameters of the template Helm chart and their default values.

| Parameter            | Description       | Default                  |
| -------------------- | ----------------- | ------------------------ |
| `image.repository`   | image repository  | `<namespace>/nodeserver` |
| `image.tag`          | Image tag         | `latest`                 |
| `image.pullPolicy`   | Image pull policy | `Always`                 |
| `service.type`       | the service used  | `NodePort`               |
| `service.port`       | port              | `8080`                   |
| `service.targetPort` | targetPort        | `8080`                   |

`image pull policy` used to be `ifNotPresent`, but I quickly learned that it doesn't update the deployment if a new image is uploaded to ecr.