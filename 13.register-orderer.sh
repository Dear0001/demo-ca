
export FABRIC_CA_CLIENT_HOME=${PWD}/crypto-config/ordererOrganizations/example.com
  echo "Register orderer"
  echo
   
  fabric-ca-client register --caname ca-orderer --id.name orderer --id.secret ordererpw --id.type orderer --tls.certfiles ${PWD}/fabric-ca/ordererOrg/tls-cert.pem
   
