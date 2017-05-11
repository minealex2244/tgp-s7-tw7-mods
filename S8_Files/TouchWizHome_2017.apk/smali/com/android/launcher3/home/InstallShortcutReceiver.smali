.class public Lcom/android/launcher3/home/InstallShortcutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstallShortcutReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;
    }
.end annotation


# static fields
.field private static final ACTION_INSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.INSTALL_SHORTCUT"

.field private static final APP_SHORTCUT_TYPE_KEY:Ljava/lang/String; = "isAppShortcut"

.field private static final DBG:Z = false

.field static final EXTRA_SHORTCUT_DUPLICATE:Ljava/lang/String; = "duplicate"

.field private static final ICON_KEY:Ljava/lang/String; = "icon"

.field private static final ICON_RESOURCE_NAME_KEY:Ljava/lang/String; = "iconResource"

.field private static final ICON_RESOURCE_PACKAGE_NAME_KEY:Ljava/lang/String; = "iconResourcePackage"

.field private static final LAUNCH_INTENT_KEY:Ljava/lang/String; = "intent.launch"

.field private static final NAME_KEY:Ljava/lang/String; = "name"

.field static final NEW_SHORTCUT_BOUNCE_DURATION:I = 0x1c2

.field static final NEW_SHORTCUT_STAGGER_DELAY:I = 0x55

.field private static final TAG:Ljava/lang/String; = "InstallShortcutReceiver"

.field private static final THEME_STORE_PACKAGE:Ljava/lang/String; = "com.samsung.android.themestore"

