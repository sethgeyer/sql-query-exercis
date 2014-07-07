# SQL Exercise

Let's write some SQL!

In this exercise we are going to practice writing SQL against an e-commerce database.

We will be working with four tables: customers, items, orders, and orderitems.

**customers**

    Column   |  Type   |                       Modifiers
    ---------+---------+--------------------------------------------------------
     id      | integer | not null default nextval('customers_id_seq'::regclass)
     name    | text    |
     email   | text    |
     address | text    |
     city    | text    |
     state   | text    |
     zipcode | text    |

**items**

     Column      |  Type   |                     Modifiers
    -------------+---------+----------------------------------------------------
     id          | integer | not null default nextval('items_id_seq'::regclass)
     name        | text    |
     description | text    |

**orders**

     Column      |  Type   |                      Modifiers
    -------------+---------+-----------------------------------------------------
     id          | integer | not null default nextval('orders_id_seq'::regclass)
     customer_id | integer |
     amount      | numeric |

 **orderitems**

       Column  |  Type   |                        Modifiers
     ----------+---------+---------------------------------------------------------
      id       | integer | not null default nextval('orderitems_id_seq'::regclass)
      order_id | integer |
      item_id  | integer |

## Setup

1. Fork and clone this repository
1. Import the Tracker stories in `stories.csv`

## Exercise

For each story, copy the SQL output from psql into a text file in the output directory with the stories Tracker id.

So for the 'display all customers' story, paste this into a file called output/story_74489098.txt that looks like this:

        exercisedb=# select * from customers;
         id |         name         |              email               |       address       |       city       |   state    |  zipcode
        ----+----------------------+----------------------------------+---------------------+------------------+------------+------------
          1 | Donato Rempel        | ladarius@waelchi.org             | 890 Ullrich Plains  | Janachester      | Virginia   | 77714
          2 | Tyrell Von DDS       | cleo_frami@bartondenesik.name    | 63337 Abdullah Camp | Verdieborough    | Colorado   | 69882-7027
          3 | Ms. Sofia Rowe       | jacky_funk@bayerprosacco.name    | 1991 Kyler Village  | Opheliaborough   | Ohio       | 15599-5395
          4 | Evert Pfeffer        | alisa.luettgen@hoeger.org        | 1311 Khalil Shores  | Port Ozella      | Arizona    | 34713
          5 | Elta Dicki           | lesly@heaney.org                 | 3878 Alyce Lock     | Deckowtown       | Montana    | 42114-6195
          6 | Zelma Davis          | osborne@mohr.biz                 | 184 Hazel Lane      | Alport           | Ohio       | 87119
          7 | Edna Hintz           | elisha_mclaughlin@pouros.biz     | 2550 Hassan Pass    | North Kelliestad | California | 40909-5637
          8 | Coleman Prohaska Jr. | taryn.becker@doyle.org           | 32202 Zemlak Ridge  | Rigobertoside    | Colorado   | 95667-8653
          9 | Wilhelmine Huels     | alexander_rice@ornjakubowski.com | 44097 Elvie Divide  | West Lauryntown  | Maine      | 55164-9178
         10 | Hulda Will III       | ella_sanford@stracke.com         | 3746 Ashton Divide  | Mikeberg         | Florida    | 22826
        (10 rows)

You can find the story id in tracker when you expand the story details.
