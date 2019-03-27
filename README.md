# BONSAI-ontology-RDF-framework
Recommendations and discussions on ontology and RDF framework development


Discussions and tools regarding the development of a minimal ontology for BONSAI.

This repo has been created to create a common platform for all of the discussions (moving away from a chain of messages/ emails).

The repo currently contains:

1. The current RDF schema proposed
2. Summary of the discussions leading to ontology development


The actual ontology is updated in the sister repository: (ontology)[https://github.com/BONSAMURAIS/ontology]

Current work is in the `core` ontology.

Two Bonsai namespace URI examples are:

```
rdf.bonsai.uno/exiobase3_3_17/activities/A_ALUM
rdf.bonsai.uno/exiobase3_3_17/flowobjects/C_ADDC
```

Which follows the structure:

```[generic]/[data source]/[category]/[code]```

## Structure

```bash
    .
    │   #  This directory
    ├── README.md
    │
    ├── examples
    │   └── # example in TTL or RDF/XML format of data following the schema
    ├── material
    │   └── # Powerpoints, diagrams, figures ...
    └── minutes
        └── # minutes from meetings and calls
```
