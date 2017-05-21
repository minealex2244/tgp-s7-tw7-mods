.class Lcom/android/launcher3/Launcher$2;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Lcom/android/launcher3/proxy/LauncherActivityProxyCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Launcher;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 482
    iput-object p1, p0, Lcom/android/launcher3/Launcher$2;->this$0:Lcom/android/launcher3/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private callAppsButtonEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 530
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 531
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    .line 532
    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getAppsButtonEnabled()Z

    move-result v2

    if-ne v2, p1, :cond_1

    .line 533
    :cond_0
    const-string v2, "Launcher"

    const-string v3, "setAppsButtonEnabled return"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :goto_0
    return-void

    .line 537
    :cond_1
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "showApps"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 538
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "showApps"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 539
    iget-object v2, p0, Lcom/android/launcher3/Launcher$2;->this$0:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.launcher3.home.AppsButtonSettingsActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 541
    iget-object v2, p0, Lcom/android/launcher3/Launcher$2;->this$0:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 542
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 543
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecurityException e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addToSecureFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 2
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/launcher3/Launcher$2;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    .line 593
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 592
    invoke-static {v0, v1}, Lcom/android/launcher3/util/SecureFolderHelper;->addAppToSecureFolder(Landroid/content/Context;Ljava/lang/String;)V

    .line 594
    return-void
.end method

