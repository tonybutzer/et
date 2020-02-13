## Stopping TLJH

### Services


```
sudo systemctl disable jupyterhub.service
sudo systemctl disable traefik.service
sudo netstat -anlp |grep 80
sudo systemctl stop traefik.service
sudo systemctl stop jupyterhub.service

```

