# rails_magazzino

This is my first Rails app. It is a very basic web application for efficient management of orders, customers, and inventory developed in Rails 7 with Webpacker.


### Built With
<p align="left">
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons//rails/rails-plain.svg" width="40" height="40" />
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/postgresql/postgresql-original.svg" width="40" height="40" />
  <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/css3/css3-original-wordmark.svg" alt="css3" width="40" height="40"/>
  <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/html5/html5-original-wordmark.svg" alt="html5" width="40" height="40"/>
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/webpack/webpack-original.svg" width="40" height="40" />
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/yarn/yarn-original.svg" width="40" height="40" />
</p>


## Features

- CRUD any data with ease
- Custom actions
- Automatic form validation
- Filtering and ordering
- Supported ORMs: ActiveRecord

## Usage
The navbar on the top allows an easy navigation among the pages.
Every page include on the top left an ADD BUTTON in orange to add insert records.

Every page table includes EDIT (black) and DELETE (red) buttons. Additionally you can search for table records by using the appropriate search box. Some columns are sortable.

### Home page
Home page provides a brief summary of total customers, total items and total orders.
<img width="1792" alt="Screenshot 2024-07-26 alle 11 09 10" src="https://github.com/user-attachments/assets/1d982f12-06b6-422f-b9d9-a142f29f17d2">

### Orders page 
<img width="1786" alt="Screenshot 2024-07-26 alle 11 11 20" src="https://github.com/user-attachments/assets/c79721f1-ddf5-4a54-a496-7a644d7f1baa">

### Customers page
<img width="1792" alt="Screenshot 2024-07-26 alle 11 11 14" src="https://github.com/user-attachments/assets/75324dc0-4ce7-4d0f-bc64-da38b670eee3">
<img width="1787" alt="Screenshot 2024-07-26 alle 11 11 40" src="https://github.com/user-attachments/assets/1b960798-103f-4cdc-bd6b-66b35ba0cc11">

### Items page
<img width="1792" alt="Screenshot 2024-07-26 alle 11 09 25" src="https://github.com/user-attachments/assets/56b39b33-672c-4268-b5cb-25a3a63fb133">


## Installation
1. Clone Repo
   ```sh
   git clone https://github.com/ccrisc/rails-magazzino.git
   ```
2. Run `bundle install`
3. Run `rake:db:create`
4. Perform migration `rake:db:migrate`
5. Start a server `rails s` and administer your data at [localhost](http://localhost:3000/).

## Upgrading from 7.x
Due to introduction of Webpack/Webpacker support, some additional dependency and configuration will be needed.

## Configuration
Set up DB in `config/database.yml`:

## Support

If you think you found a bug in rails_magazzino, you can [submit an issue](https://github.com/ccrisc/rails_magazzino/issues/new).

## Supported Ruby Versions
- Ruby 3.1.2

## Contributing
See `CONTRIBUTING.md` for more information.

## License
Distributed under the GNU GENERAL PUBLIC LICENSE. See `LICENSE.txt` for more information.

