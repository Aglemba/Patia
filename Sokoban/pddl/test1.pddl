(define (problem test1)
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
box1 - box
agent1 - agent
box2 - box
box3 - box
)

(:init
(isNotBusyNode node1)
(isAbove node1 node3)
(isOnLeft node1 node2)
(isNotBusyNode node2)
(isAbove node2 node4)
(isOnRight node2 node1)
(isNotBusyNode node3)
(isBelow node3 node1)
(isOnLeft node3 node4)
(isNotBusyNode node4)
(isBelow node4 node2)
(isOnRight node4 node3)
(isNotBusyNode node5)
(isAbove node5 node7)
(isOnLeft node5 node6)
(isNotBusyNode node6)
(isAbove node6 node8)
(isOnRight node6 node5)
(isNotBusyNode node7)
(isBelow node7 node5)
(isAbove node7 node11)
(isOnLeft node7 node8)
(isGoalNode node8)
(isNotBusyNode node8)
(isBelow node8 node6)
(isAbove node8 node12)
(isOnRight node8 node7)
(isNotBusyNode node9)
(isAbove node9 node13)
(isOnLeft node9 node10)
(isNotBusyNode node10)
(isOnRight node10 node9)
(isOnLeft node10 node11)
(isBoxOnNode box1 node11)
(isNotBoxOnGoal box1)
(isGoalNode node11)
(isBusyNode node11)
(isBelow node11 node7)
(isAbove node11 node14)
(isOnRight node11 node10)
(isOnLeft node11 node12)
(isNotBusyNode node12)
(isBelow node12 node8)
(isAbove node12 node15)
(isOnRight node12 node11)
(isNotBusyNode node13)
(isBelow node13 node9)
(isAbove node13 node16)
(isAgentOnNode agent1 node14)
(isNotBusyNode node14)
(isBelow node14 node11)
(isAbove node14 node18)
(isOnLeft node14 node15)
(isNotBusyNode node15)
(isBelow node15 node12)
(isAbove node15 node19)
(isOnRight node15 node14)
(isNotBusyNode node16)
(isBelow node16 node13)
(isOnLeft node16 node17)
(isBoxOnNode box2 node17)
(isNotBoxOnGoal box2)
(isBusyNode node17)
(isAbove node17 node20)
(isOnRight node17 node16)
(isOnLeft node17 node18)
(isBoxOnNode box3 node18)
(isNotBoxOnGoal box3)
(isGoalNode node18)
(isBusyNode node18)
(isBelow node18 node14)
(isAbove node18 node21)
(isOnRight node18 node17)
(isOnLeft node18 node19)
(isNotBusyNode node19)
(isBelow node19 node15)
(isAbove node19 node22)
(isOnRight node19 node18)
(isNotBusyNode node20)
(isBelow node20 node17)
(isOnLeft node20 node21)
(isNotBusyNode node21)
(isBelow node21 node18)
(isOnRight node21 node20)
(isOnLeft node21 node22)
(isNotBusyNode node22)
(isBelow node22 node19)
(isOnRight node22 node21)
(isNotBusyNode node23)
)

(:goal
(and
(isBoxOnGoal box1)
(isBoxOnGoal box2)
(isBoxOnGoal box3)
)
)
)