module github.com/dcrlabs/ltcwallet

require (
	github.com/btcsuite/btclog v0.0.0-20170628155309-84c8d2346e9f
	github.com/btcsuite/websocket v0.0.0-20150119174127-31079b680792
	github.com/davecgh/go-spew v1.1.1
	github.com/decred/dcrd/dcrec/secp256k1/v4 v4.0.1
	github.com/gcash/neutrino v0.0.0-20210524114821-3b1878290cf9
	github.com/golang/protobuf v1.5.2
	github.com/jessevdk/go-flags v1.5.0
	github.com/jrick/logrotate v1.0.0
	github.com/lightninglabs/gozmq v0.0.0-20191113021534-d20a764486bf
	github.com/ltcsuite/lnd/clock v0.0.0-20200822020009-1a001cbb895a
	github.com/ltcsuite/lnd/queue v1.1.0
	github.com/ltcsuite/lnd/ticker v1.0.1
	github.com/ltcsuite/ltcd v0.23.5
	github.com/ltcsuite/ltcd/btcec/v2 v2.3.2
	github.com/ltcsuite/ltcd/chaincfg/chainhash v1.0.2
	github.com/ltcsuite/ltcd/ltcutil v1.1.3
	github.com/ltcsuite/ltcd/ltcutil/psbt v1.1.0-1
	github.com/stretchr/testify v1.8.0
	go.etcd.io/bbolt v1.3.5
	golang.org/x/crypto v0.0.0-20220214200702-86341886e292
	golang.org/x/net v0.0.0-20211112202133-69e39bad7dc2
	google.golang.org/grpc v1.38.0
)

// The old version of ginko that's used in btcd imports an ancient version of
// gopkg.in/fsnotify.v1 that isn't go mod compatible. We fix that import error
// by replacing ginko (which is only a test library anyway) with a more recent
// version.
replace github.com/onsi/ginkgo => github.com/onsi/ginkgo v1.14.2

go 1.16
