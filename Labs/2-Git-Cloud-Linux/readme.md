
# These are Typical Tasks you may have as an Engineer. Let's work through them Together.

In the subfolders you will find the instructions for the labs.




## Task 1 - Find which processes are listening for network traffic on your system

Let's Install `net-tools` package which gives us access to the netstat command, which shows us network connections.

```
sudo apt update
sudo apt install net-tools
```

Let's run `netstat` to see what connections are open.

```
sudo netstat -tulnp
```

We can also use another tool known as `lsof` to gather this information


```
sudo lsof -i
```