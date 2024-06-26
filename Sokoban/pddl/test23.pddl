(define (problem test23)
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
node24 - node
node25 - node
node26 - node
node27 - node
node28 - node
node29 - node
node30 - node
node31 - node
node32 - node
node33 - node
node34 - node
node35 - node
node36 - node
node37 - node
node38 - node
node39 - node
agent1 - agent
box1 - box
box2 - box
box3 - box
box4 - box
box5 - box
)

(:init
(isNotBusyNode node1)
(isAbove node1 node2)
(isNotBusyNode node2)
(isBelow node2 node1)
(isAbove node2 node8)
(isNotBusyNode node3)
(isAbove node3 node9)
(isOnLeft node3 node4)
(isNotBusyNode node4)
(isAbove node4 node10)
(isOnRight node4 node3)
(isOnLeft node4 node5)
(isNotBusyNode node5)
(isOnRight node5 node4)
(isOnLeft node5 node6)
(isAgentOnNode agent1 node6)
(isNotBusyNode node6)
(isAbove node6 node11)
(isOnRight node6 node5)
(isOnLeft node6 node7)
(isNotBusyNode node7)
(isAbove node7 node12)
(isOnRight node7 node6)
(isNotBusyNode node8)
(isBelow node8 node2)
(isNotBusyNode node9)
(isBelow node9 node3)
(isAbove node9 node14)
(isOnLeft node9 node10)
(isNotBusyNode node10)
(isBelow node10 node4)
(isAbove node10 node15)
(isOnRight node10 node9)
(isBoxOnNode box1 node11)
(isNotBoxOnGoal box1)
(isBusyNode node11)
(isBelow node11 node6)
(isAbove node11 node17)
(isOnLeft node11 node12)
(isNotBusyNode node12)
(isBelow node12 node7)
(isOnRight node12 node11)
(isOnLeft node12 node13)
(isNotBusyNode node13)
(isAbove node13 node18)
(isOnRight node13 node12)
(isNotBusyNode node14)
(isBelow node14 node9)
(isAbove node14 node20)
(isOnLeft node14 node15)
(isBoxOnNode box2 node15)
(isNotBoxOnGoal box2)
(isBusyNode node15)
(isBelow node15 node10)
(isOnRight node15 node14)
(isOnLeft node15 node16)
(isGoalNode node16)
(isNotBusyNode node16)
(isAbove node16 node21)
(isOnRight node16 node15)
(isOnLeft node16 node17)
(isNotBusyNode node17)
(isBelow node17 node11)
(isAbove node17 node22)
(isOnRight node17 node16)
(isNotBusyNode node18)
(isBelow node18 node13)
(isAbove node18 node24)
(isNotBusyNode node19)
(isAbove node19 node25)
(isOnLeft node19 node20)
(isBoxOnNode box3 node20)
(isNotBoxOnGoal box3)
(isBusyNode node20)
(isBelow node20 node14)
(isAbove node20 node26)
(isOnRight node20 node19)
(isNotBusyNode node21)
(isBelow node21 node16)
(isAbove node21 node28)
(isOnLeft node21 node22)
(isNotBusyNode node22)
(isBelow node22 node17)
(isOnRight node22 node21)
(isOnLeft node22 node23)
(isGoalNode node23)
(isNotBusyNode node23)
(isAbove node23 node29)
(isOnRight node23 node22)
(isOnLeft node23 node24)
(isNotBusyNode node24)
(isBelow node24 node18)
(isOnRight node24 node23)
(isNotBusyNode node25)
(isBelow node25 node19)
(isOnLeft node25 node26)
(isNotBusyNode node26)
(isBelow node26 node20)
(isOnRight node26 node25)
(isOnLeft node26 node27)
(isGoalNode node27)
(isNotBusyNode node27)
(isAbove node27 node30)
(isOnRight node27 node26)
(isOnLeft node27 node28)
(isGoalNode node28)
(isNotBusyNode node28)
(isBelow node28 node21)
(isAbove node28 node31)
(isOnRight node28 node27)
(isBoxOnNode box4 node29)
(isNotBoxOnGoal box4)
(isBusyNode node29)
(isBelow node29 node23)
(isAbove node29 node33)
(isBoxOnNode box5 node30)
(isNotBoxOnGoal box5)
(isBusyNode node30)
(isBelow node30 node27)
(isAbove node30 node36)
(isOnLeft node30 node31)
(isGoalNode node31)
(isNotBusyNode node31)
(isBelow node31 node28)
(isAbove node31 node37)
(isOnRight node31 node30)
(isOnLeft node31 node32)
(isNotBusyNode node32)
(isOnRight node32 node31)
(isOnLeft node32 node33)
(isNotBusyNode node33)
(isBelow node33 node29)
(isOnRight node33 node32)
(isNotBusyNode node34)
(isAbove node34 node38)
(isOnLeft node34 node35)
(isNotBusyNode node35)
(isAbove node35 node39)
(isOnRight node35 node34)
(isNotBusyNode node36)
(isBelow node36 node30)
(isOnLeft node36 node37)
(isNotBusyNode node37)
(isBelow node37 node31)
(isOnRight node37 node36)
(isNotBusyNode node38)
(isBelow node38 node34)
(isOnLeft node38 node39)
(isNotBusyNode node39)
(isBelow node39 node35)
(isOnRight node39 node38)
)

(:goal
(and
(isBoxOnGoal box1)
(isBoxOnGoal box2)
(isBoxOnGoal box3)
(isBoxOnGoal box4)
(isBoxOnGoal box5)
)
)
)