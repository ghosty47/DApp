import type { Principal } from '@dfinity/principal';
export interface _SERVICE {
  'checkBalance' : () => Promise<number>,
  'compoundInterest' : () => Promise<undefined>,
  'topUp' : (arg_0: number) => Promise<undefined>,
  'witdraw' : (arg_0: number) => Promise<undefined>,
}
