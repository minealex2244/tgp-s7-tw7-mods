.class public Lcom/sec/android/app/camera/receiver/SettingSoftResetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingSoftResetReceiver.java"


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 33
    const-string v0, "SettingSoftReset"

    iput-object v0, p0, Lcom/sec/android/app/camera/receiver/SettingSoftResetReceiver;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 37
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    invoke-static {p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->clearPreferences(Landroid/content/Context;)V

    .line 40
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_QUICK_LAUNCH_USING_HOME_KEY:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_QUICK_LAUNCH_USING_POWER_KEY:Z

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isOwner()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    iget-object v1, p0, Lcom/sec/android/app/camera/receiver/SettingSoftResetReceiver;->TAG:Ljava/lang/String;

    const-string v2, "update setting db for double tab launch as default value"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_QUICK_LAUNCH_USING_HOME_KEY:Z

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_QUICK_LAUNCH_USING_POWER_KEY:Z

    if-eqz v1, :cond_3

    .line 44
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isSoftwareNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "double_tab_launch"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 56
    :cond_1
    :goto_0
    return-void

    .line 47
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "double_tab_launch"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 49
    :cond_3
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_QUICK_LAUNCH_USING_HOME_KEY:Z

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_QUICK_LAUNCH_USING_POWER_KEY:Z

    if-eqz v1, :cond_4

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "double_tab_launch"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 52
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "double_tab_launch"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
