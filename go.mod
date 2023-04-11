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
	github.com/ltcsuite/lnd/tlv v0.0.0-20240222214433-454d35886119
	github.com/ltcsuite/ltcd v0.23.6-0.20240131072528-64dfa402637a
	github.com/ltcsuite/ltcd/btcec/v2 v2.3.2
	github.com/ltcsuite/ltcd/chaincfg/chainhash v1.0.2
	github.com/ltcsuite/ltcd/ltcutil v1.1.4-0.20240131072528-64dfa402637a
	github.com/ltcsuite/ltcd/ltcutil/psbt v1.1.1-0.20240131072528-64dfa402637a
	github.com/stretchr/testify v1.9.0
	go.etcd.io/bbolt v1.3.5
	golang.org/x/crypto v0.7.0
	golang.org/x/net v0.8.0
	golang.org/x/term v0.6.0
	google.golang.org/grpc v1.38.0
)

require (
	github.com/aead/siphash v1.0.1 // indirect
	github.com/btcsuite/go-socks v0.0.0-20170105172521-4720035b7bfd // indirect
	github.com/btcsuite/golangcrypto v0.0.0-20150304025918-53f62d9b43e8 // indirect
	github.com/dchest/siphash v1.2.2 // indirect
	github.com/decred/dcrd/crypto/blake256 v1.0.0 // indirect
	github.com/decred/dcrd/lru v1.0.0 // indirect
	github.com/gcash/bchd v0.18.1 // indirect
	github.com/gcash/bchlog v0.0.0-20180913005452-b4f036f92fa6 // indirect
	github.com/gcash/bchutil v0.0.0-20210113190856-6ea28dff4000 // indirect
	github.com/gcash/bchwallet v0.8.3-0.20210524112536-14ca25bc6549 // indirect
	github.com/gcash/bchwallet/walletdb v0.0.0-20210524044131-61bcca2ae6f9 // indirect
	github.com/kkdai/bstream v1.0.0 // indirect
	github.com/klauspost/cpuid/v2 v2.0.9 // indirect
	github.com/pmezard/go-difflib v1.0.0 // indirect
	github.com/zquestz/grab v0.0.0-20190224022517-abcee96e61b1 // indirect
	golang.org/x/sys v0.8.0 // indirect
	golang.org/x/text v0.8.0 // indirect
	google.golang.org/genproto v0.0.0-20210521181308-5ccab8a35a9a // indirect
	google.golang.org/protobuf v1.26.0 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
	lukechampine.com/blake3 v1.2.1 // indirect
)

// The old version of ginko that's used in btcd imports an ancient version of
// gopkg.in/fsnotify.v1 that isn't go mod compatible. We fix that import error
// by replacing ginko (which is only a test library anyway) with a more recent
// version.
replace github.com/onsi/ginkgo => github.com/onsi/ginkgo v1.14.2

go 1.18
