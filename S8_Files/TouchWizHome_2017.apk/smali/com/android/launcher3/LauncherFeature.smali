.class public Lcom/android/launcher3/LauncherFeature;
.super Ljava/lang/Object;
.source "LauncherFeature.java"


# static fields
.field private static final OEM_DIALER_CLASS_NAME:Ljava/lang/String; = "com.android.dialer.DialtactsActivity"

.field private static TAG:Ljava/lang/String; = null

.field private static final T_DIALER_CLASS_NAME:Ljava/lang/String; = "com.skt.prod.dialer.activities.main.MainActivity"

.field private static final T_DIALER_PACKAGE_NAME:Ljava/lang/String; = "com.skt.prod.dialer"

.field private static sBuildFlavor:Ljava/lang/String;

.field private static sCountryCode:Ljava/lang/String;

.field private static sDisableFullyHideKeypad:Z

.field private static sHomeAppsStructureFeature:Ljava/lang/String;

.field private static sIsATT:Z

.field private static sIsChinaModel:Z

.field private static sIsCruiserProject:Z

.field private static sIsDreamProject:Z

.field private static sIsEdge:Z

.field private static sIsLargeTablet:Z

.field private static sIsSPR:Z

.field private static sIsTablet:Z

.field private static sIsVZW:Z

.field private static sOemDialerPackageName:Ljava/lang/String;

.field private static sProductName:Ljava/lang/String;

.field private static sSalesCode:Ljava/lang/String;

.field private static sSupportAppsSearch:Z

.field private static sSupportBackgroundBlurByWindow:Z

.field private static sSupportChangeGridForDpi:Z

.field private static sSupportContextServiceSurveyMode:Z

.field private static sSupportCustomerDialerChange:Z

.field private static sSupportEasyModeChange:Z

.field private static sSupportFestivalPage:Z

.field private static sSupportFlexibleGrid:Z

.field private static sSupportFolderLock:Z

.field private static sSupportFolderNSecOpen:Z

.field private static sSupportFolderSelect:Z

.field private static sSupportGSAPreWarming:Z

.field private static sSupportGalaxyAppsSearch:Z

.field private static sSupportGameHome:Z

.field private static sSupportHomeModeChange:Z

.field private static sSupportHomeModeChangeFeature:Z

.field private static sSupportHomeModeChangeIndex:I

.field private static sSupportHotword:Z

.field private static sSupportMoveToHomeAppsByDragging:Z

.field private static sSupportMoveToHomeAppsByLongPress:Z

.field private static sSupportMultiSelect:Z

.field private static sSupportNavigationBar:Z

.field private static sSupportNfcHwKeyboard:Z

.field private static sSupportQuickOption:Z

.field private static sSupportRotate:Z

.field private static sSupportTransitionEffect:Z

.field private static sSupportTraySwipeInteraction:Z

.field private static sSupportWallpaperTilt:Z

.field private static sSupportWidgetSetting:Z

.field private static sSupportZeroPageBezelSwipe:Z

.field private static sSupportZeroPageHome:Z

.field private static sSupportZeroPageSetting:Z

