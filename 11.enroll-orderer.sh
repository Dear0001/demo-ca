echo
echo "Enroll the CA admin"
echo
mkdir -p crypto-config/ordererOrganizations/example.com

export FABRIC_CA_CLIENT_HOME=${PWD}/crypto-config/ordererOrganizations/example.com


fabric-ca-client enroll -u https://admin:adminpw@localhost:9054 --caname ca-orderer --tls.certfiles ${PWD}/fabric-ca/ordererOrg/tls-cert.pem

