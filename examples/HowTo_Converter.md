# How To : convert RDF / TTL to other formats with python

We run a python script from the command line, based on https://github.com/WimPessemier/rdfconvert  


### Set up
From command line install rdflib
`pip install rdflib`

make sure you have the file `rdfconvert.py` (available [here](https://github.com/WimPessemier/rdfconvert )) in your working directory

Create an `input` folder where you have all your files to be converted and `output`folder where you want the converted files to be.

### Run it
From command line, use : 

#### TTL to XML
python rdfconvert.py --from ttl --to xml -f -o ouput/ input/

#### TTL to JSON-LD 
python rdfconvert.py --from ttl --to xml -f -o ouput/ input/

-f => overwrite results

-R => recursive lookup in input folder, structured maintained in output folder

### list of all formats supported

See [here](https://github.com/WimPessemier/rdfconvert)

###  Single file convert
python rdfconvert.py --from ttl --to xml -f -o ouput/ input/filename.extension
