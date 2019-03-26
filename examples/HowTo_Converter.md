# How To : convert RDF / TTL to other formats

We run a python script from the command line, based on https://github.com/WimPessemier/rdfconvert  

### Install
Install rdflib with pip install rdflib 

### Run it
From command line, use : 

#### TTL to XML
python rdfconvert.py --from ttl --to xml -f -o ouput/ input/


#### TTL to JSON-LD 
python rdfconvert.py --from ttl --to xml -f -o ouput/ input/


###  Single file convert


-f => overwrite results
-R => recursive lookup in input folder, structured maintained in output folder


### list of all formats supported
