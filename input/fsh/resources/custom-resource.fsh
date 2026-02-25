Logical: CustomResource
Parent: Base
Id: CustomResource
Title: "Custom Resource"
Description: "Custom Resource definition to be used as an example"
* ^version = "1.0.0"
* . ^short = "CustomResource"
* . ^definition = "Custom Resource definition to be used as an example"
* id 0..1 string "ID of the resource"
* name 1..1 string "Example name"
* name ^short = "Resource title"
* somethingelse 1..* Reference "Mandatory list of links to another resources"
* somethingelse ^short = "Other resource links"

Instance: CustomResourceExample
InstanceOf: CustomResource
Usage: #example
* id = "example"
* name = "Example Resource"
* somethingelse = Reference(Observation/example)