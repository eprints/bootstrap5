# Bootstrap5 Styling Ingredient
## _Styling internal pages and icons of EPrints3.4 using the Bootstrap css and icon libraries_

> https://getbootstrap.com/
> https://icons.getbootstrap.com/

> Not currently compatible in a release version of EPrints

> Not back compatible with bootstrap4, although many of the classnames are the same & these can be easily changed 

Utilizing a recently added feature in EPrints found in `perl_lib/EPrints/XML.pm` `sub create_element`.

## Installation
1. Create a local copy of `lib/cfg.d/build_attributes.pl`.
2. In `<path>/<to>/<your>/cfg.d/build_attributes.pl` remove the comment block surrounding the sub routine.
3. Checkout this ingredient in `./ingredients/`.
4. Add the ingredient to your flavours inc file `ingredients/bootstrap5`.
5. If you already have bootstrap 5 included in your EPrints installation, disable or delete the file `bs5_dependencies.pl` within this ingredient. 
6. Icons and classes are kept in separate files, dispable what you do not want to use
6. Reload the webserver.

## Features
- Internal pages of EPrints will have a limited bootstrap theme applied to them
- This can be used as a template for including other css libraries
- Adding icons to internal pages of EPrints3.4 using the Bootstrap icons library
