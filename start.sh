echo "Starting Node Inspector Server"
node /tmp/openshift-node-inspector-src/bin/inspector.js -p ${ONI_DEBUG_PORT} & 
sleep 5 
echo "Starting ${ONI_COMPONENT}"
node --debug /opt/app-root/src/${ONI_COMPONENT}.js /opt/app-root/src/config/conf.json --master-only
