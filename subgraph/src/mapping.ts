import { BigInt } from "@graphprotocol/graph-ts"
import { IncrementCall } from "../generated/Storage/Storage"
import { Increment } from "../generated/schema"

export function handleIncrement(call: IncrementCall): void {
  let inc = new Increment(call.transaction.hash)
  inc.value = call.inputs.x
  inc.save()
}