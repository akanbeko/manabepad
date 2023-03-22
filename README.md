## usersテーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| name               | string | null: false               |
| encrypted_password | string | null: false               |
| email              | string | null: false, unique: true |
| user_phone         | string | null: false               |
| occupation         | integer| null: false               |


### Association
has_many :sites
has_many :datas

## sitesテーブル
| Column             |Type        | Options                        |
| ------------------ | ---------- | ------------------------------ |
| user               | references | null: false, foreign_key: true |
| sitename           | string     | null: false                    |
| home_address       | string     | null: false                    |
| site_address       | string     | null: false                    |
| progress           | string     | null: false                    |
| site_phone         | string     | null: false                    |
| construcion_date   | string     | null: false                    |
| remark             | text       | null: false                    |


### Association
belongs_to :user
has_one :site


## dataテーブル
| Column         |Type        | Options                        |
| -------------- | ---------- | ------------------------------ |
| user           | references | null: false, foreign_key: true |
| site           | references | null: false, foreign_key: true |

### Association
belongs_to :user
belongs_to :site
has_one :document


## documentテーブル
| Column             | Type       | Options                        |
| ------------------ | ---------- | -------------------------------|
| data               | references | null: false, foreign_key: true |
| pdf                | string     | null: false                    |
| jpg                | string    | null: false                    |

### Association
belongs_to :data

## commentテーブル
| Column             | Type       | Options                        |
| ------------------ | ---------- | -------------------------------|
| user               | references | null: false, foreign_key: true |
| text               | text       | null: false                    |
