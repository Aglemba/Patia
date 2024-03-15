(define (problem test3)
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
node22 - node
node23 - node
agent1 - agent
box1 - box
box2 - box
box3 - box
)

(:init
(isNotBusyNode node1)
(isAbove node1 node2)
(isNotBusyNode node2)
(isBelow node2 node1)
(isNotBusyNode node3)
(isAbove node3 node5)
(isOnLeft node3 node4)
(isAgentOnNode agent1 node4)
(isNotBusyNode node4)
(isAbove node4 node6)
(isOnRight node4 node3)
(isBoxOnNode box1 node5)
(isNotBoxOnGoal box1)
(isBusyNode node5)
(isBelow node5 node3)
(isAbove node5 node8)
(isOnLeft node5 node6)
(isBoxOnNode box2 node6)
(isNotBoxOnGoal box2)
(isGoalNode node6)
(isBusyNode node6)
(isBelow node6 node4)
(isAbove node6 node9)
(isOnRight node6 node5)
(isNotBusyNode node7)
(isAbove node7 node12)
(isOnLeft node7 node8)
(isNotBusyNode node8)
(isBelow node8 node5)
(isOnRight node8 node7)
(isOnLeft node8 node9)
(isGoalNode node9)
(isNotBusyNode node9)
(isBelow node9 node6)
(isAbove node9 node13)
(isOnRight node9 node8)
(isOnLeft node9 node10)
(isNotBusyNode node10)
(isAbove node10 node14)
(isOnRight node10 node9)
(isOnLeft node10 node11)
(isNotBusyNode node11)
(isAbove node11 node15)
(isOnRight node11 node10)
(isNotBusyNode node12)
(isBelow node12 node7)
(isAbove node12 node16)
(isGoalNode node13)
(isNotBusyNode node13)
(isBelow node13 node9)
(isAbove node13 node18)
(isOnLeft node13 node14)
(isNotBusyNode node14)
(isBelow node14 node10)
(isAbove node14 node19)
(isOnRight node14 node13)
(isOnLeft node14 node15)
(isNotBusyNode node15)
(isBelow node15 node11)
(isOnRight node15 node14)
(isNotBusyNode node16)
(isBelow node16 node12)
(isOnLeft node16 node17)
(isBoxOnNode box3 node17)
(isNotBoxOnGoal box3)
(isBusyNode node17)
(isOnRight node17 node16)
(isOnLeft node17 node18)
(isNotBusyNode node18)
(isBelow node18 node13)
(isAbove node18 node20)
(isOnRight node18 node17)
(isOnLeft node18 node19)
(isNotBusyNode node19)
(isBelow node19 node14)
(isAbove node19 node21)
(isOnRight node19 node18)
(isNotBusyNode node20)
(isBelow node20 node18)
(isOnLeft node20 node21)
(isNotBusyNode node21)
(isBelow node21 node19)
(isOnRight node21 node20)
(isNotBusyNode node22)
(isOnLeft node22 node23)
(isNotBusyNode node23)
(isOnRight node23 node22)
)

(:goal
(and
(isBoxOnGoal box1)
(isBoxOnGoal box2)
(isBoxOnGoal box3)
)
)
)