
#!/bin/zsh

echo "--------------------------------"

echo "# stateMachineModels"
echo "## inductiveness"
why3 replay stateMachineModels/inductiveness
echo "## refinement"
why3 replay stateMachineModels/refinement
echo "--------------------------------"
echo "--------------------------------"

echo "# examples/twoPhase"
echo "## counter"
why3 replay examples/twoPhase/alternate -L stateMachineModels -L examples/twoPhase
echo "## counter_lock"
why3 replay examples/twoPhase/twoPhase -L stateMachineModels -L examples/twoPhase
echo "--------------------------------"

echo "# examples/mutualExclusionConcurrent"
echo "## mutexAbstractN"
why3 replay examples/mutualExclusionConcurrent/mutexAbstractN -L stateMachineModels -L examples/mutualExclusionConcurrent
echo "## mutexAbstract"
why3 replay examples/mutualExclusionConcurrent/mutexAbstract -L stateMachineModels -L examples/mutualExclusionConcurrent
echo "## simpleMutex"
why3 replay examples/mutualExclusionConcurrent/simpleMutex -L stateMachineModels -L examples/mutualExclusionConcurrent
echo "## Peterson"
why3 replay examples/mutualExclusionConcurrent/Peterson -L stateMachineModels -L examples/mutualExclusionConcurrent
echo "## PetersonAtomic"
why3 replay examples/mutualExclusionConcurrent/PetersonAtomic -L stateMachineModels -L examples/mutualExclusionConcurrent
echo "## BakeryAtomic"
why3 replay examples/mutualExclusionConcurrent/BakeryAtomic -L stateMachineModels -L examples/mutualExclusionConcurrent
echo "--------------------------------"

echo "# examples/waitFreeRegister"
echo "## slotsAbstract"
why3 replay examples/waitFreeRegister/slotsAbstract -L stateMachineModels -L examples/waitFreeRegister
echo "## fourSlots"
why3 replay examples/waitFreeRegister/fourSlots -L stateMachineModels -L examples/waitFreeRegister
echo "--------------------------------"

echo "# examples/counter"
echo "## counter"
why3 replay examples/counter/counter -L stateMachineModels -L examples/counter
echo "## counter_lock"
why3 replay examples/counter/counter_lock -L stateMachineModels -L examples/counter
echo "## counter_alt"
why3 replay examples/counter/counter_alt -L stateMachineModels -L examples/counter
echo "## counter_lock_alt"
why3 replay examples/counter/counter_lock_alt -L stateMachineModels -L examples/counter
echo "--------------------------------"

echo "# examples/leaderElect"
echo "## leaderElect"
why3 replay examples/leaderElection/leaderElect -L stateMachineModels -L examples/leaderElection
echo "## leaderElectMax"
why3 replay examples/leaderElection/leaderElectMax -L stateMachineModels -L examples/leaderElection
echo "## ChangRoberts"
why3 replay examples/leaderElection/ChangRoberts -L stateMachineModels -L examples/leaderElection
echo "## ChangRobertsNetwork"
why3 replay examples/leaderElection/ChangRobertsNetwork -L stateMachineModels -L examples/leaderElection
echo "## leaderElectBroadcast"
why3 replay examples/leaderElection/leaderElectBroadcast -L stateMachineModels -L examples/leaderElection
echo "--------------------------------"

echo "# examples/mutualExclusionToken"
echo "## oneToken"
why3 replay examples/mutualExclusionToken/oneToken -L stateMachineModels -L examples/mutualExclusionToken
echo "## selfstab-ring"
why3 replay examples/mutualExclusionToken/selfstab-ring -L stateMachineModels -L examples/mutualExclusionToken
echo "## selfstab-biarray-2states"
why3 replay examples/mutualExclusionToken/selfstab-biarray-2states -L stateMachineModels -L examples/mutualExclusionToken
echo "--------------------------------"

echo "# examples/paxos"
echo "## consensus"
why3 replay examples/paxos/consensus -L stateMachineModels -L examples/paxos
echo "## consensus_orig"
why3 replay examples/paxos/consensus_orig -L stateMachineModels -L examples/paxos
echo "## voting"
why3 replay examples/paxos/voting -L stateMachineModels -L examples/paxos
echo "## paxos"
why3 replay examples/paxos/paxos -L stateMachineModels -L examples/paxos
echo "--------------------------------"

echo "--------------------------------"

echo "# networkModels"
echo "## modelMP"
why3 replay networkModels/modelMP
echo "## modelMPEnabledTrace"
why3 replay networkModels/modelMPEnabledTrace
echo "## modelMPEnabledTraceDupl"
why3 replay networkModels/modelMPEnabledTraceDupl
echo "--------------------------------"
echo "--------------------------------"

echo "# Network model examples"
echo "## examples/changRobertsNetwork"
echo "### leaderlect-ring"
why3 replay examples/changRobertsNetwork/leaderlect-ring -L networkModels
echo "## examples/distributedLockNetwork"
echo "### specLDT"
why3 replay examples/distributedLockNetwork/specLDT
echo "### LDT"
why3 replay examples/distributedLockNetwork/LDT -L networkModels -L examples/distributedLockNetwork
echo "### LDTDupl"
why3 replay examples/distributedLockNetwork/LDTDupl -L networkModels -L examples/distributedLockNetwork
echo "--------------------------------"
echo "--------------------------------"

echo "# Miscelaneous examples"
echo "## paxos (stand-alone formalization)"
why3 replay examples/paxosNoRefinement/paxos
echo "--------------------------------"
