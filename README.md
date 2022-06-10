# bedag.github.io/styleguide

This the public deployment of our Bedag styleguide.

## Updating the Page

1. Make sure `bedag-angular-styleguide` is checked out in the same folder as this project
   * Check out the `master` branch and update to the latest version
   * Change the theme from violet to default by switching the theme import in `frontend/src/app/bedag-styles/_bedag-variables.scss` from `@import "src/app/bedag-styles/themes/bedag_ci_violet_theme"` to `@import 'src/app/bedag-styles/themes/bedag_classic_theme'`
2. Run `./update.sh` in this project. This will automatically
   * Build the styleguide
   * Copy the output into docs
   * Update base href
   * Copy `index.html` to `404.html` to make paths work
4. Make sure `update.sh` ran without errors
5. Commit and push the changes
