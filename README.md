# Data Integration Overview

This branch of the repository describes the workflow of integrating new datasets with the
BONSAI Database. The document includes an overview of the integration process, as well as a detailed description and examples of the various steps.

### Integration Overview
An overview of the integration process can be seen in Figure 1. The figure starts
with the request of a Namespace for the new dataset, and ends with triples from
the new dataset being uploaded to the BONSAI Virtuoso Triple Store. The
following steps are taken:

1. Request Namespace
2. Request Time and Unit URLs
3. Request integration of dataset through correspondence tables
4. Publish code for triple extraction
5. BONSAI approves namespace
6. BONSAI downloads dataset
7. BONSAI runs code for triple extraction
8. BONSAI commits triples to main /RDF repository
9. BONSAI runs upload script

###Integration flow steps
Details of the different integration steps are here explained, with examples when
appropriate.
####Figure 1: Overview of the BONSAI data integration workflow
![alt text](https://github.com/BONSAMURAIS/BONSAI-ontology-RDF-framework/blob/main/examples/integration-workflow.png "Integration workflow")

####(1) Request Namespace. 
A pull request to BOSNAI https://github.com/BONSAMURAIS, for a new repository to hold extraction code 
for the new dataset, should be made in this step. 
The name of the repository should reflect the namespace which should be used for the new data. 
As an example, the integration of the Yale Stocks and Flows Database (YSTAFDB) could have a 
pull request for a repository named YSTAFDB, resulting in a repository located at 
https://github.com/BONSAMURAIS/ystafdb. 
This repository will later host the code for the extraction of triples from the new dataset. 
Since BONSAI is an open-source organization, all code must be publicly available, this includes 
code for transformation and extraction of triples for the various datasets incorporated into BONSAI.

####(2) Request Time and UNIT URLs. 
From each new dataset, triples should be extracted according to the BONSAI ontology, as seen in 
the /ontology repository https://github.com/BONSAMURAIS/ontology, and structured given the structure 
of the /RDF repository https://github.com/BONSAMURAIS/RDF.
Triple graph files for a new dataset should conform to this structure. An example structure of the 
extraction of triple graphs from the ystafdb dataset can be seen in Figure 2. 
Activity Types, Flow Objects, and Locations, along with foaf, prov and flow information differ a 
lot between datasets, but there should not be much difference between the Units and Times used 
between datasets. 
Therefore one should make a pull request to /arborist (if necessary), extending the time and unit 
extraction files to incorporate new units and times needed for the incorporation of new datasets. 
An example of such a pull request, for the incorporation of the ystafdb dataset can be seen 
here https://github.com/BONSAMURAIS/arborist/commit/8f808124e824502ccce05e1c244ead25dcfeea3e. 
The example shows the extension of the file arborist/time uris.py where missing years between 
1800 and 2100, as well as a few time-periods, are added. When adding new times, it is important to add a reference to wiki data with the entity representing the given year. 
Furthermore the file arborist/unit uris.py is extended with the units megagram, gigagram, 
teragram and gigabecquerel.
When adding units, it is important to make use of the om2 ontology for consistency with other units. 
As a side note, it does not matter which extension the triples are written in. As an example 
.nt files could be used just as well as .ttl files.

####(3) Request integration of dataset through correspondence tables.
Data integration is a crucial step for accessing the full potential of Semantic Web Technologies, 
to enable answering questions which one dataset could not answer by itself, and to get more precise 
answers to existing questions. 
The BONSAI repository /correspondence tables https://github.com/BONSAMURAIS/correspondence_tables 
contains correspondence tables for the integration of new datasets with the BONSAI classification. 
When integrating a new dataset, correspondence tables should be made between instances of Activity 
Types, Flow Objects and Locations from the new dataset, and the BONSAI classification. 
The BONSAI organization has experts in LCSA and can be of help in the creation of these. 
This step should result in a pull request /correspondence tables repository, with correspondence 
tables for the new dataset.

####Figure 2: File structure of YSTAFDB ttl files
```bash
    output
    ├── activitytype
    │   └──ystafdb
    │      └──ystafdb.ttl
    ├── flowobject
    │   └──ystafdb
    │      └──ystafdb.ttl
    ├── location
    │   └──ystafdb
    │      └──ystafdb.ttl
    ├── foaf
    │   └──ystafdb
    │      └──ystafdb.ttl
    ├── prov
    │   └──ystafdb
    │      └──ystafdb.ttl
    └── flow
        └──ystafdb
           └──ystafdb.ttl
```

####(4) Publish code for triple extraction. 
When steps (1-3) have been approved by the BONSAI organization, a pull request with the code for 
extracting the triple graph file structure from the new dataset should be made to the repository 
requested in step (1). 
The rest of the steps (5-9) are done by the BONSAI organization.

####(5) BONSAI approves namespace pull request. 
The BONSAI organization will approve the pull request made in step (4).

####(6) BONSAI downloads dataset. 
Since we would like to omit to have the original datasets on the git repository, a member of the 
BONSAI organization now has to clone the repository from step (1), and locally download the new dataset.

####(7) BONSAI runs code for triple extraction. 
With the repository cloned as in step (5) and the new dataset downloaded in step (6), the code for 
extracting the RDF graph structure for the new dataset will now be run. 
This results in the output structure as illustrated in Figure 2, where ystafdb will be replaced by 
the namespace of the new dataset. 
The files should of cause be checked for consistent usage of the newly reserved namespace.

####(8) BONSAI commits triples to main /RDF repository. 
If created properly, the newly created file structure should be committed to the main /RDF repository. 
Since we reserve a new namespace already in step (1), each new dataset will have a unique namespace, 
which should alleviate any problems which could happen during the merge of the new file structure 
and the /RDF file structure.

####(9) BONSAI runs upload script. 
For final inclusion of the new dataset into the BONSAI database, the upload script from repository 
/importer https://github.com/BONSAMURAIS/importer will be run, which uploads the new files to the 
Virtuoso RDF Store, from where they can be queried using the SPARQL endpoint found at 
http://odas.aau.dk/.
