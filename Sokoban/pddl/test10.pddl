(define (problem test10)
(:domain domain_sokoban)
(:objects
node1 - node
node2 - node
node3 - node
node4 - node
node5 - node
node6 - node
node7 - node
node8 - node
node9 - node
node10 - node
node11 - node
node12 - node
node13 - node
node14 - node
node15 - node
node16 - node
node17 - node
node18 - node
node19 - node
node20 - node
node21 - node
box1 - box
agent1 - agent
box2 - box
box3 - box
)

(:init
(isNotBusyNode node1)
(isAbove node1 node4)
(isOnLeft node1 node2)
(isNotBusyNode node2)
(isAbove node2 node5)
(isOnRight node2 node1)
(isOnLeft node2 node3)
(isNotBusyNode node3)
(isAbove node3 node6)
(isOnRight node3 node2)
(isNotBusyNode node4)
(isBelow node4 node1)
(isOnLeft node4 node5)
(isBoxOnNode box1 node5)
(isNotBoxOnGoal box1)
(isBusyNode node5)
(isBelow node5 node2)
(isAbove node5 node9)
(isOnRight node5 node4)
(isOnLeft node5 node6)
(isAgentOnNode agent1 node6)
(isNotBusyNode node6)
(isBelow node6 node3)
(isAbove node6 node10)
(isOnRight node6 node5)
(isOnLeft node6 node7)
(isNotBusyNode node7)
(isAbove node7 node11)
(isOnRight node7 node6)
(isOnLeft node7 node8)
(isNotBusyNode node8)
(isAbove node8 node12)
(isOnRight node8 node7)
(isBoxOnNode box2 node9)
(isNotBoxOnGoal box2)
(isGoalNode node9)
(isBusyNode node9)
(isBelow node9 node5)
(isAbove node9 node14)
(isOnLeft node9 node10)
(isNotBusyNode node10)
(isBelow node10 node6)
(isAbove node10 node15)
(isOnRight node10 node9)
(isOnLeft node10 node11)
(isGoalNode node11)
(isNotBusyNode node11)
(isBelow node11 node7)
(isOnRight node11 node10)
(isOnLeft node11 node12)
(isNotBusyNode node12)
(isBelow node12 node8)
(isAbove node12 node16)
(isOnRight node12 node11)
(isNotBusyNode node13)
(isAbove node13 node17)
(isOnLeft node13 node14)
(isBoxOnNode box3 node14)
(isNotBoxOnGoal box3)
(isGoalNode node14)
(isBusyNode node14)
(isBelow node14 node9)
(isAbove node14 node18)
(isOnRight node14 node13)
(isOnLeft node14 node15)
(isNotBusyNode node15)
(isBelow node15 node10)
(isAbove node15 node19)
(isOnRight node15 node14)
(isNotBusyNode node16)
(isBelow node16 node12)
(isAbove node16 node21)
(isNotBusyNode node17)
(isBelow node17 node13)
(isOnLeft node17 node18)
(isNotBusyNode node18)
(isBelow node18 node14)
(isOnRight node18 node17)
(isOnLeft node18 node19)
(isNotBusyNode node19)
(isBelow node19 node15)
(isOnRight node19 node18)
(isOnLeft node19 node20)
(isNotBusyNode node20)
(isOnRight node20 node19)
(isOnLeft node20 node21)
(isNotBusyNode node21)
(isBelow node21 node16)
(isOnRight node21 node20)
)

(:goal
(
and
(isBoxOnGoal box1)
(isBoxOnGoal box2)
(isBoxOnGoal box3)
)
)
)