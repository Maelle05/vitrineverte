# README

#BDD init
rails g scaffold User first_name:string
last_name:string
phone:string
email:string

rails g scaffold Farm user:references name:string address:string zipcode:string city:string hours:text payment:text phone:string email:string description:string

rails g scaffold Product farm:references
name:string
description:string
price:float
price_kind:string
quantity:integer active:boolean

rails g scaffold Order user:references
farm:references
ready:bool
taken:bool

rails g scaffold ProductInOrder order:references
product:references
quantity:integer

rails g devise User

# vitrineverte

test push
