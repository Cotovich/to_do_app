#### to do:

tasks
id parent_task_id list_id user_id is_active title body

tasks has subtasks (self reference)

-------------------------------------------------------

lists
id author_id is_active archived

-------------------------------------------------------

- nicknames must be unique (db level)

##### additional
- create friends table
    I need to have an opportunity to connect users to each other via friends table
    has many friends (self reference through additional table)
- separate table for friendship requests
- friend must see friendship requests
- allow users to add friends to the lists
- friends must be able to see lists

- lists has many users (additional table)