# 14th March  Meeting minutes for Ontology Group and Subgroup RDF 

Attendees- Bo, Elias, Matteo, Søren, Massimo (15 min) and Agneta 

## Meeting agenda

### Detailed discussion on Flows 
* **Should Input and Output be classes or properties?** 
Every flow is either an input or an output in this case it seems obvious to define it as a property. However, Matteo pointed out that each flow object input gets a specific URI and a class on input includes all the input URIs of that flow object and similar for an Output class.
This solution currently seems to work for an unlinked raw data (single activity instance)
Action - Matteo and Agneta can try to work on another example with two or more activity instances where the outputs of one flow are inputs to another.
* **Flow properties**- Especially important are the balanceable properties (dry mass, water mass, monetary value, time, ...)
Action - Need to add another class which includes instances of units of measure used to quantify a flow . This class could have a different name rather than flow properties as this would be a class not a flow property. Need to be mindful of nomenclature as interchangeable nomenclature can create confusion. 
* **Reference/Determining flow**- can be a property of an input or output?
Determining flow is used as a predicate to define the relationship of the flow object with the activity. Determining flow can either be the output (usually) but also input (in specific cases such as waste to landfill.
* **No differentiation in Flow product, by-product, emissions**
The primary principle of the ontology is to keep it simple and not develop it as LCA databases are traditionally developed. There is a larger consensus on maintaining that there is one determining flow to an activity and the rest a co-flows (inputs or outputs).
Action - We would like to have some discussion later on why is this a good option? or would it bring in any potential barriers to adoption by the larger LCA community which structures data differently.
***
### RDF framework
* **Role of URI and literals**
URIs are provided to every instance in a class, which needs to be identified by a query. On the hand literals are provided to specific datapoints such as a string or numeric value that are attached to an URI but not necessarily changed. Literals also help to make the data human readable.
E.g Steel might be identified by the computer as uri_ex1, but it still needs a specific label- steel to be understood by humans. 
* **Use of Prov- O**
Use of Pro-O was initially suggested to use for provenance or predicates such as ‘inputOf’ or ‘outputOf’ . However, this vocabulary does not suit our ontology as its specifically used to define the provenance of a database and not of an instance of a class in a database.
Action BONSAI needs to develop its own predicates or relationships to do so.
* **Examples on inter-operability**
Bo elaborated on an example on how World Bank data on GDP/Person could be written using BONSAI ontology.
  - Activity: All economic activities (defined as those that have monetary labour costs, net taxes and/or net operating surplus)
  - Flow-object: Value added (= labour costs, net taxes and net operating surplus)
  - Flow-property (an unit of measure): Monetary value
  - Property-relation: Person
Most of the data could be easily translated except how data on population would be translated as BONSAI ontology doesn’t provide a separate class to store this info. Three suggestions were provided:
1.	Use of Class defined as Agent which includes (households, individuals, person)
2.	Use external RDF ontology
3.	Develop a data package to store information 
Action – The above options can be discussed further.
* ***GitHub repos- BEP 0003 and Deliverables***
If we plan to have two different platforms of GitHub. We must clarify on how they would be used by participants in the group. And most importantly avoid duplication of information
Action – Ask Chris and Massimo on how they will be used.

***
A follow-up meeting is planned on Friday, 22nd March 9:00 AM
Some additional points not covered in this meeting could be added to the agenda of the following meeting.
* Competency questions
* Environmental flows- Classical versus Minimalist (Massimo)
