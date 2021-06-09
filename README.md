![](https://upload.wikimedia.org/wikipedia/commons/6/67/Kubernetes_logo.svg)
____
This project setup a Kubernetes cluster. Services include an nginx, an FTPS, a Wordpress and a PHPMyAdmin working with a MySQL database, and a Grafana linked to an InfluxDB database for monitoring. The script builds the custom Docker images for each of those, before deploying and exposing them all with custom yaml files.

 > CMD build:<br>
 > `$> sh setup.sh
