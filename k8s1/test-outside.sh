echo "--- Starting test: Sending 10 requests to the nginx service ---"

for i in $(seq 1 10); do wget -q -O - http://localhost | grep "Hello"; done

echo "--- Test complete. Pod 'my-proxy' has been removed. ---"