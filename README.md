# backup-dhcp-scopes-powershell
## Step by step backup and delete Microsoft DHCP server scopes with powershell from Windows Task Scheduler

1. Prepare the backup powershell script file. (You can use and reference powershell file from [here](./backup-dhcp-scopes.ps1))

2. Prepare the delete older 90 days powershell script file. (You can use and reference powershell file from [here](./delete-dhcp-scopes-auto-90days.ps1))

3. Create service account and grant permission for Windows Task Scheduler.
    * Create sevice account

    ![create svc account](./images/svc-create.png "Create Service Account for Task scheduler")

    * Grant Windows Administrator Permission

    ![create svc account](./images/grant-permission.png "Grant permission for Service Account which was created previously")


4. Then create windows Task scheduler for respective powershell files.

    *  Create a new task.

        ![create new task](./images/backup-scopes01.png)

    * Configure Schedule Time for task.

        ![shchedule time](./images/backup-scopes01-time.png)

    * Choose and define action for task.(choose program to "powershell" and add File as Argument)
        ```
        -File C:\your-powershell-file-location\your-powershell-file.ps1
        ```

        ![Action for backup scope](./images/backup-scopes01-action.png)
    * Choose option for "Run whether user is logined or not" and type service account password which was created previously.

        ![choose-where-user-is-logined-in-or-not](./images/backup-scopes-auto-run-login-or-not.png)
5. If the trigger run automatically the backup task will start and you will see back folder under your predefined location.

    ![backup-result](./images/backup-scopes01-final-result.png)

## Auto Clean after 90 days backup

Please do the above same way with dhcp scope backup taks to create new Task scheduler for auto clean after 90 days backup files.

## reference-url
[click-here-for-Microsoft-Docs](https://docs.microsoft.com/en-us/powershell/module/dhcpserver/backup-dhcpserver?view=windowsserver2019-ps)