# why3do
Why3-do: a WhyML library for reasoning about state machine specifications and distributed systems

## Library Modules

* [stateMachineModels/inductiveness.mlw]: simple theory for
establishing inductive invariants of state machine specifications
* [stateMachineModels/refinement.mlw]: theory of refinement mappings
  between state machine specifications

## List of Examples

* [leaderElection](examples/leaderElection/): Leader election: Chang-Roberts ring
  algorithm, refined from an abstract specification
* [examples/mutualExclusionToken]: Closure property of Dijkstra's
  self-stabilizing ring and bidirectional array systems. Refined from
  the same abstract specification

## Example commands

* `why3 ide examples/leaderElection/ChangRoberts.mlw -L examples/leaderElection -L stateMachineModels`: (executed in the top-level folder) launches the Why3 IDE with file `ChangRoberts.mlw` 
* `why3 replay examples/leaderElection/ChangRoberts -L
  examples/leaderElection -L stateMachineModels`: replays the proof
  session of the same example (assuming all the required SMT solvers are present in the local setup)
* `why3 replay --smoke-detector=top examples/leaderElection/ChangRoberts -L
  examples/leaderElection -L stateMachineModels`: runs inconsistency
  detection of the proof session of the same example 

