# Why3-do
A WhyML library for reasoning about state machine specifications and distributed systems

## Library Modules

* [stateMachineModels](stateMachineModels): simple theory for
establishing inductive invariants of state machine specifications

## List of Examples

* [twoPhase](examples/twoPhase) Two-phase handshake protocol, refined
  from abstract specification
* [counter](examples/counter): concurrent counter using a lock,
  by refinement from abstract specification 
* [mutualExclusionConcurrent](examples/mutualExclusionConcurrent):
  mutual exclusion algorithms for concurrent processes, refined from
  an abstract specification 
* [leaderElection](examples/leaderElection/): Chang-Roberts leader
  election ring algorithm, refined from an abstract specification
* [mutualExclusionToken](examples/mutualExclusionToken): Closure property of Dijkstra's
  self-stabilizing ring and bidirectional array systems, refined from
  the same abstract specification
* [paxos](examples/paxos): Paxos consensus algorithm. Two-step
  refinement from a specification of the consensus problem

## Example commands

* `why3 ide examples/leaderElection/ChangRoberts.mlw -L examples/leaderElection -L stateMachineModels`: (executed in the top-level folder) launches the Why3 IDE with file `ChangRoberts.mlw` 
* `why3 replay examples/leaderElection/ChangRoberts -L
  examples/leaderElection -L stateMachineModels`: replays the proof
  session of the same example (assuming all the required SMT solvers are present in the local setup)
* `why3 replay --smoke-detector=top examples/leaderElection/ChangRoberts -L
  examples/leaderElection -L stateMachineModels`: runs inconsistency
  detection of the proof session of the same example 

