package chain

import (
	"github.com/dcrlabs/ltcwallet/spv"
	"github.com/dcrlabs/ltcwallet/spv/banman"
	"github.com/dcrlabs/ltcwallet/spv/headerfs"
	"github.com/ltcsuite/ltcd/chaincfg"
	"github.com/ltcsuite/ltcd/chaincfg/chainhash"
	"github.com/ltcsuite/ltcd/ltcutil"
	"github.com/ltcsuite/ltcd/ltcutil/gcs"
	"github.com/ltcsuite/ltcd/wire"
)

// NeutrinoChainService is an interface that encapsulates all the public
// methods of a *neutrino.ChainService
type NeutrinoChainService interface {
	Start() error
	GetBlock(chainhash.Hash, ...spv.QueryOption) (*ltcutil.Block, error)
	GetBlockHeight(*chainhash.Hash) (int32, error)
	BestBlock() (*headerfs.BlockStamp, error)
	GetBlockHash(int64) (*chainhash.Hash, error)
	GetBlockHeader(*chainhash.Hash) (*wire.BlockHeader, error)
	IsCurrent() bool
	SendTransaction(*wire.MsgTx) error
	GetCFilter(chainhash.Hash, wire.FilterType,
		...spv.QueryOption) (*gcs.Filter, error)
	GetUtxo(...spv.RescanOption) (*spv.SpendReport, error)
	BanPeer(string, banman.Reason) error
	IsBanned(addr string) bool
	AddPeer(*spv.ServerPeer)
	AddBytesSent(uint64)
	AddBytesReceived(uint64)
	NetTotals() (uint64, uint64)
	UpdatePeerHeights(*chainhash.Hash, int32, *spv.ServerPeer)
	ChainParams() chaincfg.Params
	Stop() error
	PeerByAddr(string) *spv.ServerPeer
}

var _ NeutrinoChainService = (*spv.ChainService)(nil)
