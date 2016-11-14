echo "Starting Node Inspector Server"
node /tmp/openshift-node-inspector-src/bin/inspector.js -p ${ONI_DEBUG_PORT} &
sleep 5
echo "Starting fh-messaging"
node --debug ./bin/fhmetsrv.js ./config/conf.json --master-only