.field private static final USER_HANDLE_KEY:Ljava/lang/String; = "userHandle"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Intent;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Class;

    .prologue
    .line 72
    invoke-static {p0, p1, p2}, Lcom/android/launcher3/home/InstallShortcutReceiver;->isValidExtraType(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/home/InstallShortcutReceiver;Landroid/content/Context;Landroid/content/Intent;Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/InstallShortcutReceiver;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;
    .param p3, "x3"    # Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/home/InstallShortcutReceiver;->updateContactShortcut(Landroid/content/Context;Landroid/content/Intent;Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/home/InstallShortcutReceiver;Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/InstallShortcutReceiver;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/ComponentName;

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/home/InstallShortcutReceiver;->hasActivityForComponent(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/home/InstallShortcutReceiver;Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/InstallShortcutReceiver;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/home/InstallShortcutReceiver;->shortcutExistsOnHomeOnlyMode(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/home/InstallShortcutReceiver;Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/InstallShortcutReceiver;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/content/Intent;

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/home/InstallShortcutReceiver;->shortcutExistsOnHomeOnlyMode(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;)Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;

    .prologue
    .line 72
    invoke-static {p0}, Lcom/android/launcher3/home/InstallShortcutReceiver;->convertToLauncherActivityIfPossible(Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;)Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher3/home/InstallShortcutReceiver;Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/InstallShortcutReceiver;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/home/InstallShortcutReceiver;->uninstallShortcutExistInQueue(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/launcher3/home/InstallShortcutReceiver;Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/InstallShortcutReceiver;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/home/InstallShortcutReceiver;->shortcutExistInQueue(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static convertKnoxLiveIconIntent(Landroid/content/Intent;Landroid/content/Intent;)Z
    .locals 5
    .param p0, "launchIntent"    # Landroid/content/Intent;
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 490
    invoke-static {p0}, Lcom/android/launcher3/common/view/IconView;->isKnoxShortcut(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 491
    const-string v2, "userid"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 492
    .local v1, "userId":I
    const-string v2, "liveicon_cmpname"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, "pkgName":Ljava/lang/String;
    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    invoke-static {v0}, Lcom/android/launcher3/common/view/LiveIconManager;->isLiveIconPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 494
    const-string v2, "userid"

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 495
    const-string v2, "liveicon_cmpname"

    invoke-virtual {p0, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 496
    const-string v2, "InstallShortcutReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "convertKnoxLiveIconIntent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    const/4 v2, 0x1

    .line 500
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v1    # "userId":I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static convertToLauncherActivityIfPossible(Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;)Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;
    .locals 8
    .param p0, "original"    # Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;

    .prologue
    .line 718
    invoke-virtual {p0}, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->isLuncherActivity()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 752
    .end local p0    # "original":Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;
    :cond_0
    :goto_0
    return-object p0

    .line 723
    .restart local p0    # "original":Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;
    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/launcher3/util/DualAppUtils;->supportDualApp(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 724
    invoke-virtual {v4}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "com.samsung.android.da.daagent"

    .line 725
    invoke-virtual {p0}, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 726
    const-string v4, "InstallShortcutReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "This is Dual IM app shortcut "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    iget-object v4, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v1

    .line 728
    .local v1, "launcherApps":Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    iget-object v4, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    move-result-object v2

    .line 729
    .local v2, "launcherInfo":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    if-eqz v2, :cond_2

    .line 730
    new-instance v4, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;

    iget-object v5, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    iget-wide v6, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->requestTime:J

    invoke-direct {v4, v2, v5, v6, v7}, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;-><init>(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Landroid/content/Context;J)V

    move-object p0, v4

    goto :goto_0

    .line 732
    :cond_2
    const-string v4, "InstallShortcutReceiver"

    const-string v5, "This is Dual IM app shortcut. But launcherInfo is null!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 736
    .end local v1    # "launcherApps":Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    .end local v2    # "launcherInfo":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    :cond_3
    iget-object v4, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    invoke-static {v4}, Lcom/android/launcher3/Utilities;->isLauncherAppTarget(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 737
    invoke-virtual {p0}, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->getUser()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v4

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 742
    iget-object v4, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 743
    .local v3, "pm":Landroid/content/pm/PackageManager;
    iget-object v4, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 745
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    .line 750
    iget-object v4, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    .line 751
    invoke-static {v0, v4}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->fromResolveInfo(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    move-result-object v2

    .line 752
    .restart local v2    # "launcherInfo":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    new-instance v4, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;

    iget-object v5, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    iget-wide v6, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->requestTime:J

    invoke-direct {v4, v2, v5, v6, v7}, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;-><init>(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Landroid/content/Context;J)V

    move-object p0, v4

    goto/16 :goto_0
.end method

.method static decode(Ljava/lang/String;Landroid/content/Context;)Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;
    .locals 22
    .param p0, "encoded"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 659
    :try_start_0
    new-instance v18, Lorg/json/JSONTokener;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/json/JSONObject;

    .line 660
    .local v14, "object":Lorg/json/JSONObject;
    const-string v18, "intent.launch"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x4

    invoke-static/range {v18 .. v19}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v13

    .line 662
    .local v13, "launcherIntent":Landroid/content/Intent;
    const-string v18, "time"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 664
    .local v16, "requestTime":J
    const-string v18, "isAppShortcut"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 666
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v18

    const-string v19, "userHandle"

    .line 667
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getUserForSerialNumber(J)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v15

    .line 668
    .local v15, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    if-nez v15, :cond_0

    .line 669
    const/16 v18, 0x0

    .line 707
    .end local v13    # "launcherIntent":Landroid/content/Intent;
    .end local v14    # "object":Lorg/json/JSONObject;
    .end local v15    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    .end local v16    # "requestTime":J
    :goto_0
    return-object v18

    .line 672
    .restart local v13    # "launcherIntent":Landroid/content/Intent;
    .restart local v14    # "object":Lorg/json/JSONObject;
    .restart local v15    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    .restart local v16    # "requestTime":J
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v18

    .line 673
    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v15}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    move-result-object v12

    .line 674
    .local v12, "info":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    if-nez v12, :cond_1

    const/16 v18, 0x0

    goto :goto_0

    :cond_1
    new-instance v18, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-wide/from16 v2, v16

    invoke-direct {v0, v12, v1, v2, v3}, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;-><init>(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Landroid/content/Context;J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 702
    .end local v12    # "info":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .end local v13    # "launcherIntent":Landroid/content/Intent;
    .end local v14    # "object":Lorg/json/JSONObject;
    .end local v15    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    .end local v16    # "requestTime":J
    :catch_0
    move-exception v6

    .line 703
    .local v6, "e":Lorg/json/JSONException;
    const-string v18, "InstallShortcutReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Exception reading shortcut to add: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    .end local v6    # "e":Lorg/json/JSONException;
    :goto_1
    const/16 v18, 0x0

    goto :goto_0

    .line 677
    .restart local v13    # "launcherIntent":Landroid/content/Intent;
    .restart local v14    # "object":Lorg/json/JSONObject;
    .restart local v16    # "requestTime":J
    :cond_2
    :try_start_1
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 678
    .local v5, "data":Landroid/content/Intent;
    const-string v18, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 679
    const-string v18, "android.intent.extra.shortcut.NAME"

    const-string v19, "name"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 681
    const-string v18, "icon"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 682
    .local v8, "iconBase64":Ljava/lang/String;
    const-string v18, "iconResource"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 683
    .local v10, "iconResourceName":Ljava/lang/String;
    const-string v18, "iconResourcePackage"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 684
    .local v11, "iconResourcePackageName":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v18

    const-string v19, "userHandle"

    .line 685
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getUserForSerialNumber(J)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v15

    .line 686
    .restart local v15    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/util/DualAppUtils;->supportDualApp(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_3

    if-eqz v15, :cond_3

    .line 687
    const-string v18, "android.intent.extra.USER"

    invoke-virtual {v15}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 689
    :cond_3
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_5

    .line 690
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v8, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    .line 691
    .local v7, "iconArray":[B
    const/16 v18, 0x0

    array-length v0, v7

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v7, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 692
    .local v4, "b":Landroid/graphics/Bitmap;
    const-string v18, "android.intent.extra.shortcut.ICON"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 701
    .end local v4    # "b":Landroid/graphics/Bitmap;
    .end local v7    # "iconArray":[B
    :cond_4
    :goto_2
    new-instance v18, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-wide/from16 v2, v16

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;-><init>(Landroid/content/Intent;Landroid/content/Context;J)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 704
    .end local v5    # "data":Landroid/content/Intent;
    .end local v8    # "iconBase64":Ljava/lang/String;
    .end local v10    # "iconResourceName":Ljava/lang/String;
    .end local v11    # "iconResourcePackageName":Ljava/lang/String;
    .end local v13    # "launcherIntent":Landroid/content/Intent;
    .end local v14    # "object":Lorg/json/JSONObject;
    .end local v15    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    .end local v16    # "requestTime":J
    :catch_1
    move-exception v6

    .line 705
    .local v6, "e":Ljava/net/URISyntaxException;
    const-string v18, "InstallShortcutReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Exception reading shortcut to add: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 693
    .end local v6    # "e":Ljava/net/URISyntaxException;
    .restart local v5    # "data":Landroid/content/Intent;
    .restart local v8    # "iconBase64":Ljava/lang/String;
    .restart local v10    # "iconResourceName":Ljava/lang/String;
    .restart local v11    # "iconResourcePackageName":Ljava/lang/String;
    .restart local v13    # "launcherIntent":Landroid/content/Intent;
    .restart local v14    # "object":Lorg/json/JSONObject;
    .restart local v15    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    .restart local v16    # "requestTime":J
    :cond_5
    if-eqz v10, :cond_4

    :try_start_2
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_4

    .line 694
    new-instance v9, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v9}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    .line 696
    .local v9, "iconResource":Landroid/content/Intent$ShortcutIconResource;
    iput-object v10, v9, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 697
    iput-object v11, v9, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 698
    const-string v18, "android.intent.extra.shortcut.ICON_RESOURCE"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2
.end method

.method static ensureValidName(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "name"    # Ljava/lang/CharSequence;

    .prologue
    .line 477
    if-nez p2, :cond_0

    .line 479
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 480
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 481
    .local v0, "info":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v0, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .end local v0    # "info":Landroid/content/pm/ActivityInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    move-object v3, p2

    .line 486
    :goto_0
    return-object v3

    .line 482
    :catch_0
    move-exception v1

    .line 483
    .local v1, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, ""

    goto :goto_0
.end method

.method static fromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/launcher3/common/base/item/IconInfo;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 463
    new-instance v0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;

    const-wide/16 v2, -0x1

    invoke-direct {v0, p1, p0, v2, v3}, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;-><init>(Landroid/content/Intent;Landroid/content/Context;J)V

    .line 464
    .local v0, "info":Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;
    iget-object v1, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->label:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 466
    :cond_0
    const/4 v1, 0x0

    .line 469
    :goto_0
    return-object v1

    .line 468
    :cond_1
    invoke-static {v0}, Lcom/android/launcher3/home/InstallShortcutReceiver;->convertToLauncherActivityIfPossible(Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;)Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;

    move-result-object v0

    .line 469
    invoke-virtual {v0}, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->getShortcutInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v1

    goto :goto_0
.end method

.method private hasActivityForComponent(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 94
    invoke-static {p1}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v2

    .line 96
    .local v2, "launcherApps":Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v0

    .line 97
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    if-eqz v0, :cond_1

    .line 98
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    .line 99
    .local v1, "info":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    invoke-virtual {v1}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 100
    const/4 v3, 0x1

    .line 103
    .end local v1    # "info":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static isValidExtraType(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/Class;

    .prologue
    .line 759
    invoke-virtual {p0, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 760
    .local v0, "extra":Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private shortcutExistInQueue(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 372
    invoke-static {p1, v2}, Lcom/android/launcher3/home/ExternalRequestQueue;->getExternalRequestListByType(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/ExternalRequestInfo;

    .local v0, "info":Lcom/android/launcher3/home/ExternalRequestInfo;
    move-object v1, v0

    .line 374
    check-cast v1, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;

    .line 375
    .local v1, "pendingInfo":Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;
    invoke-virtual {p2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    invoke-virtual {v6, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 379
    .end local v0    # "info":Lcom/android/launcher3/home/ExternalRequestInfo;
    .end local v1    # "pendingInfo":Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;
    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method static shortcutExistsInDb(Landroid/content/Context;Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)Z
    .locals 32
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "originalIntent"    # Landroid/content/Intent;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p3, "checkShortcutOnly"    # Z

    .prologue
    .line 277
    new-instance v20, Landroid/content/Intent;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 279
    .local v20, "intent":Landroid/content/Intent;
    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v28

    .line 280
    .local v28, "serialNumber":J
    const-string v5, "profile"

    const-wide/16 v30, -0x1

    move-object/from16 v0, v20

    move-wide/from16 v1, v30

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    .line 281
    .local v16, "extraProfile":J
    const-wide/16 v30, -0x1

    cmp-long v5, v16, v30

    if-nez v5, :cond_0

    .line 282
    const-string v5, "profile"

    move-object/from16 v0, v20

    move-wide/from16 v1, v28

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 285
    :cond_0
    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 288
    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v25

    .line 289
    .local v25, "packageName":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 290
    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v21

    .line 291
    .local v21, "intentWithPkg":Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v22

    .line 301
    .end local v25    # "packageName":Ljava/lang/String;
    .local v22, "intentWithoutPkg":Ljava/lang/String;
    :goto_0
    const/16 v26, 0x0

    .line 302
    .local v26, "result":Z
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 304
    .local v4, "cr":Landroid/content/ContentResolver;
    const/16 v18, 0x0

    .line 306
    .local v18, "folderIds":Ljava/lang/String;
    const-string v7, "itemType=2 AND (container=-100 OR container=-101)"

    .line 310
    .local v7, "selection":Ljava/lang/String;
    sget-object v5, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v27, "_id"

    aput-object v27, v6, v9

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 313
    .local v15, "folderIdCursor":Landroid/database/Cursor;
    if-eqz v15, :cond_4

    .line 314
    new-instance v24, Lcom/android/launcher3/util/StringJoiner;

    const-string v5, ","

    move-object/from16 v0, v24

    invoke-direct {v0, v5}, Lcom/android/launcher3/util/StringJoiner;-><init>(Ljava/lang/String;)V

    .line 315
    .local v24, "joiner":Lcom/android/launcher3/util/StringJoiner;
    :goto_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 316
    const/4 v5, 0x0

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    move-object/from16 v0, v24

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/StringJoiner;->append(J)V

    goto :goto_1

    .line 293
    .end local v4    # "cr":Landroid/content/ContentResolver;
    .end local v7    # "selection":Ljava/lang/String;
    .end local v15    # "folderIdCursor":Landroid/database/Cursor;
    .end local v18    # "folderIds":Ljava/lang/String;
    .end local v21    # "intentWithPkg":Ljava/lang/String;
    .end local v22    # "intentWithoutPkg":Ljava/lang/String;
    .end local v24    # "joiner":Lcom/android/launcher3/util/StringJoiner;
    .end local v26    # "result":Z
    .restart local v25    # "packageName":Ljava/lang/String;
    :cond_1
    new-instance v5, Landroid/content/Intent;

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v21

    .line 294
    .restart local v21    # "intentWithPkg":Ljava/lang/String;
    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v22

    .restart local v22    # "intentWithoutPkg":Ljava/lang/String;
    goto :goto_0

    .line 297
    .end local v21    # "intentWithPkg":Ljava/lang/String;
    .end local v22    # "intentWithoutPkg":Ljava/lang/String;
    .end local v25    # "packageName":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v21

    .line 298
    .restart local v21    # "intentWithPkg":Ljava/lang/String;
    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v22

    .restart local v22    # "intentWithoutPkg":Ljava/lang/String;
    goto :goto_0

    .line 318
    .restart local v4    # "cr":Landroid/content/ContentResolver;
    .restart local v7    # "selection":Ljava/lang/String;
    .restart local v15    # "folderIdCursor":Landroid/database/Cursor;
    .restart local v18    # "folderIds":Ljava/lang/String;
    .restart local v24    # "joiner":Lcom/android/launcher3/util/StringJoiner;
    .restart local v26    # "result":Z
    :cond_3
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 319
    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher3/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v18

    .line 323
    .end local v24    # "joiner":Lcom/android/launcher3/util/StringJoiner;
    :cond_4
    const-string v7, "profileId=? AND (itemType=1"

    .line 326
    if-nez p3, :cond_5

    .line 327
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " OR itemType=0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 330
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") AND (container=-100 OR container=-101"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 333
    if-eqz v18, :cond_b

    .line 334
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " OR container in ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "))"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 339
    :goto_2
    const/4 v5, 0x1

    new-array v8, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v5

    .line 340
    .local v8, "selectionArg":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 342
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v5, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v27, "intent"

    aput-object v27, v6, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 344
    if-eqz v10, :cond_9

    .line 345
    const-string v5, "intent"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 346
    .local v19, "idxIntent":I
    :cond_6
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 347
    move/from16 v0, v19

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 348
    .local v23, "intent_string":Ljava/lang/String;
    const/4 v5, 0x4

    move-object/from16 v0, v23

    invoke-static {v0, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v11

    .line 349
    .local v11, "dbIntent":Landroid/content/Intent;
    const-string v5, "profile"

    const-wide/16 v30, -0x1

    move-wide/from16 v0, v30

    invoke-virtual {v11, v5, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    .line 350
    .local v12, "dbProfile":J
    const-wide/16 v30, -0x1

    cmp-long v5, v12, v30

    if-nez v5, :cond_7

    .line 351
    const-string v5, "profile"

    move-wide/from16 v0, v28

    invoke-virtual {v11, v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 352
    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v23

    .line 354
    :cond_7
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_6

    .line 355
    :cond_8
    const/16 v26, 0x1

    .line 363
    .end local v11    # "dbIntent":Landroid/content/Intent;
    .end local v12    # "dbProfile":J
    .end local v19    # "idxIntent":I
    .end local v23    # "intent_string":Ljava/lang/String;
    :cond_9
    if-eqz v10, :cond_a

    .line 364
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 368
    :cond_a
    :goto_3
    return v26

    .line 336
    .end local v8    # "selectionArg":[Ljava/lang/String;
    .end local v10    # "cursor":Landroid/database/Cursor;
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 360
    .restart local v8    # "selectionArg":[Ljava/lang/String;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v14

    .line 361
    .local v14, "e":Ljava/net/URISyntaxException;
    :try_start_1
    const-string v5, "InstallShortcutReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "shortcutExistsInDb : "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 363
    if-eqz v10, :cond_a

    .line 364
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 363
    .end local v14    # "e":Ljava/net/URISyntaxException;
    :catchall_0
    move-exception v5

    if-eqz v10, :cond_c

    .line 364
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v5
.end method

.method private shortcutExistsOnHomeOnlyMode(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 396
    const/4 v15, 0x0

    .line 397
    .local v15, "result":Z
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 398
    .local v2, "cr":Landroid/content/ContentResolver;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    .line 399
    .local v11, "extras":Landroid/os/Bundle;
    if-eqz v11, :cond_1

    .line 400
    invoke-virtual {v11}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v13

    .line 401
    .local v13, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v9, Lcom/android/launcher3/Utilities;->EXTRA_KEY_BLACK_LIST:[Ljava/lang/String;

    .line 402
    .local v9, "extraKeyBlackList":[Ljava/lang/String;
    if-eqz v9, :cond_1

    array-length v3, v9

    if-lez v3, :cond_1

    .line 403
    array-length v4, v9

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v12, v9, v3

    .line 404
    .local v12, "key":Ljava/lang/String;
    invoke-interface {v13, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 405
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 403
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 410
    .end local v9    # "extraKeyBlackList":[Ljava/lang/String;
    .end local v12    # "key":Ljava/lang/String;
    .end local v13    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "component="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 411
    .local v18, "str":[Ljava/lang/String;
    if-eqz v18, :cond_2

    move-object/from16 v0, v18

    array-length v3, v0

    const/4 v4, 0x1

    if-gt v3, v4, :cond_3

    .line 412
    :cond_2
    const/4 v3, 0x0

    .line 430
    :goto_1
    return v3

    .line 415
    :cond_3
    new-instance v14, Landroid/content/Intent;

    move-object/from16 v0, p2

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 416
    .local v14, "profileIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v19

    .line 417
    .local v19, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v16

    .line 418
    .local v16, "serialNumber":J
    const-string v3, "profile"

    move-wide/from16 v0, v16

    invoke-virtual {v14, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 419
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "component="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 422
    .local v10, "extraStr":[Ljava/lang/String;
    sget-object v3, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "intent"

    aput-object v6, v4, v5

    const-string v5, "intent like ? or intent like ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "%component="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x1

    aget-object v21, v18, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v6, v7

    const/4 v7, 0x1

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "%component="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x1

    aget-object v21, v10, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 425
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_4

    .line 426
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v15

    .line 427
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    move v3, v15

    .line 430
    goto :goto_1
.end method

.method private shortcutExistsOnHomeOnlyMode(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 434
    const/4 v10, 0x0

    .line 435
    .local v10, "result":Z
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 436
    .local v1, "cr":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "component="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 438
    .local v9, "detectStr":[Ljava/lang/String;
    if-eqz v9, :cond_0

    array-length v2, v9

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    .line 439
    :cond_0
    const/4 v2, 0x0

    .line 459
    :goto_0
    return v2

    .line 442
    :cond_1
    const/4 v2, 0x1

    aget-object v2, v9, v2

    const-string v3, "\\;"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 443
    .local v8, "componentName":[Ljava/lang/String;
    const-string v2, "\u00a0"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 444
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 446
    :cond_2
    const-string v2, "\u00a0"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 447
    const/4 v2, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 449
    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 450
    .local v11, "trimTitle":Ljava/lang/String;
    const-string v2, "InstallShortcutReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shortcutExistsOnHomeOnlyMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " title:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v8, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    sget-object v2, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "intent"

    aput-object v5, v3, v4

    const-string v4, "(trim(title,\'\u00a0\')=? or trim(title)=?) and intent like ?"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v11, v5, v6

    const/4 v6, 0x1

    aput-object v11, v5, v6

    const/4 v6, 0x2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "%component="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v13, v8, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "%"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 455
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 456
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    .line 457
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move v2, v10

    .line 459
    goto/16 :goto_0
.end method

.method private uninstallShortcutExistInQueue(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 383
    const/4 v3, 0x2

    invoke-static {p1, v3}, Lcom/android/launcher3/home/ExternalRequestQueue;->getExternalRequestListByType(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/ExternalRequestInfo;

    .local v0, "info":Lcom/android/launcher3/home/ExternalRequestInfo;
    move-object v1, v0

    .line 385
    check-cast v1, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;

    .line 387
    .local v1, "pendingInfo":Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;
    invoke-virtual {p2, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    invoke-virtual {v5, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 388
    invoke-static {p1, v1}, Lcom/android/launcher3/home/ExternalRequestQueue;->removeFromExternalRequestQueue(Landroid/content/Context;Lcom/android/launcher3/home/ExternalRequestInfo;)V

    .line 389
    const/4 v2, 0x1

    .line 392
    .end local v0    # "info":Lcom/android/launcher3/home/ExternalRequestInfo;
    .end local v1    # "pendingInfo":Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;
    :cond_1
    return v2
.end method

.method private updateContactShortcut(Landroid/content/Context;Landroid/content/Intent;Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;)Z
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/content/Intent;
    .param p3, "info"    # Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;

    .prologue
    .line 765
    const-string v18, "SEC_CONTACT_SHORTCUT_RESTORED"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 767
    .local v11, "restored":Ljava/lang/String;
    if-nez v11, :cond_0

    .line 768
    const/16 v18, 0x0

    .line 839
    :goto_0
    return v18

    .line 771
    :cond_0
    const-string v18, ","

    const/16 v19, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v15

    .line 772
    .local v15, "splits":[Ljava/lang/String;
    const-string v18, "InstallShortcutReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updateContactShortcut, restored : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    const-string v18, "RESTORED"

    const/16 v19, 0x0

    aget-object v19, v15, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 777
    const/16 v18, 0x1

    :try_start_0
    aget-object v18, v15, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 782
    .local v10, "restoreId":I
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 783
    .local v8, "lookupUri":Landroid/net/Uri;
    const-string v18, "com.android.contacts"

    invoke-virtual {v8}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 784
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 785
    .local v17, "values":Landroid/content/ContentValues;
    const-string v18, "intent"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    sget-object v16, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    .line 788
    .local v16, "uri":Landroid/net/Uri;
    const-string v13, "_id=? AND title=? AND intent like ?"

    .line 791
    .local v13, "selection":Ljava/lang/String;
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v14, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v14, v18

    const/16 v18, 0x1

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->label:Ljava/lang/String;

    move-object/from16 v19, v0

    aput-object v19, v14, v18

    const/16 v18, 0x2

    const-string v19, "%com.android.contacts%"

    aput-object v19, v14, v18

    .line 793
    .local v14, "selectionArgs":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2, v13, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 794
    .local v12, "rows":I
    if-lez v12, :cond_1

    .line 795
    const-string v18, "InstallShortcutReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updateContactShortcut restoreId : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    .line 797
    .local v4, "app":Lcom/android/launcher3/LauncherAppState;
    new-instance v6, Landroid/content/Intent;

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 798
    .local v6, "intent":Landroid/content/Intent;
    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v18

    int-to-long v0, v10

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2, v6}, Lcom/android/launcher3/home/HomeLoader;->updateContactShortcutInfo(JLandroid/content/Intent;)V

    .line 799
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 778
    .end local v4    # "app":Lcom/android/launcher3/LauncherAppState;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v8    # "lookupUri":Landroid/net/Uri;
    .end local v10    # "restoreId":I
    .end local v12    # "rows":I
    .end local v13    # "selection":Ljava/lang/String;
    .end local v14    # "selectionArgs":[Ljava/lang/String;
    .end local v16    # "uri":Landroid/net/Uri;
    .end local v17    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v5

    .line 779
    .local v5, "e":Ljava/lang/NumberFormatException;
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 802
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .restart local v8    # "lookupUri":Landroid/net/Uri;
    .restart local v10    # "restoreId":I
    .restart local v12    # "rows":I
    .restart local v13    # "selection":Ljava/lang/String;
    .restart local v14    # "selectionArgs":[Ljava/lang/String;
    .restart local v16    # "uri":Landroid/net/Uri;
    .restart local v17    # "values":Landroid/content/ContentValues;
    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportEasyModeChange()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 803
    const-string v18, "InstallShortcutReceiver"

    const-string v19, "updateContactShortcut check easy mode"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 805
    sget-object v16, Lcom/android/launcher3/common/model/LauncherSettings$Favorites_Standard;->CONTENT_URI:Landroid/net/Uri;

    .line 809
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2, v13, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 810
    if-lez v12, :cond_3

    .line 811
    const-string v18, "InstallShortcutReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updateContactShortcut restoreId : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 807
    :cond_2
    sget-object v16, Lcom/android/launcher3/common/model/LauncherSettings$Favorites_Easy;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_1

    .line 816
    :cond_3
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 817
    const-string v18, "InstallShortcutReceiver"

    const-string v19, "updateContactShortcut check home only"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    .line 819
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 821
    .local v9, "prefs":Landroid/content/SharedPreferences;
    const-string v18, "home_only_mode"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 822
    .local v7, "isHomeOnly":Z
    if-eqz v7, :cond_5

    .line 823
    sget-object v16, Lcom/android/launcher3/common/model/LauncherSettings$Favorites_HomeApps;->CONTENT_URI:Landroid/net/Uri;

    .line 828
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2, v13, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 829
    if-lez v12, :cond_4

    .line 830
    const-string v18, "InstallShortcutReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updateContactShortcut restoreId : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    .end local v7    # "isHomeOnly":Z
    .end local v9    # "prefs":Landroid/content/SharedPreferences;
    .end local v12    # "rows":I
    .end local v13    # "selection":Ljava/lang/String;
    .end local v14    # "selectionArgs":[Ljava/lang/String;
    .end local v16    # "uri":Landroid/net/Uri;
    .end local v17    # "values":Landroid/content/ContentValues;
    :cond_4
    :goto_3
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 825
    .restart local v7    # "isHomeOnly":Z
    .restart local v9    # "prefs":Landroid/content/SharedPreferences;
    .restart local v12    # "rows":I
    .restart local v13    # "selection":Ljava/lang/String;
    .restart local v14    # "selectionArgs":[Ljava/lang/String;
    .restart local v16    # "uri":Landroid/net/Uri;
    .restart local v17    # "values":Landroid/content/ContentValues;
    :cond_5
    sget-object v16, Lcom/android/launcher3/common/model/LauncherSettings$Favorites_HomeOnly;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_2

    .line 834
    .end local v7    # "isHomeOnly":Z
    .end local v9    # "prefs":Landroid/content/SharedPreferences;
    .end local v12    # "rows":I
    .end local v13    # "selection":Ljava/lang/String;
    .end local v14    # "selectionArgs":[Ljava/lang/String;
    .end local v16    # "uri":Landroid/net/Uri;
    .end local v17    # "values":Landroid/content/ContentValues;
    :cond_6
    const-string v18, "InstallShortcutReceiver"

    const-string v19, "updateContactShortcut failed, not have AUTHORITY"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 839
    .end local v8    # "lookupUri":Landroid/net/Uri;
    .end local v10    # "restoreId":I
    :cond_7
    const/16 v18, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 109
    const-string v0, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    :goto_0
    return-void

    .line 114
    :cond_0
    const-string v0, "desktopmode"

    .line 115
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 116
    .local v5, "desktopModeManager":Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    if-eqz v5, :cond_1

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    const-string v0, "InstallShortcutReceiver"

    const-string v1, "Not support install shortcut on DeX mode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 121
    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    .line 122
    .local v4, "app":Lcom/android/launcher3/LauncherAppState;
    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    new-instance v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/home/InstallShortcutReceiver$1;-><init>(Lcom/android/launcher3/home/InstallShortcutReceiver;Landroid/content/Intent;Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Lcom/samsung/android/desktopmode/SemDesktopModeManager;)V

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
