# Keycloak Luna Theme

This project is a sub project for [Luna](https://github.com/e-mothep/luna-app-front) used to theme the keycloak login pages and mail template.
## Installation

Install Keycloak (v26).  
The theme will be cloned inside the keycloak folder.

```bash
rm -rf themes/
git clone git@github.com:e-mothep/keycloak-theme-luna-app.git themes
```

## Running Keycloak

```bash
./bin/kc.sh start-dev --spi-theme-cache-themes=false --spi-theme-cache-templates=false
```
In a browser go to localhost:8080.  
You should get to the keycloak interface to setup an admin account.

## Configuring Keycloak

### Configure the theme
http://localhost:8080/admin/master/console/#/master/realm-settings/themes

You must pick the luna-theme for the login and e-mail template themes.

### Configure the localization
http://localhost:8080/admin/master/console/#/master/realm-settings/localization  
You can set the localization to see the translation working.

### Configure the mail provider

http://localhost:8080/admin/master/console/#/master/realm-settings/email  
Provide the right information according to the operations team to be able to send and receive mails
## Run Locally

To test the changes on the theme, you must manually in keycloak create a user with your mail and select actions for it to receives mails and see the page.

## Deployment

- Commit and push on master, the CI/CD will build a release.
- Then you must contact the Keycloak administrator to install the release in Keycloak
- Keycloak must be restarted in order to apply the changes.
