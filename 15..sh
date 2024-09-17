
export FABRIC_CA_CLIENT_HOME=${PWD}/crypto-config/ordererOrganizations/example.com
  mkdir -p crypto-config/ordererOrganizations/example.com/orderers/orderer.example.com

  echo
  echo "## Generate the orderer msp"
  echo
   
  fabric-ca-client enroll -u https://orderer:ordererpw@localhost:9054 --caname ca-orderer \
  -M ${PWD}/crypto-config/ordererOrganizations/example.com/orderers/orderer.example.com/msp \
  --csr.hosts orderer.example.com --csr.hosts localhost \
  --tls.certfiles ${PWD}/fabric-ca/ordererOrg/tls-cert.pem
   

  cp ${PWD}/crypto-config/ordererOrganizations/example.com/msp/config.yaml ${PWD}/crypto-config/ordererOrganizations/example.com/orderers/orderer.example.com/msp/config.yaml
