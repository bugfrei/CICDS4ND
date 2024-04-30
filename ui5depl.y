# yaml-language-server: $schema=https://sap.github.io/ui5-tooling/schema/ui5.yaml.json

specVersion: "2.6"
metadata:
  name: cicds4nd
type: application
builder:
  resources:
    excludes:
      - /test/**
      - /localService/**
  customTasks:
    - name: deploy-to-abap
      afterTask: generateCachebusterInfo
      configuration:
        target:
          url: http://sap-s41.suportis.local:8001
          client: "100"
        credentials:
            username: env:SAP_USER
            password: env:SAP_PASSWORD
        app:
          name: ZCICDS4ND
          package: $tmp
          transport: S41K900960
        exclude:
          - /test/
