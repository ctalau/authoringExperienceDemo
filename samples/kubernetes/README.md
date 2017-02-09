# Enforcing the styleguide 

The [Kubernetes](https://kubernetes.io) open-souce project has a 
[styleguide](https://kubernetes.io/docs/contribute/style-guide/) to be followed by its contributors.

This styleguide has some [rules](https://kubernetes.io/docs/contribute/style-guide/#code-snippet-formatting) 
for code written in documentation:

- Use code style for inline code and commands
- Don’t include the command prompt
- Separate commands from output

However, some topics do not adhere to it. We extracted a small sample [here](minikube.dita)
([the original topic](https://kubernetes.io/docs/getting-started-guides/minikube/)). 
You can open it to see how Schematron discovers on the fly when a topic does not adhere to styleguide
and proposes solutions for each of the problems.