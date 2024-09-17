export FABRIC_CA_CLIENT_HOME=${PWD}/crypto-config/peerOrganizations/org1.example.com/
echo
  echo "## Generate the peer0-tls certificates"
  echo
  fabric-ca-client enroll -u https://peer0:peer0pw@localhost:7054 \
  --caname ca.org1.example.com \
  -M ${PWD}/crypto-config/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls \
  --enrollment.profile tls --csr.hosts peer0.org1.example.com \
  --csr.hosts localhost \
  --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem
