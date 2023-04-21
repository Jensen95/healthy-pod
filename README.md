# healthy-pod

A simple docker image with a health endpoint

This is a image that will be healthy when switched out with a k8s health check
This makes it convenient to use to swap out a deployed image and have the pod stay healthy.
This makes it possible to intercept the traffic going into the pod
