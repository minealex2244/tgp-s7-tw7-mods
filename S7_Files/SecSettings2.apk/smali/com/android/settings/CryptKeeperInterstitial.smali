.class public Lcom/android/settings/CryptKeeperInterstitial;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "CryptKeeperInterstitial.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static mSalesCode:Ljava/lang/String;


# instance fields
.field private mButtonLayout:Landroid/widget/LinearLayout;

.field private mChangePWButton:Landroid/widget/Button;

.field private mDontRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

.field private mEncryptionMessage:Landroid/widget/TextView;

.field private mIntent:Landroid/content/Intent;

.field private mIsEncryptionInterstitial:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPasswordRequired:Z

.field private mRequestedPasswordQuality:I

.field private mRequirePasswordOff:Landroid/view/View;

.field private mRequirePasswordOn:Landroid/view/View;

.field private mRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

.field private mSelectOptionLayout:Landroid/widget/LinearLayout;

.field private mUnlockMethodIntent:Landroid/content/Intent;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/CryptKeeperInterstitial;I)Z
    .locals 1
    .param p1, "request"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeperInterstitial;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/CryptKeeperInterstitial;Z)V
    .locals 0
    .param p1, "required"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeperInterstitial;->setRequirePasswordState(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/settings/CryptKeeperInterstitial;->mSalesCode:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mIsEncryptionInterstitial:Z

    .line 96
    iput-object v1, p0, Lcom/android/settings/CryptKeeperInterstitial;->mUnlockMethodIntent:Landroid/content/Intent;

    .line 97
    iput-object v1, p0, Lcom/android/settings/CryptKeeperInterstitial;->mIntent:Landroid/content/Intent;

    .line 72
    return-void
.end method

.method private hasTSafeLock()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 510
    const/4 v3, 0x0

    .line 511
    .local v3, "result":Z
    const-string/jumbo v0, "com.skt.t_smart_charge"

    .line 513
    .local v0, "TLOCK_PKG_NAME":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 514
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 515
    const-string/jumbo v5, "com.skt.t_smart_charge"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 516
    .local v4, "tLock":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .line 521
    .end local v4    # "tLock":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v3

    .line 516
    .restart local v4    # "tLock":Landroid/content/pm/ApplicationInfo;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 518
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "tLock":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 519
    .local v1, "ex":Ljava/lang/Exception;
    return v7
.end method

.method private isSupportUCMSecureStartUp()Z
    .locals 9

    .prologue
    .line 525
    const/4 v1, 0x0

    .line 526
    .local v1, "canSupport":Z
    const-string/jumbo v6, "com.samsung.ucs.ucsservice"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v4

    .line 527
    .local v4, "ucmService":Lcom/samsung/android/knox/ucm/core/IUcmService;
    if-nez v4, :cond_0

    .line 528
    const-string/jumbo v6, "CryptKeeperInterstitial"

    const-string/jumbo v7, "failed to get UCM Service"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    return v1

    .line 533
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-interface {v4, v6}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getKeyguardStorageForCurrentUser(I)Ljava/lang/String;

    move-result-object v3

    .line 534
    .local v3, "keyguardCSName":Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string/jumbo v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "none"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 535
    :cond_1
    const-string/jumbo v6, "CryptKeeperInterstitial"

    const-string/jumbo v7, "ERROR, UCM keyguard is not enabled in QUALITY_SMARTCARDNUMERIC"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    return v1

    .line 538
    :cond_2
    const-string/jumbo v6, ""

    invoke-static {v3, v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 539
    .local v5, "uriCSName":Ljava/lang/String;
    invoke-interface {v4, v5}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getAgentInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 540
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_3

    .line 541
    const-string/jumbo v6, "CryptKeeperInterstitial"

    const-string/jumbo v7, "failed to get agent info"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    return v1

    .line 544
    :cond_3
    const-string/jumbo v6, "isODESupport"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 545
    .local v1, "canSupport":Z
    const-string/jumbo v6, "CryptKeeperInterstitial"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "UCM ODE Support : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "canSupport":Z
    .end local v3    # "keyguardCSName":Ljava/lang/String;
    .end local v5    # "uriCSName":Ljava/lang/String;
    :goto_0
    return v1

    .line 546
    :catch_0
    move-exception v2

    .line 547
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private isTSafeLock()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 503
    invoke-direct {p0}, Lcom/android/settings/CryptKeeperInterstitial;->hasTSafeLock()Z

    move-result v3

    if-nez v3, :cond_0

    return v2

    .line 505
    :cond_0
    const-string/jumbo v0, "off_menu_setting"

    .line 506
    .local v0, "OFF_MENU_SETTING":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "off_menu_setting"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 5
    .param p1, "request"    # I

    .prologue
    const/4 v4, 0x1

    .line 445
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 446
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 448
    .local v0, "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 451
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->onBackPressed()V

    .line 452
    return v4

    .line 456
    :cond_0
    const v2, 0x7f0b0631

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 455
    invoke-virtual {v0, p1, v2, v4}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Z)Z

    move-result v2

    return v2
.end method

.method private setRequirePasswordState(Z)V
    .locals 4
    .param p1, "required"    # Z

    .prologue
    .line 393
    iput-boolean p1, p0, Lcom/android/settings/CryptKeeperInterstitial;->mPasswordRequired:Z

    .line 394
    iget-object v2, p0, Lcom/android/settings/CryptKeeperInterstitial;->mRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 395
    iget-object v3, p0, Lcom/android/settings/CryptKeeperInterstitial;->mDontRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 398
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    .line 399
    .local v1, "sa":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->getResultIntentData()Landroid/content/Intent;

    move-result-object v0

    .line 400
    .local v0, "resultIntentData":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 401
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "resultIntentData":Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 402
    .restart local v0    # "resultIntentData":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Lcom/android/settings/SettingsActivity;->setResultIntentData(Landroid/content/Intent;)V

    .line 404
    :cond_0
    const-string/jumbo v2, "extra_require_password"

    iget-boolean v3, p0, Lcom/android/settings/CryptKeeperInterstitial;->mPasswordRequired:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 392
    return-void

    .line 395
    .end local v0    # "resultIntentData":Landroid/content/Intent;
    .end local v1    # "sa":Lcom/android/settings/SettingsActivity;
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private showFinalConfirmation(ILjava/lang/String;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 485
    const-string/jumbo v3, "CryptKeeperInterstitial"

    const-string/jumbo v4, "change encryption password"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    const-string/jumbo v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 487
    .local v2, "service":Landroid/os/IBinder;
    if-nez v2, :cond_0

    .line 488
    const-string/jumbo v3, "CryptKeeperInterstitial"

    const-string/jumbo v4, "Could not find the mount service to update the encryption password"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    return-void

    .line 492
    :cond_0
    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 494
    .local v1, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/os/storage/IMountService;->changeEncryptionPassword(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->onBackPressed()V

    .line 483
    return-void

    .line 495
    :catch_0
    move-exception v0

    .line 496
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "CryptKeeperInterstitial"

    const-string/jumbo v4, "Error changing encryption password"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 104
    const/16 v0, 0x30

    return v0
.end method

.method isEncryptionInterstitial()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 414
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 415
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 416
    const-string/jumbo v2, "is_encryption_interstitial"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 417
    .local v1, "result":Z
    return v1

    .line 419
    .end local v1    # "result":Z
    :cond_0
    return v3
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    const/4 v4, -0x1

    .line 461
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 462
    const/16 v2, 0x64

    if-ne p1, v2, :cond_3

    if-eqz p2, :cond_3

    .line 463
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 464
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->finish()V

    .line 471
    :cond_0
    if-ne p2, v4, :cond_2

    if-eqz p3, :cond_2

    .line 472
    iget-object v2, p0, Lcom/android/settings/CryptKeeperInterstitial;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-boolean v3, p0, Lcom/android/settings/CryptKeeperInterstitial;->mPasswordRequired:Z

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setCredentialRequiredToDecrypt(Z)V

    .line 473
    iget-boolean v2, p0, Lcom/android/settings/CryptKeeperInterstitial;->mPasswordRequired:Z

    if-eqz v2, :cond_4

    .line 474
    const-string/jumbo v2, "type"

    invoke-virtual {p3, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 476
    .local v1, "type":I
    :goto_0
    iget-boolean v2, p0, Lcom/android/settings/CryptKeeperInterstitial;->mPasswordRequired:Z

    if-eqz v2, :cond_1

    .line 477
    const-string/jumbo v2, "password"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, "password":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/android/settings/CryptKeeperInterstitial;->showFinalConfirmation(ILjava/lang/String;)V

    .line 460
    .end local v0    # "password":Ljava/lang/String;
    .end local v1    # "type":I
    :cond_2
    return-void

    .line 465
    :cond_3
    const/16 v2, 0x37

    if-eq p1, v2, :cond_0

    .line 466
    return-void

    .line 475
    :cond_4
    const/4 v1, 0x1

    .restart local v1    # "type":I
    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 424
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 425
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/CryptKeeperInterstitial;->setRequirePasswordState(Z)V

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 427
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/CryptKeeperInterstitial;->setRequirePasswordState(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 271
    iget-object v2, p0, Lcom/android/settings/CryptKeeperInterstitial;->mChangePWButton:Landroid/widget/Button;

    if-ne p1, v2, :cond_5

    .line 273
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 272
    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 274
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-direct {p0}, Lcom/android/settings/CryptKeeperInterstitial;->isTSafeLock()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/CryptKeeperInterstitial;->mPasswordRequired:Z

    if-eqz v2, :cond_1

    .line 275
    invoke-direct {p0, v4}, Lcom/android/settings/CryptKeeperInterstitial;->setRequirePasswordState(Z)V

    .line 276
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b0663

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 270
    .end local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_0
    :goto_0
    return-void

    .line 277
    .restart local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1, v6}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryption(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 278
    iget-boolean v2, p0, Lcom/android/settings/CryptKeeperInterstitial;->mPasswordRequired:Z

    if-eqz v2, :cond_3

    .line 281
    :cond_2
    iget-boolean v2, p0, Lcom/android/settings/CryptKeeperInterstitial;->mIsEncryptionInterstitial:Z

    if-eqz v2, :cond_4

    .line 282
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->startLockIntent()V

    goto :goto_0

    .line 278
    :cond_3
    const-string/jumbo v2, "VZW"

    sget-object v3, Lcom/android/settings/CryptKeeperInterstitial;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 277
    if-eqz v2, :cond_2

    .line 279
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/settings/CryptKeeperInterstitial;->showDialog(I)V

    goto :goto_0

    .line 283
    :cond_4
    const/16 v2, 0x37

    invoke-direct {p0, v2}, Lcom/android/settings/CryptKeeperInterstitial;->runKeyguardConfirmation(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 284
    const-string/jumbo v2, "CryptKeeperInterstitial"

    const-string/jumbo v3, "Alert::Keyguard confirmation failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 287
    .end local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_5
    iget-object v2, p0, Lcom/android/settings/CryptKeeperInterstitial;->mRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    if-eq p1, v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/CryptKeeperInterstitial;->mRequirePasswordOn:Landroid/view/View;

    if-ne p1, v2, :cond_9

    .line 288
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    .line 289
    .local v0, "accEn":Z
    if-eqz v0, :cond_7

    iget-boolean v2, p0, Lcom/android/settings/CryptKeeperInterstitial;->mPasswordRequired:Z

    if-eqz v2, :cond_8

    .line 293
    :cond_7
    invoke-direct {p0, v5}, Lcom/android/settings/CryptKeeperInterstitial;->setRequirePasswordState(Z)V

    .line 295
    :goto_1
    iget-object v2, p0, Lcom/android/settings/CryptKeeperInterstitial;->mRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 296
    iget-object v2, p0, Lcom/android/settings/CryptKeeperInterstitial;->mDontRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0

    .line 290
    :cond_8
    invoke-direct {p0, v4}, Lcom/android/settings/CryptKeeperInterstitial;->setRequirePasswordState(Z)V

    .line 291
    invoke-virtual {p0, v5}, Lcom/android/settings/CryptKeeperInterstitial;->showDialog(I)V

    goto :goto_1

    .line 298
    .end local v0    # "accEn":Z
    :cond_9
    invoke-direct {p0, v4}, Lcom/android/settings/CryptKeeperInterstitial;->setRequirePasswordState(Z)V

    .line 299
    iget-object v2, p0, Lcom/android/settings/CryptKeeperInterstitial;->mRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 300
    iget-object v2, p0, Lcom/android/settings/CryptKeeperInterstitial;->mDontRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 11
    .param p1, "dialogId"    # I

    .prologue
    const v10, 0x104000a

    const/high16 v9, 0x1040000

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 323
    packed-switch p1, :pswitch_data_0

    .line 388
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 325
    :pswitch_0
    iget-object v5, p0, Lcom/android/settings/CryptKeeperInterstitial;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v3

    .line 326
    .local v3, "quality":I
    iget-boolean v5, p0, Lcom/android/settings/CryptKeeperInterstitial;->mIsEncryptionInterstitial:Z

    if-eqz v5, :cond_0

    .line 327
    iget v3, p0, Lcom/android/settings/CryptKeeperInterstitial;->mRequestedPasswordQuality:I

    .line 330
    :cond_0
    sparse-switch v3, :sswitch_data_0

    .line 345
    const v4, 0x7f0b19f5

    .line 346
    .local v4, "titleId":I
    const v2, 0x7f0b19f8

    .line 351
    .local v2, "messageId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v5

    .line 353
    const/4 v6, -0x1

    .line 351
    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v1

    .line 355
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 357
    const-string/jumbo v0, ""

    .line 362
    .local v0, "exampleAccessibility":Ljava/lang/CharSequence;
    :goto_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 364
    new-array v6, v7, [Ljava/lang/Object;

    aput-object v0, v6, v8

    invoke-virtual {p0, v2, v6}, Lcom/android/settings/CryptKeeperInterstitial;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 362
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v10, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v9, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5

    .line 332
    .end local v0    # "exampleAccessibility":Ljava/lang/CharSequence;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .end local v2    # "messageId":I
    .end local v4    # "titleId":I
    :sswitch_0
    const v4, 0x7f0b19f4

    .line 333
    .restart local v4    # "titleId":I
    const v2, 0x7f0b19f7

    .line 334
    .restart local v2    # "messageId":I
    goto :goto_0

    .line 336
    .end local v2    # "messageId":I
    .end local v4    # "titleId":I
    :sswitch_1
    const v4, 0x7f0b0667

    .line 337
    .restart local v4    # "titleId":I
    const v2, 0x7f0b0668

    .line 338
    .restart local v2    # "messageId":I
    goto :goto_0

    .line 341
    .end local v2    # "messageId":I
    .end local v4    # "titleId":I
    :sswitch_2
    const v4, 0x7f0b19f3

    .line 342
    .restart local v4    # "titleId":I
    const v2, 0x7f0b19f6

    .line 343
    .restart local v2    # "messageId":I
    goto :goto_0

    .line 359
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :cond_1
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 360
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 359
    invoke-virtual {v5, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "exampleAccessibility":Ljava/lang/CharSequence;
    goto :goto_1

    .line 371
    .end local v0    # "exampleAccessibility":Ljava/lang/CharSequence;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .end local v2    # "messageId":I
    .end local v3    # "quality":I
    .end local v4    # "titleId":I
    :pswitch_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 372
    const v6, 0x7f0b0664

    invoke-virtual {p0, v6}, Lcom/android/settings/CryptKeeperInterstitial;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 371
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 374
    new-instance v6, Lcom/android/settings/CryptKeeperInterstitial$1;

    invoke-direct {v6, p0}, Lcom/android/settings/CryptKeeperInterstitial$1;-><init>(Lcom/android/settings/CryptKeeperInterstitial;)V

    .line 371
    invoke-virtual {v5, v10, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 381
    new-instance v6, Lcom/android/settings/CryptKeeperInterstitial$2;

    invoke-direct {v6, p0}, Lcom/android/settings/CryptKeeperInterstitial$2;-><init>(Lcom/android/settings/CryptKeeperInterstitial;)V

    .line 371
    invoke-virtual {v5, v9, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5

    .line 323
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 330
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_2
        0x30000 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 111
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->isEncryptionInterstitial()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mIsEncryptionInterstitial:Z

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mIntent:Landroid/content/Intent;

    .line 114
    iget-object v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "extra_unlock_method_intent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mUnlockMethodIntent:Landroid/content/Intent;

    .line 115
    iget-object v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "extra_password_quality"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mRequestedPasswordQuality:I

    .line 116
    const-string/jumbo v0, "persist.omc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/CryptKeeperInterstitial;->mSalesCode:Ljava/lang/String;

    .line 117
    const-string/jumbo v0, ""

    sget-object v1, Lcom/android/settings/CryptKeeperInterstitial;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "null"

    sget-object v1, Lcom/android/settings/CryptKeeperInterstitial;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    :cond_0
    const-string/jumbo v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/CryptKeeperInterstitial;->mSalesCode:Ljava/lang/String;

    .line 120
    :cond_1
    const v0, 0x7f040089

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 317
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 318
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mIsEncryptionInterstitial:Z

    .line 316
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 434
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 435
    const-string/jumbo v1, "selected_button"

    iget-object v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 432
    return-void

    .line 435
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 125
    invoke-super/range {p0 .. p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 126
    const v13, 0x7f110200

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mRequirePasswordOn:Landroid/view/View;

    .line 127
    const v13, 0x7f110201

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mRequirePasswordOff:Landroid/view/View;

    .line 129
    const v13, 0x7f1101ff

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/CheckedTextView;

    .line 128
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    .line 131
    const v13, 0x7f11000f

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/CheckedTextView;

    .line 130
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mDontRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    .line 133
    const v13, 0x7f1101fd

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 132
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mEncryptionMessage:Landroid/widget/TextView;

    .line 134
    const v13, 0x7f110203

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mChangePWButton:Landroid/widget/Button;

    .line 135
    const v13, 0x7f1101fe

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mSelectOptionLayout:Landroid/widget/LinearLayout;

    .line 136
    const v13, 0x7f110202

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mButtonLayout:Landroid/widget/LinearLayout;

    .line 137
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mChangePWButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v14

    const/4 v15, 0x1

    invoke-virtual {v13, v15, v14}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v5

    .line 142
    .local v5, "forFingerprint":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v14

    const/16 v15, 0x10

    invoke-virtual {v13, v15, v14}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v6

    .line 143
    .local v6, "forIris":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v11

    .line 145
    .local v11, "quality":I
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mIsEncryptionInterstitial:Z

    if-eqz v13, :cond_0

    .line 146
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/settings/CryptKeeperInterstitial;->mRequestedPasswordQuality:I

    .line 151
    :cond_0
    const v2, 0x7f0b0666

    .line 152
    .local v2, "disableId":I
    const v1, 0x7f0b19e6

    .line 153
    .local v1, "continueId":I
    sparse-switch v11, :sswitch_data_0

    .line 215
    const/4 v13, 0x1

    if-ne v5, v13, :cond_e

    .line 216
    const v9, 0x7f0b19ec

    .line 221
    .local v9, "msgId":I
    :goto_0
    const v4, 0x7f0b19ef

    .line 225
    .local v4, "enableId":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mEncryptionMessage:Landroid/widget/TextView;

    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setText(I)V

    .line 227
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mIsEncryptionInterstitial:Z

    if-eqz v13, :cond_1

    .line 228
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mChangePWButton:Landroid/widget/Button;

    const v14, 0x7f0b19e6

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setText(I)V

    .line 231
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v13, v4}, Landroid/widget/CheckedTextView;->setText(I)V

    .line 233
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mDontRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mDontRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    const v14, 0x7f0b0666

    invoke-virtual {v13, v14}, Landroid/widget/CheckedTextView;->setText(I)V

    .line 235
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mRequirePasswordOn:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mRequirePasswordOff:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mIsEncryptionInterstitial:Z

    if-eqz v13, :cond_2

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    .line 240
    const-string/jumbo v14, "extra_require_password"

    const/4 v15, 0x1

    .line 239
    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings/CryptKeeperInterstitial;->setRequirePasswordState(Z)V

    .line 243
    :cond_2
    if-eqz p2, :cond_12

    .line 244
    const-string/jumbo v13, "selected_button"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_10

    const/4 v12, 0x1

    .line 245
    .local v12, "value":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v13, v12}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 246
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/CryptKeeperInterstitial;->mDontRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    if-eqz v12, :cond_11

    const/4 v13, 0x0

    :goto_3
    invoke-virtual {v14, v13}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 247
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settings/CryptKeeperInterstitial;->setRequirePasswordState(Z)V

    .line 262
    .end local v12    # "value":Z
    :goto_4
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 263
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mDontRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 264
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mRequirePasswordOff:Landroid/view/View;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setEnabled(Z)V

    .line 124
    :cond_3
    return-void

    .line 155
    .end local v4    # "enableId":I
    .end local v9    # "msgId":I
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 156
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v13

    const-string/jumbo v14, "SEC_FLOATING_FEATURE_ACCESSIBILITY_SUPPORT_DIRECTION_LOCK"

    invoke-virtual {v13, v14}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/CryptKeeperInterstitial;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "universal_lock_switch_state"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-eqz v13, :cond_5

    .line 158
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 159
    const v9, 0x7f0b0661

    .line 169
    .restart local v9    # "msgId":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mEncryptionMessage:Landroid/widget/TextView;

    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setText(I)V

    .line 170
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mSelectOptionLayout:Landroid/widget/LinearLayout;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 171
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mButtonLayout:Landroid/widget/LinearLayout;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 172
    return-void

    .line 161
    .end local v9    # "msgId":I
    :cond_4
    const v9, 0x7f0b0660

    .restart local v9    # "msgId":I
    goto :goto_5

    .line 164
    .end local v9    # "msgId":I
    :cond_5
    const v9, 0x7f0b065f

    .restart local v9    # "msgId":I
    goto :goto_5

    .line 167
    .end local v9    # "msgId":I
    :cond_6
    const v9, 0x7f0b0662

    .restart local v9    # "msgId":I
    goto :goto_5

    .line 174
    .end local v9    # "msgId":I
    :sswitch_1
    const/4 v13, 0x1

    if-ne v5, v13, :cond_7

    .line 175
    const v9, 0x7f0b19eb

    .line 180
    .restart local v9    # "msgId":I
    :goto_6
    const v4, 0x7f0b19ee

    .line 181
    .restart local v4    # "enableId":I
    goto/16 :goto_1

    .line 176
    .end local v4    # "enableId":I
    .end local v9    # "msgId":I
    :cond_7
    const/4 v13, 0x1

    if-ne v6, v13, :cond_8

    .line 177
    const v9, 0x7f0b065c

    .restart local v9    # "msgId":I
    goto :goto_6

    .line 179
    .end local v9    # "msgId":I
    :cond_8
    const v9, 0x7f0b19e8

    .restart local v9    # "msgId":I
    goto :goto_6

    .line 183
    .end local v9    # "msgId":I
    :sswitch_2
    const/4 v13, 0x1

    if-ne v5, v13, :cond_9

    .line 184
    const v9, 0x7f0b065a

    .line 189
    .restart local v9    # "msgId":I
    :goto_7
    const v4, 0x7f0b0665

    .line 190
    .restart local v4    # "enableId":I
    goto/16 :goto_1

    .line 185
    .end local v4    # "enableId":I
    .end local v9    # "msgId":I
    :cond_9
    const/4 v13, 0x1

    if-ne v6, v13, :cond_a

    .line 186
    const v9, 0x7f0b065e

    .restart local v9    # "msgId":I
    goto :goto_7

    .line 188
    .end local v9    # "msgId":I
    :cond_a
    const v9, 0x7f0b0659

    .restart local v9    # "msgId":I
    goto :goto_7

    .line 193
    .end local v9    # "msgId":I
    :sswitch_3
    const/4 v13, 0x1

    if-ne v5, v13, :cond_b

    .line 194
    const v9, 0x7f0b19ea

    .line 199
    .restart local v9    # "msgId":I
    :goto_8
    const v4, 0x7f0b19ed

    .line 200
    .restart local v4    # "enableId":I
    goto/16 :goto_1

    .line 195
    .end local v4    # "enableId":I
    .end local v9    # "msgId":I
    :cond_b
    const/4 v13, 0x1

    if-ne v6, v13, :cond_c

    .line 196
    const v9, 0x7f0b065b

    .restart local v9    # "msgId":I
    goto :goto_8

    .line 198
    .end local v9    # "msgId":I
    :cond_c
    const v9, 0x7f0b19e7

    .restart local v9    # "msgId":I
    goto :goto_8

    .line 202
    .end local v9    # "msgId":I
    :sswitch_4
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/CryptKeeperInterstitial;->isSupportUCMSecureStartUp()Z

    move-result v7

    .line 203
    .local v7, "isSupportSecureStartup":Z
    if-eqz v7, :cond_d

    .line 204
    const v9, 0x7f0b19e7

    .line 212
    .restart local v9    # "msgId":I
    const v4, 0x7f0b19ef

    .line 213
    .restart local v4    # "enableId":I
    goto/16 :goto_1

    .line 206
    .end local v4    # "enableId":I
    .end local v9    # "msgId":I
    :cond_d
    const v9, 0x7f0b065f

    .line 207
    .restart local v9    # "msgId":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mEncryptionMessage:Landroid/widget/TextView;

    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setText(I)V

    .line 208
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mSelectOptionLayout:Landroid/widget/LinearLayout;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 209
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mButtonLayout:Landroid/widget/LinearLayout;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 210
    return-void

    .line 217
    .end local v7    # "isSupportSecureStartup":Z
    .end local v9    # "msgId":I
    :cond_e
    const/4 v13, 0x1

    if-ne v6, v13, :cond_f

    .line 218
    const v9, 0x7f0b065d

    .restart local v9    # "msgId":I
    goto/16 :goto_0

    .line 220
    .end local v9    # "msgId":I
    :cond_f
    const v9, 0x7f0b19e9

    .restart local v9    # "msgId":I
    goto/16 :goto_0

    .line 244
    .restart local v4    # "enableId":I
    :cond_10
    const/4 v12, 0x0

    .restart local v12    # "value":Z
    goto/16 :goto_2

    .line 246
    :cond_11
    const/4 v13, 0x1

    goto/16 :goto_3

    .line 249
    .end local v12    # "value":Z
    :cond_12
    const/4 v10, 0x0

    .line 251
    .local v10, "passwordType":I
    :try_start_0
    const-string/jumbo v13, "mount"

    invoke-static {v13}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v8

    .line 252
    .local v8, "mountService":Landroid/os/storage/IMountService;
    invoke-interface {v8}, Landroid/os/storage/IMountService;->getPasswordType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 256
    .end local v8    # "mountService":Landroid/os/storage/IMountService;
    :goto_9
    const/4 v13, 0x1

    if-eq v10, v13, :cond_13

    .line 257
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/internal/widget/LockPatternUtils;->setCredentialRequiredToDecrypt(Z)V

    .line 259
    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeperInterstitial;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToDecrypt(Z)Z

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings/CryptKeeperInterstitial;->setRequirePasswordState(Z)V

    goto/16 :goto_4

    .line 253
    :catch_0
    move-exception v3

    .line 254
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v13, "CryptKeeperInterstitial"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Error calling mount service "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 153
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1000 -> :sswitch_2
        0x10000 -> :sswitch_1
        0x20000 -> :sswitch_3
        0x30000 -> :sswitch_3
        0x70000 -> :sswitch_4
    .end sparse-switch
.end method

.method protected startLockIntent()V
    .locals 3

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mUnlockMethodIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 306
    const-string/jumbo v0, "CryptKeeperInterstitial"

    const-string/jumbo v1, "have "

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mUnlockMethodIntent:Landroid/content/Intent;

    const-string/jumbo v1, "extra_require_password"

    iget-boolean v2, p0, Lcom/android/settings/CryptKeeperInterstitial;->mPasswordRequired:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 308
    iget-object v0, p0, Lcom/android/settings/CryptKeeperInterstitial;->mUnlockMethodIntent:Landroid/content/Intent;

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/CryptKeeperInterstitial;->startActivityForResult(Landroid/content/Intent;I)V

    .line 304
    :goto_0
    return-void

    .line 310
    :cond_0
    const-string/jumbo v0, "CryptKeeperInterstitial"

    const-string/jumbo v1, "no unlock intent to start"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperInterstitial;->finish()V

    goto :goto_0
.end method
