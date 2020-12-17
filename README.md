# nscd

Docker image to provide the NSCD service.

### Usage
- The image only comes with the software and the default configuration file;
- It should be used in combination with Helm charts (or similar tools for container configuration) to create the custom configuration;
- The default command is `/usr/sbin/nscd --foreground`

### Exposing NSCD to other contianers
- It is possible to export the nscd socket once the process is running;
- To do so, mount `/run/nscd` as volume;
- Other containers can mount it with the option `--volumes-from <nscd_server_name>`.

