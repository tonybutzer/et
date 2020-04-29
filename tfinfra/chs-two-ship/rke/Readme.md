# References

https://rancher.com/docs/rke/latest/en/installation/

## it’s entirely independent of the operating system and platform

1. Rancher Kubernetes Engine (RKE) is a CNCF-certified Kubernetes distribution that 
2. runs entirely within Docker containers. 
3. It works on bare-metal and virtualized servers. 
4. With RKE, the installation and operation of Kubernetes is both simplified and easily automated, 
5. and it’s entirely independent of the operating system and platform you’re running.


## WIP

1. Can I start rke k8s on a single node

```
nodes:
    - address: 1.2.3.4
      user: ubuntu
      role:
        - controlplane
        - etcd
        - worker
```
