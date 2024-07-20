## usersテーブル

| Column                    | Type          | Options                             |
|--------------------|-----------|--------------------------|
| email                        | string        | NOT NULL, UNIQUE         |
| encrypted_password | string    | NOT NULL                         |
| name                        | string        | NOT NULL                        |
| profile                       | text           | NOT NULL                        |
| occupation               | text           | NOT NULL                        |
| position                    | text            | NOT NULL                        |


has_many :prototypes
has_many :comments

## prototypesテーブル
| Column                    | Type          | Options                             |
|--------------------|-----------|--------------------------|
| title                          | string        | NOT NULL                         |
| catch_copy             | text           | NOT NULL                         |
| concept                   | text           | NOT NULL                        |
| user_id                    | references| NOT NULL, references users(id) |


has_many :comments
belongs_to :users

## commentsテーブル
| Column                    | Type          | Options                             |
|--------------------|-----------|--------------------------|
| content                    | text           | NOT NULL                         |
| prototype_id            | references| NOT NULL, references users(id)|
| user_id                     | references| NOT NULL, references users(id) |

belongs_to :prototypes
belongs_to :users

