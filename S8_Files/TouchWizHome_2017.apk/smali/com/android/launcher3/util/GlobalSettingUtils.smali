.class public Lcom/android/launcher3/util/GlobalSettingUtils;
.super Ljava/lang/Object;
.source "GlobalSettingUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GlobalSettingUtils"

.field static mIsBackToSetting:Z

.field static mIsStartSetting:Z

.field static mSettingActivityName:Ljava/lang/String;

.field static mSettingPackageName:Ljava/lang/String;


# instance fields
.field private mHomeController:Lcom/android/launcher3/home/HomeController;

.field private mLauncher:Lcom/android/launcher3/Launcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    const-string v0, ""

    sput-object v0, Lcom/android/launcher3/util/GlobalSettingUtils;->mSettingPackageName:Ljava/lang/String;

    .line 35
    const-string v0, ""

    sput-object v0, Lcom/android/launcher3/util/GlobalSettingUtils;->mSettingActivityName:Ljava/lang/String;

    .line 36
    sput-boolean v1, Lcom/android/launcher3/util/GlobalSettingUtils;->mIsStartSetting:Z

    .line 37
    sput-boolean v1, Lcom/android/launcher3/util/GlobalSettingUtils;->mIsBackToSetting:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/launcher3/util/GlobalSettingUtils;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 41
    iget-object v0, p0, Lcom/android/launcher3/util/GlobalSettingUtils;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/GlobalSettingUtils;->mHomeController:Lcom/android/launcher3/home/HomeController;

    .line 42
    return-void
.end method

.method public static getSettingCN()Landroid/content/ComponentName;
    .locals 4

    .prologue
    .line 82
    sget-object v1, Lcom/android/launcher3/util/GlobalSettingUtils;->mSettingPackageName:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/launcher3/util/GlobalSettingUtils;->mSettingActivityName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 83
    new-instance v0, Landroid/content/ComponentName;

    sget-object v1, Lcom/android/launcher3/util/GlobalSettingUtils;->mSettingPackageName:Ljava/lang/String;

    sget-object v2, Lcom/android/launcher3/util/GlobalSettingUtils;->mSettingActivityName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .local v0, "result":Landroid/content/ComponentName;
    :goto_0
    invoke-static {}, Lcom/android/launcher3/Utilities;->DEBUGGABLE()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    const-string v1, "GlobalSettingUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting Component = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    return-object v0

    .line 85
    .end local v0    # "result":Landroid/content/ComponentName;
    :cond_1
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "result":Landroid/content/ComponentName;
    goto :goto_0
.end method

.method public static getStartSetting()Z
    .locals 1

    .prologue
    .line 72
    sget-boolean v0, Lcom/android/launcher3/util/GlobalSettingUtils;->mIsStartSetting:Z

    return v0
.end method

.method public static resetSettingsValue()V
    .locals 1

    .prologue
    .line 66
    const-string v0, ""

    sput-object v0, Lcom/android/launcher3/util/GlobalSettingUtils;->mSettingPackageName:Ljava/lang/String;

    .line 67
    const-string v0, ""

    sput-object v0, Lcom/android/launcher3/util/GlobalSettingUtils;->mSettingActivityName:Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/util/GlobalSettingUtils;->mIsStartSetting:Z

    .line 69
    return-void
.end method

.method public static setBackToSetting(Z)V
    .locals 0
    .param p0, "isBackToSetting"    # Z

    .prologue
    .line 76
    sput-boolean p0, Lcom/android/launcher3/util/GlobalSettingUtils;->mIsBackToSetting:Z

    .line 77
    return-void
.end method


# virtual methods
.method public checkEnterNormalState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    sget-boolean v1, Lcom/android/launcher3/util/GlobalSettingUtils;->mIsBackToSetting:Z

    if-eqz v1, :cond_0

    .line 57
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 58
    .local v0, "data":Lcom/android/launcher3/common/stage/StageEntry;
    iput-boolean v2, v0, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 59
    iget-object v1, p0, Lcom/android/launcher3/util/GlobalSettingUtils;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/stage/StageManager;->finishAllStage(Lcom/android/launcher3/common/stage/StageEntry;)V

    .line 60
    iget-object v1, p0, Lcom/android/launcher3/util/GlobalSettingUtils;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/HomeController;->enterNormalState(Z)V

    .line 61
    sput-boolean v2, Lcom/android/launcher3/util/GlobalSettingUtils;->mIsBackToSetting:Z

    .line 63
    .end local v0    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    :cond_0
    return-void
.end method

.method public startHomeSettingBySettingMenu(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 45
    const-string v2, "PackageName"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "settingPackageName":Ljava/lang/String;
    const-string v2, "ClassName"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "settingActivityName":Ljava/lang/String;
    sput-object v1, Lcom/android/launcher3/util/GlobalSettingUtils;->mSettingPackageName:Ljava/lang/String;

    .line 49
    sput-object v0, Lcom/android/launcher3/util/GlobalSettingUtils;->mSettingActivityName:Ljava/lang/String;

    .line 50
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/launcher3/util/GlobalSettingUtils;->mIsStartSetting:Z

    .line 51
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/launcher3/util/GlobalSettingUtils;->mIsBackToSetting:Z

    .line 52
    iget-object v2, p0, Lcom/android/launcher3/util/GlobalSettingUtils;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->startHomeSettingActivity()V

    .line 53
    return-void
.end method
