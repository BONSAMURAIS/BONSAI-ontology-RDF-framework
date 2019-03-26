#!/bin/bash

for f in examples/*.ttl ; do
    echo "Converting $f"
    #docker run -it --rm -v `pwd`:/rdf stain/jena riot -out RDF/XML "$f" > "${f%.ttl}.rdf"
    #docker run -it --rm -v `pwd`:/rdf stain/jena riot -out JSONLD "$f" > "${f%.ttl}.json"
done
#export GENERATED_FILES="WWWWW"
#export GENERATED_FILES=`ls -1 examples/*.ttl`
#GENERATED_FILES=${GENERATED_FILES// /$'\n'}
#echo "You can use \${GENERATED_FILES} in your commit message"
