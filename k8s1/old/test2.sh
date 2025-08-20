# #!/bin/bash

# kubectl port-forward svc/nginx 8080:80 &
# PF_PID=$!

# sleep 2  # Give port-forward time to start

# echo "Sending requests to test round-robin load balancing..."

# for i in {1..10}; do
#   echo -n "Request $i: "
#   curl -s http://localhost:8080 | grep '<h1>'
#   sleep 0.5
# done
# # Kill the port-forward process
# kill $PF_PID


#!/bin/bash

echo "Testing round-robin load balancing on localhost:8080..."

# for i in {1..10}; do
#   echo -n "Request $i: "
#   curl -s http://localhost:52084 | grep '<h1>'
#   sleep 1
# done


# for i in {1..10}; do
#   curl -s --header "Connection: close" http://localhost:30000 | grep '<h1>'
#   sleep 1
# done


for i in {1..10}; do
  curl -s http://127.0.0.1:30000 | grep '<h1>'
done
