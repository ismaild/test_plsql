test_plsql
----------

Example project of unit testing oracle plsql with rspec. There are  commercial 'unit testing' tools though most are visual using point and click test setup, tests are stored in the database and are quite complex to read.

Rspec is better. You describes your tests in a clear consise manner, and it has the benefit of actually reading like documentation for your code.

The example makes use of the following libraries:

https://github.com/rsim/oracle-enhanced

https://github.com/rsim/ruby-plsql

https://github.com/rsim/ruby-plsql-spec

Instructions
------------
1. Set up Oracle XE locally either manually or using vagrant - https://github.com/hilverd/vagrant-ubuntu-oracle-xe

2. Install the HR Schema in /sql using sqlplus

3. Install ruby - https://www.ruby-lang.org

4. Install bundler - http://bundler.io/

5. run `bundle install`

6. Edit config/database.yml with your DB settings

7. run `rspec -f d`

You should get output like this:

```
Award bonus
  should calculate base salary 1000 + sales amount 1234.55 * commission percentage 0.1 = salary 1123.46
  should calculate base salary NULL + sales amount 1234.56 * commission percentage 0.1 = salary 123.46
  should calculate base salary 1000 + sales amount 1234.54 * commission percentage 0.1 = salary 1123.45
  should raise ORA-06510 exception if commission percentage is missing

Between String
  should substring from anywhere in the string
  should substring from the start of the string
  should substring when the end param is greater than end of the string
  should not return anything for a null string

Finished in 0.07491 seconds
8 examples, 0 failures
```

