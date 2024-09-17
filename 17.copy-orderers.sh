  cp ${PWD}/crypto-config/ordererOrganizations/example.com/orderers/orderer.example.com/tls/tlscacerts/* ${PWD}/crypto-config/ordererOrganizations/example.com/orderers/orderer.example.com/tls/ca.crt
  cp ${PWD}/crypto-config/ordererOrganizations/example.com/orderers/orderer.example.com/tls/signcerts/* ${PWD}/crypto-config/ordererOrganizations/example.com/orderers/orderer.example.com/tls/server.crt
  cp ${PWD}/crypto-config/ordererOrganizations/example.com/orderers/orderer.example.com/tls/keystore/* ${PWD}/crypto-config/ordererOrganizations/example.com/orderers/orderer.example.com/tls/server.key

  mkdir ${PWD}/crypto-config/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts
  cp ${PWD}/crypto-config/ordererOrganizations/example.com/orderers/orderer.example.com/tls/tlscacerts/* ${PWD}/crypto-config/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem

  mkdir ${PWD}/crypto-config/ordererOrganizations/example.com/msp/tlscacerts
  cp ${PWD}/crypto-config/ordererOrganizations/example.com/orderers/orderer.example.com/tls/tlscacerts/* ${PWD}/crypto-config/ordererOrganizations/example.com/msp/tlscacerts/tlsca.example.com-cert.pem
