:: This batch file deletes the npm modules directory
:: then recreates it and re-installs the npm modules
:: I could've done "npm update" on each one but it took
:: too bloody long and bloated the directories
@Echo OFF
rmdir /s /q vui-npm-modules
echo "Removing directory"
mkdir vui-npm-modules\node_modules
echo "Creating directory"
call npm install --prefix ./vui-npm-modules vui-accordion-jquery
call npm install --prefix ./vui-npm-modules vui-breadcrumbs
call npm install --prefix ./vui-npm-modules vui-button
call npm install --prefix ./vui-npm-modules vui-change-tracking-jquery
call npm install --prefix ./vui-npm-modules vui-collapsible-section-jquery
call npm install --prefix ./vui-npm-modules vui-field
call npm install --prefix ./vui-npm-modules vui-focus
call npm install --prefix ./vui-npm-modules vui-gradient
call npm install --prefix ./vui-npm-modules vui-icons
call npm install --prefix ./vui-npm-modules vui-input
call npm install --prefix ./vui-npm-modules vui-link
call npm install --prefix ./vui-npm-modules vui-list
call npm install --prefix ./vui-npm-modules vui-offscreen
call npm install --prefix ./vui-npm-modules vui-typography
echo "***************done***************"
