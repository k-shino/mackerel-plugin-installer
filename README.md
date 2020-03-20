# mackerel-plugin-installer

## How to use

```
docker build . -t mackerel-plugin
mkdir $HOME/mackerel
docker run -v $HOME/mackerel:/mackerel makerel-plugin:latest
```
