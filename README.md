# metacare directfhir - Liberate Your data
A Simple Express-NodeJS Personal [FHIR Server](https://www.hl7.org/fhir/) that reads and writes data to a local [gitFHIR](https://github.com/fhirfly/gitfhir) filesystem.  This Personal FHIR Server is meant for deployment to a Pesonal Computer or a small server.  The server supports CREATE READ UPDATE and DELETE of all 152 FHIR resources.  ```yarn install```
```yarn run start```; The FHIR resource files in your gitfhir directory will be available via fhir (http) on port 3000.

## Building directfhir executable (Requires NodeJS >=20)
- with NVM, use
```nvm use 20.11.1```
-or just Install NodeJS

### Load the build config (all platforms)
- Load the sea config and create a blob
```node --experimental-sea-config sea-config.json```


### Linux
-  create a shell executable called directfhir with just the node command
```cp $(command -v node) directfhir```
- inject the blob into the server
```npx postject server NODE_SEA_BLOB sea-prep.blob     --sentinel-fuse NODE_SEA_FUSE_fce680ab2cc467b6e072b8b5df1996b2```
- Now you can run the server
```$ ./directfhir```

### Windows 
-  create a shell executable called directfhir with just the node command
```Copy-Item -Path (Get-Command node).Source -Destination directfhir.exe```
- inject the blob into the server
```npx postject directfhir.exe NODE_SEA_BLOB sea-prep.blob --sentinel-fuse NODE_SEA_FUSE_fce680ab2cc467b6e072b8b5df1996b2 Copy-Item -Path (Get-Command node).Source```
- Now you can run the server
```C:\Program Files\Metacare\directfhir.exe```

### Mac
- Load the sea config and create a blob
```node --experimental-sea-config sea-config.json```
-  create a shell executable called directfhir with just the node command
```cp $(command -v node) directfhir```
-  remove the signature
```codesign --remove-signature directfhir```
- inject the blob into the server
```npx postject directfhir NODE_SEA_BLOB sea-prep.blob --sentinel-fuse NODE_SEA_FUSE_fce680ab2cc467b6e072b8b5df1996b2 --macho-segment-name NODE_SEA[]```
- Now you cn run the server
```$ ./directfhir```






