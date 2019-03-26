# How To : convert RDF / TTL to other formats

We run RDF I/O technology (RIOT) from Jena

### Set up

Require only Docker installation


### Run it
From command line, use :

#### TTL to RDF/XML
    docker run -it --rm -v `pwd`:/rdf stain/jena riot -out RDF/XML "path/to/file.ttl" > "path/to/file.rdf"

#### TTL to JSON-LD
    docker run -it --rm -v `pwd`:/rdf stain/jena riot -out JSONLD "path/to/file.ttl" > "path/to/file.json"


### list of all formats supported

 - Turtle
 - RDF/XML
 - N-Triples
 - JSON-LD
 - RDF/JSON
 - TriG
 - N-Quads
 - TriX
 - RDF Binary

Copied from [Jena riot documentation](This is from: https://jena.apache.org/documentation/io/)

###  Batch File convert

We provide a scripts that will automatically convert all `*.ttl` files in the `examples` directory.

From the root of the repository run `scripts/convert_examples.sh`
