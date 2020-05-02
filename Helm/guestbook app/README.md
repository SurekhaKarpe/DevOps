What Is Helm?

Helm is a package manager for Kubernetes. 

When you have to deal with a lot of resources, source code, or binary files in computer science you usually use packages. And when you have to deal with a lot of packages you need a package manager. In the system world, you can use APT to install Debian binaries or applications or YUM to install RPM packages. If you are a Java developer, you use Maven to build and deploy your artifacts. As a JavaScript developer, you use npm to install your Node modules or pip if you develop in Python. 

In the Kubernetes world we have the same. The packages are called charts. There are a bunch of Kubernetes resource definitions, the YAML files. And Helm is the package manager to manage those charts. 

How does Helm work? 

Instead of using the kubectl command for each Kubernetes object we embed the Kubernetes object definition in a package or a chart. That chart is then used by Helm. Helm, which consists of a client command line that communicates with the server-side component called Tiller. Tiller then calls the Kubernetes API to create the Kubernetes objects on your behalf. And soon your application release is ready. So the chart defines your application and the release is an instance of the chart. Helm command line app communicates with Tiller using the gRPC protocol. Tiller runs inside a pod in your cluster and encodes the HTTP Kubernetes API just like any other client. That Tiller component manages your releases and stores the Helm charts and installation history in a ConfigMap. 

Helm Commands:
    helm install [chart]
    helm upgrade [release] [chart]
    helm rollback [release] [revision]
    helm history [release]
    helm status [release]
    helm get  [release]
    helm delete [release]
    helm list
