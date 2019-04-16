# Builder for VSCode extension
Here is the docker image that helps build VSCode extension inside Docker system.

# Notes
As I have no option to handle file permission (even the solution at [link](https://medium.com/@bhadrajatin/docker-volume-mount-as-non-root-77ffae5a79d0)), we have to add argument `--unsafe-perm` to command `npm i` to get dependencies's scripts be able to run correctly
