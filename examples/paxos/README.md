
Proof of correctness of the Paxos consensus protocol by refinement,
following Lamport's TLA+ development.
 [ https://github.com/tlaplus/Examples/blob/master/specifications/PaxosHowToWinATuringAward/Consensus.tla ]

It is a two step development, with the Voting algorithm standing
between the Consensus abstract spec and the Paxos concrete algorithm. 

## Files 

  * [consensus.mlw](consensus.mlw): abstract specification
  * [voting.mlw](voting.mlw): implementation 
  * [paxos.mlw](paxos.mlw): implementation 


Notes: 

1. Voting and Paxos are formalized in a single module each, including
refinement. An alternative to this would be to have the Voting
development split in two modules, with one of them dedicated to the
proof of refinement from Consensus. The refinement logical context
would not be included in the Paxos module, which needs to see Voting
merely as an abstract module. 

2. Voting does not export Consensus, which it imports, since many
names are shared between the two modules, which would otherwise have
to be renamed. Consequently, Paxos has to use the Consensus. prefix to
refer to names in that module; it must also import library modules
already imported in Consensus. 

3. Using set library modules in Consensus causes problems with the
Voting automated proofs (big logical context?). For this reason,
Consensus is formalized using maps, with no finiteness constraint on
the chosen values. This is not problematic, since the inductive
predicate certainly enforces finiteness. 

4. The module in file consensus_orig.mlw contains the original
set-based formulation, and shows that the one in consensus.mlw is a
refinement of it. voting_orig.mlw, based on consensus_orig.mlw,
generates many VCs that are left unproved. 

5. The folder contains two versions of Paxos, one of which uses a
predicate defined in Voting, together with the refinement mapping, in
the Paxos invariant. This version requires no annotations or lemmas in
addition to the standard ones. 

6. The lemmas and annotations required are all in the Voting module.
They concern in particular chosenAt / safeAt and how they are
affected by the two action functions. 