.method public canAppAddToSecureFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z
    .locals 3
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 603
    const/4 v0, 0x0

    .line 605
    .local v0, "result":Z
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 606
    iget-object v1, p0, Lcom/android/launcher3/Launcher$2;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    .line 607
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 606
    invoke-static {v1, v2}, Lcom/android/launcher3/util/SecureFolderHelper;->canAddAppToSecureFolder(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 610
    .end local v0    # "result":Z
    :cond_0
    return v0
.end method

.method public changeHomeStyle(Z)V
    .locals 3
    .param p1, "homeOnlyMode"    # Z

    .prologue
    .line 649
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.CHANGE_HOMEONLYMODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 650
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "homeOnlyeMode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 651
    iget-object v1, p0, Lcom/android/launcher3/Launcher$2;->this$0:Lcom/android/launcher3/Launcher;

    const-string v2, "com.samsung.android.launcher.permission.CHANGE_HOMEONLYMODE"

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/Launcher;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 652
    return-void
.end method

.method public clearBadge(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 7
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 615
    instance-of v4, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v4, :cond_0

    move-object v2, p1

    .line 616
    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 617
    .local v2, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 619
    .local v0, "componentName":Landroid/content/ComponentName;
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.intent.action.BADGE_COUNT_UPDATE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 620
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "badge_count_package_name"

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 621
    const-string v4, "badge_count_class_name"

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 622
    const-string v4, "badge_count"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 623
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 624
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/item/IconInfo;->getUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/item/IconInfo;->getUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 625
    iget-object v4, p0, Lcom/android/launcher3/Launcher$2;->this$0:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/item/IconInfo;->getUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/android/launcher3/Launcher;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 633
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 627
    .restart local v0    # "componentName":Landroid/content/ComponentName;
    .restart local v2    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/Launcher$2;->this$0:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4, v3}, Lcom/android/launcher3/Launcher;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 629
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 630
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "Launcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeBadge():Can\'t send the broadcast >>> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableAllAppsBadge(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 664
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getSettingsActivity()Lcom/android/launcher3/SettingsActivity;

    move-result-object v0

    .line 665
    .local v0, "activity":Lcom/android/launcher3/SettingsActivity;
    if-eqz v0, :cond_0

    .line 666
    invoke-virtual {v0, p1}, Lcom/android/launcher3/SettingsActivity;->enableAllAppsBadge(Z)Z

    move-result v1

    .line 668
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableSingleAppBadge(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 673
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getSettingsActivity()Lcom/android/launcher3/SettingsActivity;

    move-result-object v0

    .line 674
    .local v0, "activity":Lcom/android/launcher3/SettingsActivity;
    if-eqz v0, :cond_0

    .line 675
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/SettingsActivity;->enableSingleAppBadge(Ljava/lang/String;Z)Z

    move-result v1

    .line 677
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enterBadgeManagementView()V
    .locals 2

    .prologue
    .line 656
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getSettingsActivity()Lcom/android/launcher3/SettingsActivity;

    move-result-object v0

    .line 657
    .local v0, "activity":Lcom/android/launcher3/SettingsActivity;
    if-eqz v0, :cond_0

    .line 658
    invoke-virtual {v0}, Lcom/android/launcher3/SettingsActivity;->showBadgeManagerSettings()V

    .line 660
    :cond_0
    return-void
.end method

.method public enterHomeSettingChangeModeView()V
    .locals 5

    .prologue
    .line 638
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 639
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/launcher3/Launcher$2;->this$0:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.launcher3.home.HomeModeChangeActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 641
    iget-object v2, p0, Lcom/android/launcher3/Launcher$2;->this$0:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 642
    :catch_0
    move-exception v0

    .line 643
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecurityException e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enterHomeSettingView()V
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/launcher3/Launcher$2;->this$0:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->startHomeSettingActivity()V

    .line 487
    return-void
.end method

.method public hideApps(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 549
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz p1, :cond_0

    .line 550
    iget-object v0, p0, Lcom/android/launcher3/Launcher$2;->this$0:Lcom/android/launcher3/Launcher;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/Launcher;->updateItemInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 552
    :cond_0
    return-void
.end method

.method public hideAppsButton()V
    .locals 1

    .prologue
    .line 526
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher$2;->callAppsButtonEnabled(Z)V

    .line 527
    return-void
.end method

.method public isAlreadySleepMode(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 516
    if-eqz p1, :cond_0

    .line 517
    iget-object v0, p0, Lcom/android/launcher3/Launcher$2;->this$0:Lcom/android/launcher3/Launcher;

    invoke-static {v0, p1}, Lcom/android/launcher3/util/AppFreezerUtils;->isInSleepMode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    const/4 v0, 0x1

    .line 521
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAvailableSleepMode(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 506
    if-eqz p1, :cond_0

    .line 507
    iget-object v0, p0, Lcom/android/launcher3/Launcher$2;->this$0:Lcom/android/launcher3/Launcher;

    invoke-static {v0, p1}, Lcom/android/launcher3/util/AppFreezerUtils;->canPutIntoSleepMode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    const/4 v0, 0x1

    .line 511
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnableAppsButton()Z
    .locals 1

    .prologue
    .line 496
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getAppsButtonEnabled()Z

    move-result v0

    return v0
.end method

.method public isHomeOnlyMode()Z
    .locals 1

    .prologue
    .line 501
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    return v0
.end method

.method public isSecureFolderSetup()Z
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/android/launcher3/Launcher$2;->this$0:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/util/SecureFolderHelper;->isSecureFolderExist(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public putToSleepMode(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 2
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 583
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    if-nez v0, :cond_1

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 586
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher$2;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    .line 587
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 586
    invoke-static {v0, v1}, Lcom/android/launcher3/common/dialog/SleepAppConfirmationDialog;->createAndShow(Lcom/android/launcher3/Launcher;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showAppsButton()V
    .locals 1

    .prologue
    .line 491
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher$2;->callAppsButtonEnabled(Z)V

    .line 492
    return-void
.end method

.method public unHideApps(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 556
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz p1, :cond_0

    .line 557
    iget-object v0, p0, Lcom/android/launcher3/Launcher$2;->this$0:Lcom/android/launcher3/Launcher;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/Launcher;->updateItemInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 559
    :cond_0
    return-void
.end method

.method public uninstallOrDisableApp(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 9
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 563
    const/4 v7, 0x0

    .line 564
    .local v7, "flags":I
    instance-of v0, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v0, :cond_0

    move-object v8, p1

    .line 565
    check-cast v8, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 567
    .local v8, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    iget v7, v8, Lcom/android/launcher3/common/base/item/IconInfo;->flags:I

    .line 568
    and-int/lit8 v0, v7, 0x1

    if-nez v0, :cond_1

    .line 569
    iget-object v0, p0, Lcom/android/launcher3/Launcher$2;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v1, v8, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iget-object v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    .line 570
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v8, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    .line 571
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/android/launcher3/Launcher$2;->this$0:Lcom/android/launcher3/Launcher;

    .line 572
    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, v8, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v5, p0, Lcom/android/launcher3/Launcher$2;->this$0:Lcom/android/launcher3/Launcher;

    .line 573
    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const/4 v6, 0x0

    .line 569
    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/common/dialog/DisableAppConfirmationDialog;->createAndShow(Landroid/content/Context;Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/app/FragmentManager;Ljava/lang/Runnable;)V

    .line 579
    .end local v8    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_0
    :goto_0
    return-void

    .line 575
    .restart local v8    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher$2;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v7, v2, v3}, Lcom/android/launcher3/Launcher;->startApplicationUninstallActivity(Landroid/content/ComponentName;ILcom/android/launcher3/common/compat/UserHandleCompat;Z)Z

    goto :goto_0
.end method