.field private static sSupportZeroPageSwitch:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 39
    const-class v0, Lcom/android/launcher3/LauncherFeature;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherFeature;->TAG:Ljava/lang/String;

    .line 177
    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sSupportNavigationBar:Z

    .line 187
    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sIsEdge:Z

    .line 211
    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sIsChinaModel:Z

    .line 217
    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sIsVZW:Z

    .line 223
    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sIsATT:Z

    .line 242
    sput-object v3, Lcom/android/launcher3/LauncherFeature;->sHomeAppsStructureFeature:Ljava/lang/String;

    .line 243
    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sSupportHomeModeChangeFeature:Z

    .line 244
    sput-boolean v2, Lcom/android/launcher3/LauncherFeature;->sSupportHomeModeChange:Z

    .line 245
    sput v2, Lcom/android/launcher3/LauncherFeature;->sSupportHomeModeChangeIndex:I

    .line 265
    sput-boolean v2, Lcom/android/launcher3/LauncherFeature;->sSupportFlexibleGrid:Z

    .line 276
    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sSupportContextServiceSurveyMode:Z

    .line 282
    sput-boolean v2, Lcom/android/launcher3/LauncherFeature;->sSupportBackgroundBlurByWindow:Z

    .line 288
    sput-boolean v2, Lcom/android/launcher3/LauncherFeature;->sSupportFolderNSecOpen:Z

    .line 294
    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sDisableFullyHideKeypad:Z

    .line 300
    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sSupportFestivalPage:Z

    .line 310
    sput-boolean v2, Lcom/android/launcher3/LauncherFeature;->sSupportQuickOption:Z

    .line 316
    sput-boolean v2, Lcom/android/launcher3/LauncherFeature;->sSupportTraySwipeInteraction:Z

    .line 322
    sput-boolean v2, Lcom/android/launcher3/LauncherFeature;->sSupportMoveToHomeAppsByDragging:Z

    .line 328
    sput-boolean v2, Lcom/android/launcher3/LauncherFeature;->sSupportMoveToHomeAppsByLongPress:Z

    .line 334
    sput-boolean v2, Lcom/android/launcher3/LauncherFeature;->sSupportGameHome:Z

    .line 340
    sput-boolean v2, Lcom/android/launcher3/LauncherFeature;->sSupportGalaxyAppsSearch:Z

    .line 367
    sput-object v3, Lcom/android/launcher3/LauncherFeature;->sOemDialerPackageName:Ljava/lang/String;

    .line 401
    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sSupportCustomerDialerChange:Z

    .line 411
    sput-boolean v2, Lcom/android/launcher3/LauncherFeature;->sSupportMultiSelect:Z

    .line 417
    sput-boolean v2, Lcom/android/launcher3/LauncherFeature;->sSupportFolderSelect:Z

    .line 423
    sput-boolean v2, Lcom/android/launcher3/LauncherFeature;->sSupportEasyModeChange:Z

    .line 429
    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sSupportRotate:Z

    .line 435
    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sIsTablet:Z

    .line 441
    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sIsLargeTablet:Z

    .line 447
    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sSupportAppsSearch:Z

    .line 453
    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sSupportNfcHwKeyboard:Z

    .line 459
    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sSupportZeroPageHome:Z

    .line 465
    sput-boolean v2, Lcom/android/launcher3/LauncherFeature;->sSupportZeroPageSwitch:Z

    .line 471
    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sSupportZeroPageBezelSwipe:Z

    .line 487
    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sSupportFolderLock:Z

    .line 493
    sput-boolean v2, Lcom/android/launcher3/LauncherFeature;->sSupportTransitionEffect:Z

    .line 499
    sput-boolean v2, Lcom/android/launcher3/LauncherFeature;->sSupportWallpaperTilt:Z

    .line 509
    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sSupportHotword:Z

    .line 515
    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sSupportChangeGridForDpi:Z

    .line 521
    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sSupportWidgetSetting:Z

    .line 531
    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sIsSPR:Z

    .line 538
    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sSupportGSAPreWarming:Z

    .line 547
    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sSupportZeroPageSetting:Z

    .line 553
    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sIsDreamProject:Z

    .line 563
    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sIsCruiserProject:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkEdgeDevice(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 190
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 191
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_1

    .line 192
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.app.cocktailbarservice.settings.SETTINGSMAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 193
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 195
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 196
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/launcher3/LauncherFeature;->sIsEdge:Z

    .line 201
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    sget-object v3, Lcom/android/launcher3/LauncherFeature;->TAG:Ljava/lang/String;

    const-string v4, "PackageManager is null in checkEdgeDevice()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static checkNavigationBar(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 180
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 181
    .local v0, "res":Landroid/content/res/Resources;
    const-string v2, "config_showNavigationBar"

    const-string v3, "bool"

    const-string v4, "android"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 182
    .local v1, "resourceId":I
    if-lez v1, :cond_0

    .line 183
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sput-boolean v2, Lcom/android/launcher3/LauncherFeature;->sSupportNavigationBar:Z

    .line 185
    :cond_0
    return-void
.end method

.method public static disableFullyHideKeypad()Z
    .locals 1

    .prologue
    .line 297
    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sDisableFullyHideKeypad:Z

    return v0
.end method

.method public static getCustomerDialerClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 352
    const-string v0, "com.skt.prod.dialer.activities.main.MainActivity"

    return-object v0
.end method

.method public static getCustomerDialerPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 364
    const-string v0, "com.skt.prod.dialer"

    return-object v0
.end method

.method public static getOemDialerClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    const-string v0, "com.android.dialer.DialtactsActivity"

    return-object v0
.end method

.method public static getOemDialerPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 370
    sget-object v4, Lcom/android/launcher3/LauncherFeature;->sOemDialerPackageName:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 372
    const-string v1, "com.android.contacts"

    .line 373
    .local v1, "originalPackageName":Ljava/lang/String;
    const-string v4, "SEC_FLOATING_FEATURE_CONTACTS_CONFIG_PACKAGE_NAME"

    const-string v5, "com.android.contacts"

    invoke-static {v4, v5}, Lcom/android/launcher3/features/FloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 375
    .local v3, "packageName":Ljava/lang/String;
    const-string v4, "com.android.contacts"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 377
    const-string v4, "CscFeature_Contact_ReplacePackageAs"

    invoke-static {v4}, Lcom/android/launcher3/features/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 379
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 381
    sput-object v3, Lcom/android/launcher3/LauncherFeature;->sOemDialerPackageName:Ljava/lang/String;

    .line 398
    .end local v1    # "originalPackageName":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_0
    sget-object v4, Lcom/android/launcher3/LauncherFeature;->sOemDialerPackageName:Ljava/lang/String;

    return-object v4

    .line 384
    .restart local v1    # "originalPackageName":Ljava/lang/String;
    .restart local v3    # "packageName":Ljava/lang/String;
    :cond_1
    const-string v4, "com.android.contacts"

    sput-object v4, Lcom/android/launcher3/LauncherFeature;->sOemDialerPackageName:Ljava/lang/String;

    goto :goto_0

    .line 387
    :cond_2
    sput-object v3, Lcom/android/launcher3/LauncherFeature;->sOemDialerPackageName:Ljava/lang/String;

    .line 389
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 390
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 392
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 394
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "com.android.contacts"

    sput-object v4, Lcom/android/launcher3/LauncherFeature;->sOemDialerPackageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getOmcPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    const-string v0, "persist.sys.omc_path"

    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getSupportHomeModeChangeIndex()I
    .locals 1

    .prologue
    .line 262
    sget v0, Lcom/android/launcher3/LauncherFeature;->sSupportHomeModeChangeIndex:I

    return v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const-class v3, Lcom/android/launcher3/LauncherFeature;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 48
    .local v0, "start":J
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->readSystemProperties()V

    .line 50
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->readCSCFeature()V

    .line 52
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->readFloatingFeature()V

    .line 54
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->setFeatureBySystemProperties()V

    .line 56
    invoke-static {p0}, Lcom/android/launcher3/LauncherFeature;->checkNavigationBar(Landroid/content/Context;)V

    .line 58
    invoke-static {p0}, Lcom/android/launcher3/LauncherFeature;->checkEdgeDevice(Landroid/content/Context;)V

    .line 60
    invoke-static {p0}, Lcom/android/launcher3/LauncherFeature;->readConfigValue(Landroid/content/Context;)V

    .line 62
    sget-object v2, Lcom/android/launcher3/LauncherFeature;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LauncherFeature init : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit v3

    return-void

    .line 46
    .end local v0    # "start":J
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static isATTModel()Z
    .locals 1

    .prologue
    .line 226
    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sIsATT:Z

    return v0
.end method

.method public static isChinaModel()Z
    .locals 1

    .prologue
    .line 214
    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sIsChinaModel:Z

    return v0
.end method

.method public static isCruiserProject()Z
    .locals 2

    .prologue
    .line 566
    sget-object v0, Lcom/android/launcher3/LauncherFeature;->sProductName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 567
    sget-object v0, Lcom/android/launcher3/LauncherFeature;->sProductName:Ljava/lang/String;

    const-string v1, "cruiser"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/launcher3/LauncherFeature;->sBuildFlavor:Ljava/lang/String;

    const-string v1, "cruiser"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/launcher3/LauncherFeature;->sIsCruiserProject:Z

    .line 569
    :cond_1
    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sIsCruiserProject:Z

    return v0

    .line 567
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDreamProject()Z
    .locals 2

    .prologue
    .line 556
    sget-object v0, Lcom/android/launcher3/LauncherFeature;->sProductName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 557
    sget-object v0, Lcom/android/launcher3/LauncherFeature;->sProductName:Ljava/lang/String;

    const-string v1, "dream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/launcher3/LauncherFeature;->sBuildFlavor:Ljava/lang/String;

    const-string v1, "dream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/launcher3/LauncherFeature;->sIsDreamProject:Z

    .line 559
    :cond_1
    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sIsDreamProject:Z

    return v0

    .line 557
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isEdgeDevice()Z
    .locals 1

    .prologue
    .line 234
    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sIsEdge:Z

    return v0
.end method

.method public static isLargeTablet()Z
    .locals 1

    .prologue
    .line 444
    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sIsLargeTablet:Z

    return v0
.end method

.method public static isSupportBadgeManage()Z
    .locals 1

    .prologue
    .line 307
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isChinaModel()Z

    move-result v0

    return v0
.end method

.method public static isTablet()Z
    .locals 1

    .prologue
    .line 438
    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sIsTablet:Z

    return v0
.end method

.method public static isVZWModel()Z
    .locals 1

    .prologue
    .line 220
    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sIsVZW:Z

    return v0
.end method

.method private static readCSCFeature()V
    .locals 2

    .prologue
    .line 116
    const-string v0, "CscFeature_Common_DisableGoogle"

    invoke-static {v0}, Lcom/android/launcher3/features/CscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportHotword:Z

    .line 118
    const-string v0, "CscFeature_Launcher_ConfigHomeAppsStructure"

    const/4 v1, 0x0

    .line 119
    invoke-static {v0, v1}, Lcom/android/launcher3/features/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherFeature;->sHomeAppsStructureFeature:Ljava/lang/String;

    .line 122
    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sIsVZW:Z

    if-nez v0, :cond_0

    .line 123
    const-string v0, "VZW"

    sget-object v1, Lcom/android/launcher3/LauncherFeature;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/LauncherFeature;->sIsVZW:Z

    .line 126
    :cond_0
    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sIsATT:Z

    if-nez v0, :cond_1

    .line 127
    const-string v0, "ATT"

    sget-object v1, Lcom/android/launcher3/LauncherFeature;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/LauncherFeature;->sIsATT:Z

    .line 130
    :cond_1
    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sIsChinaModel:Z

    if-nez v0, :cond_2

    .line 131
    const-string v0, "China"

    sget-object v1, Lcom/android/launcher3/LauncherFeature;->sCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/LauncherFeature;->sIsChinaModel:Z

    .line 134
    :cond_2
    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sIsSPR:Z

    if-nez v0, :cond_3

    .line 135
    const-string v0, "CscFeature_Common_EnableSprintExtension"

    invoke-static {v0}, Lcom/android/launcher3/features/CscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/LauncherFeature;->sIsSPR:Z

    .line 165
    :cond_3
    return-void

    .line 116
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static readConfigValue(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 204
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 206
    .local v0, "res":Landroid/content/res/Resources;
    const/high16 v1, 0x7f0c0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sSupportRotate:Z

    .line 207
    const v1, 0x7f0c0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sIsTablet:Z

    .line 208
    const v1, 0x7f0c0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sIsLargeTablet:Z

    .line 209
    return-void
.end method

.method private static readFloatingFeature()V
    .locals 1

    .prologue
    .line 94
    const-string v0, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    .line 95
    invoke-static {v0}, Lcom/android/launcher3/features/FloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportNfcHwKeyboard:Z

    .line 97
    const-string v0, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    .line 98
    invoke-static {v0}, Lcom/android/launcher3/features/FloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportContextServiceSurveyMode:Z

    .line 100
    const-string v0, "SEC_FLOATING_FEATURE_LAUNCHER_SUPPORT_HOME_MODE_CHANGE"

    .line 101
    invoke-static {v0}, Lcom/android/launcher3/features/FloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportHomeModeChangeFeature:Z

    .line 113
    return-void
.end method

.method private static readSystemProperties()V
    .locals 8

    .prologue
    .line 66
    const-string v4, ""

    .line 67
    .local v4, "omcSalesCode":Ljava/lang/String;
    const-string v1, ""

    .line 68
    .local v1, "cscSalesCode":Ljava/lang/String;
    const-string v3, ""

    .line 69
    .local v3, "omcCountryCode":Ljava/lang/String;
    const-string v0, ""

    .line 71
    .local v0, "cscCountryCode":Ljava/lang/String;
    :try_start_0
    const-string v5, "persist.omc.sales_code"

    invoke-static {v5}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 72
    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    const-string v5, "persist.omc.country_code"

    invoke-static {v5}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 74
    const-string v5, "ro.csc.country_code"

    invoke-static {v5}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 76
    const-string v5, "ril.sales_code"

    invoke-static {v5}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 82
    :cond_0
    :goto_0
    const-string v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/launcher3/LauncherFeature;->sProductName:Ljava/lang/String;

    .line 83
    const-string v5, "ro.build.flavor"

    invoke-static {v5}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/launcher3/LauncherFeature;->sBuildFlavor:Ljava/lang/String;

    .line 84
    if-eqz v4, :cond_1

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    move-object v4, v1

    .end local v4    # "omcSalesCode":Ljava/lang/String;
    :cond_2
    sput-object v4, Lcom/android/launcher3/LauncherFeature;->sSalesCode:Ljava/lang/String;

    .line 85
    if-eqz v3, :cond_3

    const-string v5, ""

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    move-object v3, v0

    .end local v3    # "omcCountryCode":Ljava/lang/String;
    :cond_4
    sput-object v3, Lcom/android/launcher3/LauncherFeature;->sCountryCode:Ljava/lang/String;

    .line 87
    sget-boolean v5, Lcom/android/launcher3/LauncherFeature;->sSupportHotword:Z

    if-eqz v5, :cond_5

    .line 88
    const-string v5, "CHZ"

    sget-object v6, Lcom/android/launcher3/LauncherFeature;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "CHN"

    sget-object v6, Lcom/android/launcher3/LauncherFeature;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "CHM"

    sget-object v6, Lcom/android/launcher3/LauncherFeature;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "CHU"

    sget-object v6, Lcom/android/launcher3/LauncherFeature;->sSalesCode:Ljava/lang/String;

    .line 89
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "CTC"

    sget-object v6, Lcom/android/launcher3/LauncherFeature;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "CHC"

    sget-object v6, Lcom/android/launcher3/LauncherFeature;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const/4 v5, 0x1

    :goto_1
    sput-boolean v5, Lcom/android/launcher3/LauncherFeature;->sSupportHotword:Z

    .line 91
    :cond_5
    return-void

    .line 78
    .restart local v3    # "omcCountryCode":Ljava/lang/String;
    .restart local v4    # "omcSalesCode":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 79
    .local v2, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/launcher3/LauncherFeature;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "read SalesCode or CountryCode exception occurred"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 89
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "omcCountryCode":Ljava/lang/String;
    .end local v4    # "omcSalesCode":Ljava/lang/String;
    :cond_6
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private static setFeatureBySystemProperties()V
    .locals 2

    .prologue
    .line 168
    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sDisableFullyHideKeypad:Z

    if-nez v0, :cond_0

    .line 169
    const-string v0, "USA"

    sget-object v1, Lcom/android/launcher3/LauncherFeature;->sCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/LauncherFeature;->sDisableFullyHideKeypad:Z

    .line 172
    :cond_0
    const-string v0, "SKT"

    sget-object v1, Lcom/android/launcher3/LauncherFeature;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SKC"

    sget-object v1, Lcom/android/launcher3/LauncherFeature;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportCustomerDialerChange:Z

    .line 174
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->setSupportFolderLock()V

    .line 175
    return-void

    .line 172
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static setSupportFolderLock()V
    .locals 4

    .prologue
    .line 478
    const-string v1, "CscFeature_SmartManager_ConfigSubFeatures"

    invoke-static {v1}, Lcom/android/launcher3/features/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, "features":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "applock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 480
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sSupportFolderLock:Z

    .line 484
    :goto_0
    sget-object v1, Lcom/android/launcher3/LauncherFeature;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSupportFolderLock supportFolderLock = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/launcher3/LauncherFeature;->sSupportFolderLock:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    return-void

    .line 482
    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sSupportFolderLock:Z

    goto :goto_0
.end method

.method public static setSupportGalaxyAppsSearch(Z)V
    .locals 0
    .param p0, "set"    # Z

    .prologue
    .line 408
    sput-boolean p0, Lcom/android/launcher3/LauncherFeature;->sSupportGalaxyAppsSearch:Z

    .line 409
    return-void
.end method

.method static setSupportWallpaperTilt(Z)V
    .locals 0
    .param p0, "support"    # Z

    .prologue
    .line 502
    sput-boolean p0, Lcom/android/launcher3/LauncherFeature;->sSupportWallpaperTilt:Z

    .line 503
    return-void
.end method

.method public static supportAppsSearch()Z
    .locals 1

    .prologue
    .line 450
    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportAppsSearch:Z

    return v0
.end method

.method public static supportBackgroundBlurByWindow()Z
    .locals 1

    .prologue
    .line 285
    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportBackgroundBlurByWindow:Z

    return v0
.end method

.method static supportChangeGridForDpi()Z
    .locals 1

    .prologue
    .line 518
    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportChangeGridForDpi:Z

    return v0
.end method

.method public static supportChinaDA()Z
    .locals 1

    .prologue
    .line 528
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isChinaModel()Z

    move-result v0

    return v0
.end method

.method public static supportContextServiceSurveyMode()Z
    .locals 1

    .prologue
    .line 279
    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportContextServiceSurveyMode:Z

    return v0
.end method

.method public static supportCustomerDialerChange()Z
    .locals 1

    .prologue
    .line 404
    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportCustomerDialerChange:Z

    return v0
.end method

.method public static supportEasyModeChange()Z
    .locals 1

    .prologue
    .line 426
    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportEasyModeChange:Z

    return v0
.end method

.method public static supportFestivalPage()Z
    .locals 1

    .prologue
    .line 303
    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportFestivalPage:Z

    return v0
.end method

.method public static supportFlexibleGrid()Z
    .locals 1

    .prologue
    .line 268
    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportFlexibleGrid:Z

    return v0
.end method

.method public static supportFolderLock()Z
    .locals 1

    .prologue
    .line 490
    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportFolderLock:Z

    return v0
.end method

.method public static supportFolderNSecOpen()Z
    .locals 1

    .prologue
    .line 291
    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportFolderNSecOpen:Z

    return v0
.end method

.method public static supportFolderSelect()Z
    .locals 1

    .prologue
    .line 420
    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportFolderSelect:Z

    return v0
.end method

.method public static supportGSAPreWarming()Z
    .locals 2

    .prologue
    .line 541
    sget-object v0, Lcom/android/launcher3/LauncherFeature;->sProductName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 542
    sget-object v0, Lcom/android/launcher3/LauncherFeature;->sProductName:Ljava/lang/String;

    const-string v1, "dream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/launcher3/LauncherFeature;->sBuildFlavor:Ljava/lang/String;

    const-string v1, "dream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportGSAPreWarming:Z

    .line 544
    :cond_1
    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportGSAPreWarming:Z

    return v0

    .line 542
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportGalaxyAppsSearch()Z
    .locals 1

    .prologue
    .line 343
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isVZWModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportGalaxyAppsSearch:Z

    .line 346
    :cond_0
    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportGalaxyAppsSearch:Z

    return v0
.end method

.method public static supportGameHome()Z
    .locals 1

    .prologue
    .line 337
    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportGameHome:Z

    return v0
.end method

.method public static supportHomeModeChange()Z
    .locals 2

    .prologue
    .line 248
    sget-object v0, Lcom/android/launcher3/LauncherFeature;->sHomeAppsStructureFeature:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 249
    sget-object v0, Lcom/android/launcher3/LauncherFeature;->sHomeAppsStructureFeature:Ljava/lang/String;

    const-string v1, "support_homeonly"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportHomeModeChangeFeature:Z

    if-eqz v0, :cond_0

    .line 250
    sget-object v0, Lcom/android/launcher3/LauncherFeature;->sHomeAppsStructureFeature:Ljava/lang/String;

    const-string v1, "homeapps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    const/4 v0, 0x1

    sput v0, Lcom/android/launcher3/LauncherFeature;->sSupportHomeModeChangeIndex:I

    .line 255
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/LauncherFeature;->sHomeAppsStructureFeature:Ljava/lang/String;

    .line 258
    :cond_0
    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportHomeModeChange:Z

    return v0

    .line 253
    :cond_1
    const/4 v0, 0x0

    sput v0, Lcom/android/launcher3/LauncherFeature;->sSupportHomeModeChangeIndex:I

    goto :goto_0
.end method

.method public static supportHotword()Z
    .locals 1

    .prologue
    .line 512
    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportHotword:Z

    return v0
.end method

.method public static supportMoveToHomeAppsByDragging()Z
    .locals 1

    .prologue
    .line 325
    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportMoveToHomeAppsByDragging:Z

    return v0
.end method

.method public static supportMoveToHomeAppsByLongPress()Z
    .locals 1

    .prologue
    .line 331
    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportMoveToHomeAppsByLongPress:Z

    return v0
.end method

.method public static supportMultiSelect()Z
    .locals 1

    .prologue
    .line 414
    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportMultiSelect:Z

    return v0
.end method

.method public static supportNavigationBar()Z
    .locals 1

    .prologue
    .line 230
    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportNavigationBar:Z

    return v0
.end method

.method static supportNfcHwKeyboard()Z
    .locals 1

    .prologue
    .line 456
    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportNfcHwKeyboard:Z

    return v0
.end method

.method public static supportQuickOption()Z
    .locals 1

    .prologue
    .line 313
    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportQuickOption:Z

    return v0
.end method

.method static supportRotate()Z
    .locals 1

    .prologue
    .line 432
    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportRotate:Z

    return v0
.end method

.method public static supportSprintExtension()Z
    .locals 1

    .prologue
    .line 534
    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sIsSPR:Z

    return v0
.end method

.method public static supportTransitionEffects()Z
    .locals 1

    .prologue
    .line 496
    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportTransitionEffect:Z

    return v0
.end method

.method public static supportTraySwipeInteraction()Z
    .locals 1

    .prologue
    .line 319
    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportTraySwipeInteraction:Z

    return v0
.end method

.method static supportWallpaperTilt()Z
    .locals 1

    .prologue
    .line 506
    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportWallpaperTilt:Z

    return v0
.end method

.method static supportWidgetSetting()Z
    .locals 1

    .prologue
    .line 524
    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportWidgetSetting:Z

    return v0
.end method

.method public static supportZeroPageBezelSwipe()Z
    .locals 1

    .prologue
    .line 474
    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportZeroPageBezelSwipe:Z

    return v0
.end method

.method public static supportZeroPageHome()Z
    .locals 1

    .prologue
    .line 462
    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportZeroPageHome:Z

    return v0
.end method

.method public static supportZeroPageSetting()Z
    .locals 1

    .prologue
    .line 550
    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportZeroPageSetting:Z

    return v0
.end method

.method public static supportZeroPageSwitch()Z
    .locals 1

    .prologue
    .line 468
    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportZeroPageSwitch:Z

    return v0
.end method
