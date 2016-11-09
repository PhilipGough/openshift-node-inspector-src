echo "Starting Node Inspector Server"
node /tmp/openshift-node-inspector-src/bin/inspector.js -p ${ONI_DEBUG_PORT} &
sleep 5
echo "Starting fh-messaging"
node --debug ./bin/fhmsgsrv.js ./config/conf.json --master-only
