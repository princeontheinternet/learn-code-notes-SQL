--You are given a table, BST, containing two columns: N and P, where N represents the value of a node in Binary Tree, and P is the parent of N.

--Write a query to find the node type of Binary Tree ordered by the value of the node. Output one of the following for each node:

	--	Root: If node is root node.
	--	Leaf: If node is leaf node.
	--	Inner: If node is neither root nor leaf node.
	

SELECT
	CASE
		WHEN P IS NULL THEN concat(N, ' Root')
		WHEN N IN (SELECT DISTINCT P FROM BST) THEN concat(N, ' Inner')
		ELSE concat(N, ' Leaf')
	END AS col1
FROM BST
ORDER BY 1;



*Note: 

/*
● I can't use 
	"WHEN N NOT IN (SELECT DISTINCT P FROM BST) THEN concat(N, ' Leaf')"
	
● Bcz A NOT IN query will not return any rows if any NULLs exists in the list of NOT IN values.

● You can explicitly exclude them using IS NOT NULL as below.
	WHEN N NOT IN (SELECT DISTINCT P FROM BST WHERE P IS NOT NULL) THEN concat(N, ' Leaf')
	
● A WHERE clause must evaluate to True in order for the row to be returned but this is not possible with NOT IN when NULL is present as explained below.
		'A' NOT IN ('X','Y',NULL) is equivalent to 'A' <> 'X' AND 'A' <> 'Y' AND 'A' <> NULL)

			● 'A' <> 'X' = True
			● 'A' <> 'Y' = True
			● 'A' <> NULL = Unknown

*/