.class Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "LockscreenMenuSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScreenLockSearchIndexProvider"
.end annotation


# instance fields
.field private final mClassName:Ljava/lang/String;

.field private mLockUtil:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2174
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    .line 2175
    const-class v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mClassName:Ljava/lang/String;

    .line 2174
    return-void
.end method

.method private isGuestUser(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 2351
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2352
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2353
    .local v0, "info":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2354
    const/4 v1, 0x1

    return v1

    .line 2357
    .end local v0    # "info":Landroid/content/pm/UserInfo;
    :cond_0
    return v3
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2363
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2365
    .local v4, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 2366
    .local v3, "isSupportLMM":Z
    invoke-static {p1}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-nez v7, :cond_0

    .line 2367
    const/4 v3, 0x1

    .line 2370
    :cond_0
    const/4 v0, 0x0

    .line 2371
    .local v0, "hasFMMDMClient":Z
    invoke-static {p1}, Lcom/android/settings/Utils;->hasFMMDMClient(Landroid/content/Context;)Z

    move-result v0

    .line 2373
    .local v0, "hasFMMDMClient":Z
    invoke-static {}, Lcom/android/settings/Utils;->isSupportNotificationsIconsOnly()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 2374
    const-string/jumbo v7, "lock_screen_menu_notifications"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2380
    :goto_0
    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mLockUtil:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2381
    const-string/jumbo v7, "secured_lock_settigns"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2384
    :cond_1
    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mLockUtil:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mLockUtil:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2385
    const-string/jumbo v7, "show_information"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2386
    const-string/jumbo v7, "secured_lock_settigns"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2389
    :cond_2
    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mLockUtil:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2390
    const-string/jumbo v7, "lock_screen_menu_notifications"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2391
    const-string/jumbo v7, "lock_screen_menu_sec_notifications"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2394
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v7

    if-nez v7, :cond_4

    const-string/jumbo v7, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-eqz v7, :cond_5

    .line 2395
    :cond_4
    const-string/jumbo v7, "find_my_mobile"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2398
    :cond_5
    if-nez v3, :cond_6

    if-eqz v0, :cond_15

    .line 2402
    :cond_6
    :goto_1
    invoke-static {p1}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 2403
    :cond_7
    const-string/jumbo v7, "finger_scanner"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2404
    const-string/jumbo v7, "iris_settings"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2405
    const-string/jumbo v7, "find_my_mobile"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2406
    const-string/jumbo v7, "unlock_set_or_change"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2407
    const-string/jumbo v7, "other_security_settings"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2410
    :cond_8
    invoke-static {p1}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_16

    .line 2411
    const-string/jumbo v7, "finger_scanner"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2416
    :cond_9
    :goto_2
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v7

    if-nez v7, :cond_a

    .line 2417
    const-string/jumbo v7, "iris_settings"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2420
    :cond_a
    invoke-static {p1}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 2421
    const-string/jumbo v7, "iris_settings"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2422
    const-string/jumbo v7, "finger_scanner"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2425
    :cond_b
    const-string/jumbo v7, "app_ops_settings"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2427
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 2428
    const-string/jumbo v7, "lock_screen_menu_notifications"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2429
    const-string/jumbo v7, "lock_screen_menu_sec_notifications"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2430
    const-string/jumbo v7, "unlock_set_or_change"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2431
    const-string/jumbo v7, "show_information"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2432
    const-string/jumbo v7, "secured_lock_settigns"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2433
    const-string/jumbo v7, "toggle_install_applications"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2434
    const-string/jumbo v7, "find_my_mobile"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2437
    :cond_c
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 2438
    const-string/jumbo v7, "toggle_install_applications"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2439
    const-string/jumbo v7, "find_my_mobile"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2442
    :cond_d
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v7

    if-nez v7, :cond_e

    .line 2443
    const-string/jumbo v7, "iris_settings"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2446
    :cond_e
    invoke-static {p1}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_f

    invoke-static {p1}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_f

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v7

    if-nez v7, :cond_f

    .line 2447
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-eqz v7, :cond_17

    .line 2449
    :cond_f
    :goto_3
    const-string/jumbo v7, "key_private_mode"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2452
    :cond_10
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 2453
    .local v6, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2454
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "com.sec.knox.securefolder.CREATE_SECURE_FOLDER"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2455
    invoke-virtual {v1, v6}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_18

    const/4 v2, 0x1

    .line 2457
    .local v2, "isSecureFolderAction":Z
    :goto_4
    const-string/jumbo v7, "persona"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/SemPersonaManager;

    .line 2459
    .local v5, "mPersonaManager":Lcom/samsung/android/knox/SemPersonaManager;
    invoke-virtual {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isUserManaged()Z

    move-result v7

    if-eqz v7, :cond_19

    if-eqz v2, :cond_19

    .line 2463
    :goto_5
    invoke-static {p1}, Lcom/android/settings/Utils;->hasSamsungPassApplication(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-static {p1}, Lcom/android/settings/Utils;->hasSamsungPassFrameworkPackage(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-eqz v7, :cond_12

    .line 2464
    :cond_11
    const-string/jumbo v7, "samsung_pass"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2468
    :cond_12
    invoke-static {p1}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 2469
    const-string/jumbo v7, "iris_settings"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2473
    :cond_13
    return-object v4

    .line 2376
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "isSecureFolderAction":Z
    .end local v5    # "mPersonaManager":Lcom/samsung/android/knox/SemPersonaManager;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_14
    const-string/jumbo v7, "lock_screen_menu_sec_notifications"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2399
    :cond_15
    const-string/jumbo v7, "find_my_mobile"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2412
    :cond_16
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->isGuestUser(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2413
    const-string/jumbo v7, "finger_scanner"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2448
    :cond_17
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v7

    .line 2447
    if-nez v7, :cond_f

    .line 2448
    invoke-static {}, Lcom/android/settings/Utils;->isDisasterSafetyModel()Z

    move-result v7

    .line 2447
    if-nez v7, :cond_f

    .line 2448
    invoke-static {p1}, Lcom/android/settings/Utils;->isAfwProfile(Landroid/content/Context;)Z

    move-result v7

    .line 2446
    if-eqz v7, :cond_10

    goto/16 :goto_3

    .line 2455
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_18
    const/4 v2, 0x0

    .restart local v2    # "isSecureFolderAction":Z
    goto :goto_4

    .line 2460
    .restart local v5    # "mPersonaManager":Lcom/samsung/android/knox/SemPersonaManager;
    :cond_19
    const-string/jumbo v7, "secure_folder"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .prologue
    const v8, 0x7f0b047f

    .line 2234
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2236
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/SearchIndexableRaw;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 2239
    .local v4, "res":Landroid/content/res/Resources;
    new-instance v1, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v1, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 2240
    .local v1, "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v6, "unlock_set_or_change"

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 2241
    const-class v6, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    .line 2242
    const v6, 0x7f0b1188

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 2243
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 2244
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2247
    new-instance v1, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v1    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v1, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 2248
    .restart local v1    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-class v6, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    .line 2249
    const-string/jumbo v6, "show_information"

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 2250
    const v6, 0x7f0b0832

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 2251
    invoke-static {p1}, Lcom/android/settings/Utils;->isCoverVerified(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {p1}, Lcom/android/settings/Utils;->hasCoverSettingOptions(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2252
    invoke-static {p1}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v0

    .line 2253
    .local v0, "covertype":I
    const/16 v6, 0x8

    if-ne v0, v6, :cond_7

    .line 2254
    const v6, 0x7f0b0858

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 2264
    .end local v0    # "covertype":I
    :goto_0
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 2265
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2267
    new-instance v1, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v1    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v1, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 2268
    .restart local v1    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v6, "toggle_install_applications"

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 2269
    const v6, 0x7f0b14fa

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 2270
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 2271
    const v6, 0x7f0b0821

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 2275
    :goto_1
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 2276
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2278
    const/4 v3, 0x0

    .line 2279
    .local v3, "isSupportLMM":Z
    invoke-static {p1}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-nez v6, :cond_0

    .line 2280
    const/4 v3, 0x1

    .line 2283
    :cond_0
    const/4 v2, 0x0

    .line 2284
    .local v2, "hasFMMDMClient":Z
    invoke-static {p1}, Lcom/android/settings/Utils;->hasFMMDMClient(Landroid/content/Context;)Z

    move-result v2

    .line 2286
    .local v2, "hasFMMDMClient":Z
    if-eqz v3, :cond_1

    if-eqz v2, :cond_b

    .line 2296
    :cond_1
    :goto_2
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mLockUtil:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2297
    new-instance v1, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v1    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v1, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 2298
    .restart local v1    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v6, "secured_lock_settigns"

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 2299
    const-class v6, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    .line 2300
    const v6, 0x7f0b0859

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 2301
    const-string/jumbo v6, ""

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 2302
    const-string/jumbo v6, ""

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 2303
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 2304
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2307
    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v6

    if-nez v6, :cond_3

    .line 2309
    new-instance v1, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v1    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v1, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 2310
    .restart local v1    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v6, "other_security_settings"

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 2311
    const-class v6, Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    .line 2312
    const v6, 0x7f0b0839

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 2313
    const v6, 0x7f0b083a

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 2314
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 2315
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2318
    :cond_3
    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-wrap1(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2319
    new-instance v1, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v1    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v1, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 2320
    .restart local v1    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v6, "find_my_mobile"

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 2321
    const/4 v6, 0x3

    iput v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    .line 2322
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2325
    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {p1}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 2335
    :cond_5
    :goto_3
    invoke-static {p1}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {p1}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 2347
    :cond_6
    :goto_4
    return-object v5

    .line 2256
    .end local v2    # "hasFMMDMClient":Z
    .end local v3    # "isSupportLMM":Z
    .restart local v0    # "covertype":I
    :cond_7
    const v6, 0x7f0b0857

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    goto/16 :goto_0

    .line 2258
    .end local v0    # "covertype":I
    :cond_8
    invoke-static {p1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 2259
    const v6, 0x7f0b0856

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    goto/16 :goto_0

    .line 2261
    :cond_9
    const v6, 0x7f0b0833

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    goto/16 :goto_0

    .line 2273
    :cond_a
    const v6, 0x7f0b0390

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    goto/16 :goto_1

    .line 2287
    .restart local v2    # "hasFMMDMClient":Z
    .restart local v3    # "isSupportLMM":Z
    :cond_b
    new-instance v1, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v1    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v1, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 2288
    .restart local v1    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v6, "find_my_mobile"

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 2289
    const v6, 0x7f0b072a

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 2290
    const-string/jumbo v6, ""

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 2291
    const-string/jumbo v6, ""

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 2292
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 2293
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2325
    :cond_c
    invoke-static {p1}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 2326
    new-instance v1, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v1    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v1, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 2327
    .restart local v1    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v6, "iris_settings"

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 2328
    const-string/jumbo v6, "com.samsung.android.settings.iris.IrisLockSettings"

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    .line 2329
    const v6, 0x7f0b074a

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 2330
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 2331
    const/4 v6, 0x1

    iput v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    .line 2332
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 2335
    :cond_d
    invoke-static {p1}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 2336
    new-instance v1, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v1    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v1, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 2337
    .restart local v1    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    const-string/jumbo v6, "finger_scanner"

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 2338
    const-string/jumbo v6, "android.intent.action.MAIN"

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    .line 2339
    const-string/jumbo v6, "com.android.settings"

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    .line 2340
    const-string/jumbo v6, "com.android.settings.fingerprint.FingerprintEntry"

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    .line 2341
    const v6, 0x7f0b066d

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 2342
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 2343
    const/4 v6, 0x2

    iput v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    .line 2344
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 2179
    new-instance v7, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v7, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mLockUtil:Lcom/android/internal/widget/LockPatternUtils;

    .line 2181
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2184
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Landroid/provider/SearchIndexableResource;>;"
    new-instance v6, Landroid/provider/SearchIndexableResource;

    invoke-direct {v6, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 2185
    .local v6, "sir":Landroid/provider/SearchIndexableResource;
    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mClassName:Ljava/lang/String;

    iput-object v7, v6, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    .line 2186
    const v7, 0x7f080096

    iput v7, v6, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 2187
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2189
    invoke-static {p1}, Lcom/android/settings/Utils;->hasFMMDMClient(Landroid/content/Context;)Z

    move-result v1

    .line 2192
    .local v1, "hasFMMDMClient":Z
    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get0()I

    move-result v7

    if-nez v7, :cond_0

    const/4 v3, 0x1

    .line 2194
    .local v3, "mIsPrimary":Z
    :cond_0
    if-eqz v3, :cond_1

    invoke-static {p1}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2229
    :cond_1
    :goto_0
    return-object v5

    .line 2194
    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v7

    if-nez v7, :cond_1

    .line 2195
    const/4 v4, 0x0

    .line 2196
    .local v4, "resId":I
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2198
    const v4, 0x7f0800fd

    .line 2204
    :goto_1
    new-instance v6, Landroid/provider/SearchIndexableResource;

    .end local v6    # "sir":Landroid/provider/SearchIndexableResource;
    invoke-direct {v6, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 2205
    .restart local v6    # "sir":Landroid/provider/SearchIndexableResource;
    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mClassName:Ljava/lang/String;

    iput-object v7, v6, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    .line 2206
    iput v4, v6, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 2207
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2210
    new-instance v0, Lcom/samsung/android/settings/encryption/EncryptionPreferenceManager;

    .line 2211
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 2210
    invoke-direct {v0, v7}, Lcom/samsung/android/settings/encryption/EncryptionPreferenceManager;-><init>(Landroid/content/Context;)V

    .line 2212
    .local v0, "epm":Lcom/samsung/android/settings/encryption/EncryptionPreferenceManager;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/settings/encryption/EncryptionPreferenceManager;->isSDcardEncryptionPossible()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2213
    const-string/jumbo v7, "device_policy"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 2214
    .local v2, "mDPM":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v2, v8}, Landroid/app/admin/DevicePolicyManager;->getSamsungSDcardEncryptionStatus(Landroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2215
    const v4, 0x7f08010f

    .line 2219
    :goto_2
    new-instance v6, Landroid/provider/SearchIndexableResource;

    .end local v6    # "sir":Landroid/provider/SearchIndexableResource;
    invoke-direct {v6, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 2220
    .restart local v6    # "sir":Landroid/provider/SearchIndexableResource;
    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mClassName:Ljava/lang/String;

    iput-object v7, v6, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    .line 2221
    iput v4, v6, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 2222
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2226
    .end local v2    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    :cond_3
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2201
    .end local v0    # "epm":Lcom/samsung/android/settings/encryption/EncryptionPreferenceManager;
    :cond_4
    const v4, 0x7f080113

    goto :goto_1

    .line 2217
    .restart local v0    # "epm":Lcom/samsung/android/settings/encryption/EncryptionPreferenceManager;
    .restart local v2    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    :cond_5
    const v4, 0x7f080110

    goto :goto_2
.end method
