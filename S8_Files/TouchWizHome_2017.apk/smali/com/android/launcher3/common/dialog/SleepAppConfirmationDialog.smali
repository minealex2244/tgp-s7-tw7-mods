.class public Lcom/android/launcher3/common/dialog/SleepAppConfirmationDialog;
.super Landroid/app/DialogFragment;
.source "SleepAppConfirmationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final SLEEP_APP_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "SleepAppConfirmDialog"

.field private static final sFragmentTag:Ljava/lang/String; = "SleepAppConfirm"

.field private static sPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "content://com.samsung.android.sm/AppFreezer"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/common/dialog/SleepAppConfirmationDialog;->SLEEP_APP_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static createAndShow(Lcom/android/launcher3/Launcher;Ljava/lang/String;)V
    .locals 3
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 29
    sput-object p1, Lcom/android/launcher3/common/dialog/SleepAppConfirmationDialog;->sPackageName:Ljava/lang/String;

    .line 30
    new-instance v0, Lcom/android/launcher3/common/dialog/SleepAppConfirmationDialog;

    invoke-direct {v0}, Lcom/android/launcher3/common/dialog/SleepAppConfirmationDialog;-><init>()V

    .line 31
    .local v0, "f":Lcom/android/launcher3/common/dialog/SleepAppConfirmationDialog;
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "SleepAppConfirm"

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/dialog/SleepAppConfirmationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V
    .locals 2
    .param p0, "ft"    # Landroid/app/FragmentTransaction;
    .param p1, "manager"    # Landroid/app/FragmentManager;

    .prologue
    .line 39
    const-string v1, "SleepAppConfirm"

    invoke-virtual {p1, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 40
    .local v0, "dialog":Landroid/app/DialogFragment;
    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 42
    invoke-virtual {p0, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 44
    :cond_0
    return-void
.end method

.method public static isActive(Landroid/app/FragmentManager;)Z
    .locals 1
    .param p0, "manager"    # Landroid/app/FragmentManager;

    .prologue
    .line 35
    const-string v0, "SleepAppConfirm"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v5, 0x0

    .line 59
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    sget-object v0, Lcom/android/launcher3/common/dialog/SleepAppConfirmationDialog;->sPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 60
    const-string v0, "SleepAppConfirmDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requesting sleep app... : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/android/launcher3/common/dialog/SleepAppConfirmationDialog;->sPackageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-array v2, v12, [Ljava/lang/String;

    const-string v0, "extras"

    aput-object v0, v2, v5

    .line 62
    .local v2, "Columns":[Ljava/lang/String;
    const-string v11, "package_name = ?"

    .line 63
    .local v11, "whereClause":Ljava/lang/String;
    new-array v4, v12, [Ljava/lang/String;

    sget-object v0, Lcom/android/launcher3/common/dialog/SleepAppConfirmationDialog;->sPackageName:Ljava/lang/String;

    aput-object v0, v4, v5

    .line 64
    .local v4, "selectionArg":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 67
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher3/common/dialog/SleepAppConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/common/dialog/SleepAppConfirmationDialog;->SLEEP_APP_URI:Landroid/net/Uri;

    const-string v3, "package_name = ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 69
    if-eqz v6, :cond_1

    .line 70
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 72
    .local v10, "values":Landroid/content/ContentValues;
    const-string v0, "extras"

    const-string v1, "1"

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/launcher3/common/dialog/SleepAppConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/common/dialog/SleepAppConfirmationDialog;->SLEEP_APP_URI:Landroid/net/Uri;

    const-string v3, "package_name = ?"

    invoke-virtual {v0, v1, v10, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 77
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v9, "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/launcher3/common/dialog/SleepAppConfirmationDialog;->sPackageName:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v8, Landroid/content/Intent;

    const-string v0, "com.samsung.android.server.am.ACTION_UI_TRIGGER_POLICY"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    .local v8, "intent":Landroid/content/Intent;
    const-string v0, "POLICY_NAME"

    const-string v1, "applocker"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v0, "PACKAGE_NAME"

    invoke-virtual {v8, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 82
    invoke-virtual {p0}, Lcom/android/launcher3/common/dialog/SleepAppConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 85
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v7

    .line 86
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 91
    .end local v2    # "Columns":[Ljava/lang/String;
    .end local v4    # "selectionArg":[Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v11    # "whereClause":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 88
    .restart local v2    # "Columns":[Ljava/lang/String;
    .restart local v4    # "selectionArg":[Ljava/lang/String;
    .restart local v6    # "c":Landroid/database/Cursor;
    .restart local v11    # "whereClause":Ljava/lang/String;
    :cond_1
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/launcher3/common/dialog/SleepAppConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 50
    .local v0, "c":Landroid/content/Context;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f08008b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080069

    .line 51
    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f08001d

    .line 52
    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 54
    .local v1, "dialog":Landroid/app/Dialog;
    return-object v1
.end method
