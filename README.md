# Rails 7 with React Frontend Setup

A brief guide to setting up a Ruby on Rails v7 project with React on Ubuntu 20.04.

## Prerequisites

- Ruby on Rails v7: The latest version of Rails, offering improved JavaScript integration options.
- Node.js: A JavaScript runtime necessary for managing JavaScript packages.
- Yarn: A fast, reliable, and secure dependency management tool for JavaScript.
- PostgreSQL: A robust, SQL-compliant database system, recommended for production-grade applications.

## Set up
Generate a new Rails project, specifying PostgreSQL for the database and esbuild for JavaScript processing, to lay the foundation for React integration:

## Prepare Database 
rails db:create db:migrate

## Install React
yarn add react react-dom

## Craft React Components
mkdir app/javascript/components

## Configure Rails to Serve React
root 'homepage#index'
get '/*path', to: 'homepage#index'

