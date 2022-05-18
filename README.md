This is an extremely simple repository that demonstrates how to use The Graph's call handling to track `DELEGATECALL`s to a given contract.

There are two contracts in `contracts`. First, deploy `storage.sol`. Next, edit `delegator.sol` to add the address of the deployed `Storage` contract and deploy it as well. Call the `Delegator` contract's `delegate()` to initiate a `DELEGATECALL`.

The subgraph configuration files for tracking `DELEGATECALL`s to Storage are in the `subgraph` folder. `subgraph.yaml` must be edited to include the address of the deployed `Storage` contract.