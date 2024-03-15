(define (problem test25)
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
node40 - node
node41 - node
node42 - node
node43 - node
node44 - node
node45 - node
box1 - box
box2 - box
box3 - box
box4 - box
box5 - box
agent1 - agent
)

(:init
(isNotBusyNode node1)
(isAbove node1 node8)
(isOnLeft node1 node2)
(isNotBusyNode node2)
(isOnRight node2 node1)
(isOnLeft node2 node3)
(isNotBusyNode node3)
(isOnRight node3 node2)
(isOnLeft node3 node4)
(isNotBusyNode node4)
(isOnRight node4 node3)
(isOnLeft node4 node5)
(isNotBusyNode node5)
(isOnRight node5 node4)
(isOnLeft node5 node6)
(isNotBusyNode node6)
(isOnRight node6 node5)
(isOnLeft node6 node7)
(isNotBusyNode node7)
(isAbove node7 node9)
(isOnRight node7 node6)
(isNotBusyNode node8)
(isBelow node8 node1)
(isAbove node8 node10)
(isNotBusyNode node9)
(isBelow node9 node7)
(isAbove node9 node14)
(isNotBusyNode node10)
(isBelow node10 node8)
(isAbove node10 node15)
(isNotBusyNode node11)
(isAbove node11 node16)
(isOnLeft node11 node12)
(isNotBusyNode node12)
(isOnRight node12 node11)
(isOnLeft node12 node13)
(isNotBusyNode node13)
(isAbove node13 node17)
(isOnRight node13 node12)
(isNotBusyNode node14)
(isBelow node14 node9)
(isAbove node14 node18)
(isNotBusyNode node15)
(isBelow node15 node10)
(isAbove node15 node20)
(isNotBusyNode node16)
(isBelow node16 node11)
(isAbove node16 node21)
(isNotBusyNode node17)
(isBelow node17 node13)
(isAbove node17 node23)
(isNotBusyNode node18)
(isBelow node18 node14)
(isAbove node18 node25)
(isOnLeft node18 node19)
(isNotBusyNode node19)
(isAbove node19 node26)
(isOnRight node19 node18)
(isNotBusyNode node20)
(isBelow node20 node15)
(isAbove node20 node27)
(isGoalNode node21)
(isNotBusyNode node21)
(isBelow node21 node16)
(isAbove node21 node29)
(isOnLeft node21 node22)
(isNotBusyNode node22)
(isAbove node22 node30)
(isOnRight node22 node21)
(isOnLeft node22 node23)
(isBoxOnNode box1 node23)
(isNotBoxOnGoal box1)
(isGoalNode node23)
(isBusyNode node23)
(isBelow node23 node17)
(isAbove node23 node31)
(isOnRight node23 node22)
(isOnLeft node23 node24)
(isGoalNode node24)
(isNotBusyNode node24)
(isAbove node24 node32)
(isOnRight node24 node23)
(isOnLeft node24 node25)
(isNotBusyNode node25)
(isBelow node25 node18)
(isAbove node25 node33)
(isOnRight node25 node24)
(isOnLeft node25 node26)
(isNotBusyNode node26)
(isBelow node26 node19)
(isAbove node26 node34)
(isOnRight node26 node25)
(isNotBusyNode node27)
(isBelow node27 node20)
(isOnLeft node27 node28)
(isBoxOnNode box2 node28)
(isNotBoxOnGoal box2)
(isGoalNode node28)
(isBusyNode node28)
(isOnRight node28 node27)
(isOnLeft node28 node29)
(isNotBusyNode node29)
(isBelow node29 node21)
(isOnRight node29 node28)
(isOnLeft node29 node30)
(isNotBusyNode node30)
(isBelow node30 node22)
(isAbove node30 node35)
(isOnRight node30 node29)
(isOnLeft node30 node31)
(isBoxOnNode box3 node31)
(isNotBoxOnGoal box3)
(isBusyNode node31)
(isBelow node31 node23)
(isAbove node31 node36)
(isOnRight node31 node30)
(isOnLeft node31 node32)
(isNotBusyNode node32)
(isBelow node32 node24)
(isAbove node32 node37)
(isOnRight node32 node31)
(isOnLeft node32 node33)
(isNotBusyNode node33)
(isBelow node33 node25)
(isOnRight node33 node32)
(isOnLeft node33 node34)
(isNotBusyNode node34)
(isBelow node34 node26)
(isOnRight node34 node33)
(isBoxOnNode box4 node35)
(isNotBoxOnGoal box4)
(isBusyNode node35)
(isBelow node35 node30)
(isAbove node35 node41)
(isOnLeft node35 node36)
(isBoxOnNode box5 node36)
(isNotBoxOnGoal box5)
(isGoalNode node36)
(isBusyNode node36)
(isBelow node36 node31)
(isAbove node36 node42)
(isOnRight node36 node35)
(isOnLeft node36 node37)
(isNotBusyNode node37)
(isBelow node37 node32)
(isOnRight node37 node36)
(isNotBusyNode node38)
(isAbove node38 node43)
(isOnLeft node38 node39)
(isNotBusyNode node39)
(isAbove node39 node44)
(isOnRight node39 node38)
(isOnLeft node39 node40)
(isNotBusyNode node40)
(isAbove node40 node45)
(isOnRight node40 node39)
(isAgentOnNode agent1 node41)
(isNotBusyNode node41)
(isBelow node41 node35)
(isOnLeft node41 node42)
(isNotBusyNode node42)
(isBelow node42 node36)
(isOnRight node42 node41)
(isNotBusyNode node43)
(isBelow node43 node38)
(isOnLeft node43 node44)
(isNotBusyNode node44)
(isBelow node44 node39)
(isOnRight node44 node43)
(isOnLeft node44 node45)
(isNotBusyNode node45)
(isBelow node45 node40)
(isOnRight node45 node44)
)

(:goal
(
and
(isBoxOnGoal box1)
(isBoxOnGoal box2)
(isBoxOnGoal box3)
(isBoxOnGoal box4)
(isBoxOnGoal box5)
)
)
)