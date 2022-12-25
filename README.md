# ansible_docker


### Tüm hostları listele

```shell
ansible all --list-hosts
```


```shell
ansible webservers -m service -a "name=httpd state=restarted"
ansible 1.1.1.4 -m setup -a "filter=ansible_distribution"

ansible.builtin.setup:
    filter:
      - 'ansible_distribution'
      - 'ansible_machine_id'
      - 'ansible_*_mb'
```



```shell

```

```shell

```

