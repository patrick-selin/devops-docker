# 3.9

Before optimization:
go-server    latest    ae4176fa21af   11 seconds ago   1.07GB

<!-- AFTER -->

After optimization (using alpine):
go-server-multi   latest    fbb4bd5d54c2   33 seconds ago       25.5MB

Second Optimization, (using FROM scratch):
go-server-scratch   latest    1430441d1071   37 seconds ago   18.1MB
