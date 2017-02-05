# Authoring Experience Demos

This project aggregates various oXygen XML Editor frameworks that provide an enhanced authoring experience for various document types.


## Getting Started

At the end of this document there is a list of frameworks with links to sample files.

To open the sample files in **oXygen XML Editor** (v18.1+), you need to open this 
`README.md` file in the editor and follow the links.

To open them in **oXygen XML Web Author**, the simplest way is to install the 
[**Web Author Test Server Add-on**](https://www.oxygenxml.com/oxygen_webapp_add_on.html) 
(you will need an SDK account for that), open sample files in **oXygen XML Editor** 
and use the add-on to open the files in **Web Author**.

## Frameworks List

- [**DITA Plus**](sampleFrameworkExtension/) 
 
   Framework that provides an enhanced authoring experience for DITA documents with some specific convetions. It covers many aspects that can be customized by using a framework.

- [**Framework for legal documents**](legal/)

  The framework that we use internally for our legal documents.
  
  [Open the corresponding project](legal/legal.xpr)

- [**Framework for a book**](languageBook/)
  
  Sample oXygen XML Editor framework for managing content of a book similar to "The Language of Content Strategy" book by Scott Abel and Rahel Anne Bailie.
  
  [Sample document](languageBook/example/TheLanguageOfContentStrategy.xml)
  
- [**Framework for articles in the Journal of TEI**](jteiPlus/)

  Framework that enhances the authoring experience for the articles submitted to the Journal of TEI.

  [Sample document](jteiPlus/samples/JTEI/jtei_8_eide_source/DEMOjtei-8-eide-source.xml)

- **Lightweight DITA**
  
  This framework provides support for editing documents in the Lightweight DITA standard. Since the language itself targets writers with little to no DITA experience, we designed the authoring experience with this persona in mind.

  [Sample document](samples/lightweight.dita)

- **Schematron and one-click fixes**

  Schematron is a very powerfull XML validation language in which you can express various conventions to which the content must adhere.

- [**Dynamic Information Model (DIM)**](dim/)

  The Dynamic Information model is a DITA specialization for writing styleguides. The topics also contain business rules defined in a simple format that gets translated to Schematron.
  
  - [Sample topic 1](dim/test/avoidAttributeInElement/testTopic.dita)
  - [Sample topic 2](dim/test/avoidSemicolumnInListItems/testTopic.dita)
  - [Sample topic 3](dim/test/avoidWordInElement/testTopic.dita)


  
