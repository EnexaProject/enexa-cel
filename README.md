# Class Expression Learning module for ENEXA
## Build
```bash
sudo docker build -t drill-train:latest "."
```


## Train
```bash
sudo docker run -v /home/.../Family:/data/input -e KG="/data/input/family-benchmark_rich_background.owl" -v /home/.../embeddings:/data/embedding -e KGE="/data/embedding/ConEx_Family/ConEx_entity_embeddings.csv" -v /home/.../asd:/data/output drill-train:latest
```

