#!/bin/bash
#!/bin/sh

all_tests=(
"stateMachineModels/inductiveness"
"stateMachineModels/refinement"
"examples/twoPhase/alternate -L stateMachineModels -L examples/twoPhase"
"examples/twoPhase/twoPhase -L stateMachineModels -L examples/twoPhase"
"examples/mutualExclusionConcurrent/mutexAbstractN -L stateMachineModels -L examples/mutualExclusionConcurrent"
"examples/mutualExclusionConcurrent/mutexAbstract -L stateMachineModels -L examples/mutualExclusionConcurrent"
"examples/mutualExclusionConcurrent/simpleMutex -L stateMachineModels -L examples/mutualExclusionConcurrent"
"examples/mutualExclusionConcurrent/Peterson -L stateMachineModels -L examples/mutualExclusionConcurrent"
"examples/mutualExclusionConcurrent/PetersonAtomic -L stateMachineModels -L examples/mutualExclusionConcurrent"
"examples/mutualExclusionConcurrent/BakeryAtomic -L stateMachineModels -L examples/mutualExclusionConcurrent"
"examples/waitFreeRegister/slotsAbstract -L stateMachineModels -L examples/waitFreeRegister"
"examples/waitFreeRegister/fourSlots -L stateMachineModels -L examples/waitFreeRegister"
"examples/counter/counter -L stateMachineModels -L examples/counter"
"examples/counter/counter_lock -L stateMachineModels -L examples/counter"
"examples/counter/counter_alt -L stateMachineModels -L examples/counter"
"examples/counter/counter_lock_alt -L stateMachineModels -L examples/counter"
"examples/leaderElection/leaderElect -L stateMachineModels -L examples/leaderElection"
"examples/leaderElection/leaderElectMax -L stateMachineModels -L examples/leaderElection"
"examples/leaderElection/ChangRoberts -L stateMachineModels -L examples/leaderElection"
"examples/leaderElection/ChangRobertsNetwork -L stateMachineModels -L examples/leaderElection"
"examples/leaderElection/leaderElectBroadcast -L stateMachineModels -L examples/leaderElection"
"examples/mutualExclusionToken/oneToken -L stateMachineModels -L examples/mutualExclusionToken"
"examples/mutualExclusionToken/selfstab-ring -L stateMachineModels -L examples/mutualExclusionToken"
"examples/mutualExclusionToken/selfstab-biarray-2states -L stateMachineModels -L examples/mutualExclusionToken"
"examples/paxos/consensus -L stateMachineModels -L examples/paxos"
"examples/paxos/consensus_orig -L stateMachineModels -L examples/paxos"
"examples/paxos/voting -L stateMachineModels -L examples/paxos"
"examples/paxos/paxos -L stateMachineModels -L examples/paxos"
"networkModels/modelMP"
"networkModels/modelMPEnabledTrace"
"networkModels/modelMPEnabledTraceDupl"
"examples/changRobertsNetwork/leaderlect-ring -L networkModels"
"examples/distributedLockNetwork/specLDT"
"examples/distributedLockNetwork/LDT -L networkModels -L examples/distributedLockNetwork"
"examples/distributedLockNetwork/LDTDupl -L networkModels -L examples/distributedLockNetwork"
"examples/paxosNoRefinement/paxos"
)

failed=0
runned=0

if [ ! "$GITHUB_STEP_SUMMARY" ];then
   GITHUB_STEP_SUMMARY=output.txt
fi

echo "| Module | Status  |" >> $GITHUB_STEP_SUMMARY
echo "| :----- | :-----: |" >> $GITHUB_STEP_SUMMARY

for ((i = 0; i < ${#all_tests[@]}; i++))
do
    test=${all_tests[$i]}
    cmd="why3 replay $test"
    echo $cmd
    eval $cmd
    res=$?
    if [ "$res" = "0" ]; then
        icon=":white_check_mark:"
    else
        icon=":x:"
    fi;
    words=($test)
    echo "| ${words[0]} | $icon |" >> $GITHUB_STEP_SUMMARY
    failed=$((failed+$res))
    runned=$((runned+1))
done

echo "" >> $GITHUB_STEP_SUMMARY
echo "Passed: $((runned-failed))" >> $GITHUB_STEP_SUMMARY
echo "Failed: $failed" >> $GITHUB_STEP_SUMMARY

echo ""
echo "Replayed $runned from which $failed failed."
exit $failed
