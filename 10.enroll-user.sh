echo
echo "## Generate the user msp"
echo
fabric-ca-client enroll -u https://user1:user1pw@localhost:7054 --caname ca.org1.example.com -M ${PWD}/crypto-config/peerOrganizations/org1.example.com/users/User1@org1.example.com/msp --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem

mkdir -p crypto-config/peerOrganizations/org1.example.com/users/Admin@org1.example.com

echo
echo "## Generate the org admin msp"
echo
fabric-ca-client enroll -u https://org1admin:org1adminpw@localhost:7054 --caname ca.org1.example.com -M ${PWD}/crypto-config/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem

cp ${PWD}/crypto-config/peerOrganizations/org1.example.com/msp/config.yaml ${PWD}/crypto-config/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp/config.yaml