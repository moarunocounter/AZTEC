## ⚡ Quickstart (1-Liner Setup)

Langsung tempel perintah ini ke terminal lo:

```bash
curl -sSL -o aztec.sh https://raw.githubusercontent.com/moarunocounter/AZTEC/main/aztec.sh && chmod +x aztec.sh && ./aztec.sh
```


You can use this command to check logs of your node
```
sudo docker logs -f --tail 100 $(docker ps -q --filter ancestor=aztecprotocol/aztec:latest | head -n 1)
```
You can stop this node using this command
```
sudo docker stop $(docker ps -q --filter ancestor=aztecprotocol/aztec:latest | head -n 1)
```
