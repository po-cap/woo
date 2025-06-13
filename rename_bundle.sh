#!/bin/bash

printf "請輸入bundle名: "; read bundle_name;
printf "請輸入app名: "; read app_name;

dart pub global activate rename;

flutter pub global run rename setBundleId --value ${bundle_name}
flutter pub global run rename setAppName --value ${app_name} 
