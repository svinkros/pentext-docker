# pentext-docker

1] Build the pentext-docker image:
```
docker build -t pentext .
```


2] Open root dir of pentest project and run the following command to create the report:
```
docker run -v $PWD:/report --rm pentext /usr/local/build_report.sh

```

3] Report can be found in the target directory of the pentest project.
```
e.g. open it with $PWD/target/latest_report.pdf
```
