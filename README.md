# pentext-docker

1] Build the pentext-docker image:
```
docker build -t pentext .
```


2] Open root dir of pentest project and run the following command:
```
docker run -v $PWD:/report --rm pentext /usr/local/build_report.sh && $PWD/target/latest_report.pdf

```

3] Report can be found in the target directory of the pentest project.
