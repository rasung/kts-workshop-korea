WALLETADDRESS="aleo175p3gq723sj525lkh83edj805qegcsydz8lwegaaq3pcaexqxs9s780j08"
PRIVATEKEY=""

APPNAME="deploy_workshop_kts"
PATHTOAPP=$(realpath -q $APPNAME)

RECORD="{
  owner: aleo175p3gq723sj525lkh83edj805qegcsydz8lwegaaq3pcaexqxs9s780j08,
  balance: 100u32,
  _nonce: 3393465332715604998213736938108581472976833131403461863016638612217878586075group
}"

cd .. && snarkos developer deploy "${APPNAME}.aleo" --private-key "${PRIVATEKEY}" --query "https://vm.aleo.org/api" --path "./${APPNAME}/build/" --broadcast "https://vm.aleo.org/api/testnet3/transaction/broadcast" --fee 1000000 --record "${RECORD}"``
