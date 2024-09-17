export FABRIC_CA_CLIENT_HOME=${PWD}/crypto-config/peerOrganizations/org1.example.com/
  #  Peer 0
  mkdir -p crypto-config/peerOrganizations/org1.example.com/peers/peer0.org1.example.com

  echo
  echo "## Generate the peer0 msp"
  echo
  fabric-ca-client enroll -u https://peer0:peer0pw@localhost:7054 \
  --caname ca.org1.example.com \
  -M ${PWD}/crypto-config/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/msp \
  --csr.hosts peer0.org1.example.com \
  --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem
