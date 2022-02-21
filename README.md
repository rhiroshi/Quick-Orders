# Welcome Hackaton - Yellow Group
Hackaton prometed by OneBiteCode https://www.onebitcode.com

# Project Quick Orders
![quick-orders](https://uploaddeimagens.com.br/images/003/738/506/original/quickorders.gif)

## Stack

- ruby on rails ``6.1.4.6``
- ruby ``2.7.1``
- postgresql
- bootstrap ``5.1.3``
- dotenv-rails ``2.1.1``

# Mockup

<a href="https://github.com/derikbf/Quick-Orders/blob/master/app/assets/images//mockup.pdf" target="_blank">Acessar Link</a>

# Database diagram

![WhatsApp Image 2022-02-15 at 11 18 30](https://user-images.githubusercontent.com/15388320/154375251-0ba141d7-419e-4442-93d1-34a445ff7326.jpeg)

## Set up

1. Clone the project
```
git clone https://github.com/derikbf/Quick-Orders.git
```
```
cd Quick-Orders
```
2. Install dependencies
``` 
bundle install
``` 
``` 
yarn install || npm install
``` 

3. Configure .env file with your database information. 
<p> Create the .env file and configure:

![Config-file-env](https://uploaddeimagens.com.br/images/003/738/298/full/env.png)

4. Start the project
```
rails s
```

5. Create admin user with `rails create_user`. 
Enter rails console

```
rails c
```
 
```
User.create!(first_name: "Abc", last_name: "def", email: "abc@gmail.com", role: "admin", password: "Abc@123", password_confirmation: "Abc@123")
```
Role Options:
admin || mesero || chef 
