# BONSAI-ontology-RDF-framework
Recommendations and discussions on ontology and RDF framework development


Discussions and tools regarding the development of a minimal ontology for BONSAI.

This repo has been created to create a common platform for all of the discussions.

The repo currently contains:

1. The documentation of current RDF schema proposed
2. Summary of the discussions leading to ontology development


The actual ontology is updated in the sister repository: (ontology)[https://github.com/BONSAMURAIS/ontology]

Current work is in the `core` ontology.

## RDF Schema Graph and the Name spaces

Two Bonsai namespace URI examples are:

```
<http://rdf.bonsai.uno/activitytype/exiobase3_3_17/A_ALUM>
<http://rdf.bonsai.uno/flowobject/exiobase3_3_17/C_ADDC>
```

Which follows the structure:

```[generic]/[ontologyClassName]/[dataSource]/[code]```

We use singular (flowobject not flowobjects).


Currently the following named graphs (and namespaces) are defined

- Bonsai rdf schema to define  activity, flow, flow objects

   ```
   <http://ontology.bonsai.uno/core#>
   ```

- URI for Time intervals

   ```
   <http://rdf.bonsai.uno/time/>
   ```

- Exiobase 3.3.17 URI to define the activity type instances

   ```
   <http://rdf.bonsai.uno/activitytype/exiobase3_3_17/>
   ```

- Exiobase 3.3.17 URI to define the flow object instances

  ```
  <http://rdf.bonsai.uno/flowobject/exiobase3_3_17/>
  ```

- Exiobase 3.3.17 URI to define unit of measures not defined in the OM ontology

  ```
  <http://rdf.bonsai.uno/unit/exiobase3_3_17/>
  ```

- Exiobase 3.3.17 URI to define the location instances that are not defined in GeoNames or other ontologies

  ```
  <http://rdf.bonsai.uno/location/exiobase3_3_17/>
  ```


## Directory Structure

```bash
    .
    │   #  This directory
    ├── README.md
    │
    ├── examples
    │   └── # example in TTL or RDF/XML format of data following the schema
    ├── material
    │   └── # Powerpoints, diagrams, figures ...
    ├── scripts
    │   └── # utility scripts
    │       │
    │       └── convert_examples.sh # checks the examples
    │                               # and converts them in all format supported
    └── minutes
        └── # minutes from meetings and calls
```
