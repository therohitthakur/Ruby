# Ruby
Implementing a basic soft delete functionality for a Ruby on Rails model named Item.
@Author Sandy Sareon

# Soft Delete Functionality for Ruby on Rails Model - Item

## Introduction

This repository contains the implementation of a basic soft delete functionality for a Ruby on Rails model named `Item`. Soft deletes involve marking records as "deleted" without physically removing them from the database. This is commonly used to implement features such as a trash/recycle bin.

## Table of Contents

- [Model Creation](#model-creation)
- [Soft Delete Implementation](#soft-delete-implementation)
- [Default Scope](#default-scope)
- [Testing](#testing)


## Model Creation

The `Item` model has been created with the following attributes:

- `name` (string)
- `deleted_at` (datetime)

## Soft Delete Implementation

The `Item` model includes two methods for soft delete:

1. `soft_delete`: Marks an item as deleted by updating the `deleted_at` attribute with the current timestamp.
2. `restore`: Restores a soft-deleted item by setting the `deleted_at` attribute to `nil`.

## Default Scope

A default scope has been added to the `Item` model to exclude "deleted" items from normal queries. This ensures that soft-deleted items are not included in regular database queries.

class Item < ApplicationRecord
  default_scope { where(deleted_at: nil) }
end
## Testing

RSpec tests have been implemented to ensure the correct functionality of soft delete features. These tests cover:

Soft deleting an item.
Restoring a soft-deleted item.
Verifying that soft-deleted items are excluded from normal queries.

bundle exec rspec

