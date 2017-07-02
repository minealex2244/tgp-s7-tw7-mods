.class public Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "ChooseLockGeneric.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseLockGeneric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockGenericFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$1;,
        Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;,
        Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;,
        Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;
    }
.end annotation


# static fields
.field private static CAC_LOCK_CHOSEN:Z

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static mPm:Lcom/samsung/android/knox/SemPersonaManager;

.field private static mUnlockMethod:Ljava/lang/String;

.field private static mUserId:I

.field private static selectedTwoFactorType:I

.field private static usingTwoFactor:Z


# instance fields
.field private enterpriseOldPassword:Ljava/lang/String;

.field private fromChinaSUW:Z

.field protected fromSetupwizard:Z

.field private isLaunched:Z

.field private mAppLockBackupKey:Ljava/lang/String;

.field private mAppLockHeaderPreference:Landroid/preference/Preference;

.field private mChallenge:J

.field private mChooseLockRequestCode:I

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDisableSystemKey:Z

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEncryptionRequestDisabled:Z

.field private mEncryptionRequestQuality:I

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mForAppLockBackupKey:Z

.field private mForChangeCredRequiredForBoot:Z

.field protected mForFingerprint:Z

.field private mForIris:Z

.field private mForPrivateModeBackupKey:Z

.field private mFromKnoxSetDigitalLock:Z

.field private mHasChallenge:Z

.field private mHasChallenge_2nd:Z

.field private mHeaderView:Landroid/view/View;

.field private mHideDrawer:Z

.field private mIdentifyBiometrics:Z

.field private mInfo:Lcom/android/internal/net/LegacyVpnInfo;

.field private mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

.field private mIsDreg:Z

.field private mIsEnforcedMultifactorNReset:Z

.field private mIsFingerView:Z

.field private mIsIrisView:Z

.field private mIsKnoxVersion270Supported:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mLockNoneLoggingVal:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockSwipeLoggingVal:I

.field private mManagedPasswordProvider:Lcom/android/settings/ManagedLockPasswordProvider;

.field private mPasswordConfirmed:Z

.field private mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

.field private mRequirePassword:Z

.field private mSelectedBioLockTypeFromTwoStep:I

.field private mSelectedKnoxScreen:Z

.field private final mService:Landroid/net/IConnectivityManager;

.field private mUserPassword:Ljava/lang/String;

.field private mWaitingForConfirmation:Z

.field private mWasSecureBefore:Z

.field private oldPassword:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/camera/iris/SemIrisManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get5()I
    .locals 1

    sget v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUnlockMethod:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic -wrap0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;Ljava/lang/String;)Z
    .locals 1
    .param p1, "unlockMethod"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setUnlockMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;IZ)V
    .locals 0
    .param p1, "quality"    # I
    .param p2, "disabled"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 243
    sput-boolean v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->CAC_LOCK_CHOSEN:Z

    .line 307
    const/4 v0, -0x1

    sput v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->selectedTwoFactorType:I

    .line 308
    sput-boolean v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->usingTwoFactor:Z

    .line 342
    new-instance v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$1;

    invoke-direct {v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$1;-><init>()V

    .line 341
    sput-object v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 201
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 201
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 247
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    .line 248
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge_2nd:Z

    .line 249
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isLaunched:Z

    .line 251
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 252
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 253
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSelectedKnoxScreen:Z

    .line 257
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    .line 258
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    .line 259
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFromKnoxSetDigitalLock:Z

    .line 260
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    .line 261
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSelectedBioLockTypeFromTwoStep:I

    .line 262
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDisableSystemKey:Z

    .line 264
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForPrivateModeBackupKey:Z

    .line 265
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForAppLockBackupKey:Z

    .line 266
    iput-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mAppLockBackupKey:Ljava/lang/String;

    .line 267
    iput-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mAppLockHeaderPreference:Landroid/preference/Preference;

    .line 268
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsEnforcedMultifactorNReset:Z

    .line 269
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsKnoxVersion270Supported:Z

    .line 276
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHideDrawer:Z

    .line 279
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyBiometrics:Z

    .line 282
    const-string/jumbo v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 281
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mService:Landroid/net/IConnectivityManager;

    .line 290
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->fromSetupwizard:Z

    .line 291
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->fromChinaSUW:Z

    .line 324
    iput-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->oldPassword:Ljava/lang/String;

    .line 328
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsDreg:Z

    .line 329
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsFingerView:Z

    .line 330
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsIrisView:Z

    .line 336
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWasSecureBefore:Z

    .line 337
    iput-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHeaderView:Landroid/view/View;

    .line 442
    new-instance v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;-><init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    .line 4077
    new-instance v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;-><init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 201
    return-void
.end method

.method private DisableSystemKey(Z)V
    .locals 3
    .param p1, "request"    # Z

    .prologue
    .line 3153
    const-string/jumbo v0, "ChooseLockGenericFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DisableSystemKey() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3154
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->requestSystemKeyEvent(IZ)Z

    .line 3155
    const/16 v0, 0xbb

    invoke-direct {p0, v0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->requestSystemKeyEvent(IZ)Z

    .line 3156
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->requestSystemKeyEvent(IZ)Z

    .line 3152
    return-void
.end method

.method private areFidoPackagesInstalled(Landroid/content/Context;)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    .line 3411
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3412
    .local v3, "fidoPacakges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v7, "com.samsung.android.authfw"

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3413
    const-string/jumbo v7, "com.samsung.android.authservice"

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3415
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 3416
    .local v2, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v6, 0x0

    .line 3417
    .local v6, "matchedCnt":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "app$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 3418
    .local v0, "app":Landroid/content/pm/PackageInfo;
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "fidoPackage$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3419
    .local v4, "fidoPackage":Ljava/lang/String;
    iget-object v7, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3420
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3424
    .end local v0    # "app":Landroid/content/pm/PackageInfo;
    .end local v4    # "fidoPackage":Ljava/lang/String;
    .end local v5    # "fidoPackage$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, v6, :cond_3

    .line 3425
    const/4 v7, 0x1

    return v7

    .line 3427
    :cond_3
    const-string/jumbo v7, "ChooseLockGenericFragment"

    const-string/jumbo v8, "Fido packages have not been installed fully."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3428
    return v9
.end method

.method private confirmFingerprintPassword()V
    .locals 4

    .prologue
    .line 3127
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3128
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.samsung.android.settings.biometrics.BiometricsAuthenticationActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3129
    const-string/jumbo v2, "for_fingerprint_authentication"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3130
    const/high16 v2, 0x24000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3131
    const/16 v2, 0x2716

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3136
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 3132
    :catch_0
    move-exception v0

    .line 3133
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private confirmIrisPassword()V
    .locals 4

    .prologue
    .line 3141
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3142
    .local v1, "mIntent":Landroid/content/Intent;
    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.samsung.android.settings.biometrics.BiometricsAuthenticationActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3143
    const-string/jumbo v2, "for_iris_authentication"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3144
    const/16 v2, 0x2717

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3149
    .end local v1    # "mIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 3145
    :catch_0
    move-exception v0

    .line 3146
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private disableTwoFactorIfEnabled()V
    .locals 4

    .prologue
    .line 879
    const-string/jumbo v0, "ChooseLockGenericFragment"

    const-string/jumbo v1, "disableTwoFactorIfEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "knox_finger_print_plus"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 878
    return-void
.end method

.method private getCacChosen()Z
    .locals 1

    .prologue
    .line 2884
    sget-boolean v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->CAC_LOCK_CHOSEN:Z

    return v0
.end method

.method private getCurrentLockTypeSummary()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1562
    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    .line 1563
    .local v0, "currentLockTypeQuality":I
    const-string/jumbo v1, ""

    .line 1564
    .local v1, "lockTypeString":Ljava/lang/String;
    sparse-switch v0, :sswitch_data_0

    .line 1580
    const-string/jumbo v1, ""

    .line 1582
    :goto_0
    return-object v1

    .line 1566
    :sswitch_0
    const v2, 0x7f0b1191

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1571
    :sswitch_1
    const v2, 0x7f0b1193

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1577
    :sswitch_2
    const v2, 0x7f0b1195

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1564
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
    .end sparse-switch
.end method

.method private getEnterpriseID()Ljava/lang/String;
    .locals 5

    .prologue
    .line 848
    const/4 v2, 0x0

    .line 850
    .local v2, "mUserEmailAccount":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;

    move-result-object v1

    .line 851
    .local v1, "mGenericSSO":Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;
    const/4 v0, 0x0

    .line 852
    .local v0, "config":Lcom/samsung/android/knox/container/AuthenticationConfig;
    if-eqz v1, :cond_0

    .line 853
    invoke-virtual {v1}, Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;->getAuthenticationConfig()Lcom/samsung/android/knox/container/AuthenticationConfig;

    move-result-object v0

    .line 854
    .end local v0    # "config":Lcom/samsung/android/knox/container/AuthenticationConfig;
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorConfig()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 855
    invoke-virtual {v0}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorConfig()Landroid/os/Bundle;

    move-result-object v3

    .line 856
    sget-object v4, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->ENTERPRISEID_USERNAME:Ljava/lang/String;

    .line 855
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 858
    .end local v2    # "mUserEmailAccount":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method private getIntentForUnlockMethod(IZ)Landroid/content/Intent;
    .locals 27
    .param p1, "quality"    # I
    .param p2, "disabled"    # Z

    .prologue
    .line 2638
    const/4 v14, 0x0

    .line 2639
    .local v14, "intent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 2640
    .local v3, "context":Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v4, "Block"

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    .line 2641
    .local v15, "isBlock":Z
    const/high16 v2, 0x70000

    move/from16 v0, p1

    if-ne v0, v2, :cond_3

    .line 2642
    const-string/jumbo v2, "ChooseLockGenericFragment"

    const-string/jumbo v4, "Trying to set the SMARTCARDNUMERIC password quality"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2643
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getCacChosen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2644
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v5

    .line 2645
    .local v5, "minLength":I
    const/4 v2, 0x4

    if-ge v5, v2, :cond_0

    .line 2646
    const/4 v5, 0x4

    .line 2648
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v6

    .line 2650
    .local v6, "maxLength":I
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    sget v9, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    .line 2649
    invoke-virtual/range {v2 .. v9}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPasswordIntent(Landroid/content/Context;IIIZZI)Landroid/content/Intent;

    move-result-object v14

    .line 2651
    .local v14, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setCacChosen(Z)V

    .line 2652
    const-string/jumbo v2, "choose_cac_pin"

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2653
    const/16 v2, 0x66

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    .line 2871
    .end local v5    # "minLength":I
    .end local v6    # "maxLength":I
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    if-eqz v14, :cond_2

    .line 2872
    const-string/jumbo v2, ":settings:hide_drawer"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHideDrawer:Z

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2874
    :cond_2
    return-object v14

    .line 2655
    .local v14, "intent":Landroid/content/Intent;
    :cond_3
    const/high16 v2, 0x80000

    move/from16 v0, p1

    if-lt v0, v2, :cond_4

    .line 2656
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getLockManagedPasswordIntent(ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    .line 2657
    .local v14, "intent":Landroid/content/Intent;
    const/16 v2, 0x66

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    goto :goto_0

    .line 2658
    .local v14, "intent":Landroid/content/Intent;
    :cond_4
    const/high16 v2, 0x20000

    move/from16 v0, p1

    if-lt v0, v2, :cond_1c

    const/high16 v2, 0x60000

    move/from16 v0, p1

    if-gt v0, v2, :cond_1c

    .line 2659
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    sget v4, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v5

    .line 2660
    .restart local v5    # "minLength":I
    const/4 v2, 0x4

    if-ge v5, v2, :cond_5

    .line 2661
    const/4 v5, 0x4

    .line 2663
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v6

    .line 2665
    .restart local v6    # "maxLength":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v2, :cond_6

    .line 2666
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2667
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    .line 2670
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    if-eqz v2, :cond_c

    .line 2672
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChallenge:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    sget v11, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move-object/from16 v2, p0

    move/from16 v4, p1

    .line 2671
    invoke-virtual/range {v2 .. v11}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPasswordIntent(Landroid/content/Context;IIIZJLjava/lang/String;I)Landroid/content/Intent;

    move-result-object v14

    .line 2679
    .local v14, "intent":Landroid/content/Intent;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->oldPassword:Ljava/lang/String;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->oldPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 2680
    const-string/jumbo v2, "lockscreen.password_old"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->oldPassword:Ljava/lang/String;

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2685
    :cond_7
    const/high16 v2, 0x60000

    move/from16 v0, p1

    if-ne v0, v2, :cond_b

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/16 v4, 0x64

    if-lt v2, v4, :cond_b

    .line 2688
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumSymbols(Landroid/content/ComponentName;)I

    move-result v2

    const/4 v4, 0x1

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 2689
    .local v24, "minSymbol":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNumeric(Landroid/content/ComponentName;)I

    move-result v2

    const/4 v4, 0x1

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 2690
    .local v23, "minNumeric":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLetters(Landroid/content/ComponentName;)I

    move-result v2

    const/4 v4, 0x1

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 2691
    .local v20, "minLetter":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;)I

    move-result v25

    .line 2692
    .local v25, "minUpperCase":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;)I

    move-result v21

    .line 2693
    .local v21, "minLowerCase":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;)I

    move-result v22

    .line 2694
    .local v22, "minNonLetter":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v19

    .line 2696
    .local v19, "minLen":I
    add-int v2, v24, v23

    move/from16 v0, v22

    if-le v2, v0, :cond_8

    .line 2697
    add-int v22, v24, v23

    .line 2698
    const-string/jumbo v2, "lockscreen.password_min_nonletter"

    move/from16 v0, v22

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2701
    :cond_8
    add-int v2, v25, v21

    move/from16 v0, v20

    if-le v2, v0, :cond_9

    .line 2702
    add-int v20, v25, v21

    .line 2705
    :cond_9
    add-int v2, v22, v20

    move/from16 v0, v19

    if-le v2, v0, :cond_a

    .line 2706
    add-int v19, v22, v20

    .line 2707
    const-string/jumbo v2, "lockscreen.password_min"

    move/from16 v0, v19

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2710
    :cond_a
    const-string/jumbo v2, "lockscreen.password_min_uppercase"

    move/from16 v0, v25

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2711
    const-string/jumbo v2, "lockscreen.password_min_lowercase"

    move/from16 v0, v21

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2712
    const-string/jumbo v2, "lockscreen.password_min_symbols"

    move/from16 v0, v24

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2713
    const-string/jumbo v2, "lockscreen.password_min_numeric"

    move/from16 v0, v23

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2714
    const-string/jumbo v2, "lockscreen.password_min_letters"

    move/from16 v0, v20

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2717
    .end local v19    # "minLen":I
    .end local v20    # "minLetter":I
    .end local v21    # "minLowerCase":I
    .end local v22    # "minNonLetter":I
    .end local v23    # "minNumeric":I
    .end local v24    # "minSymbol":I
    .end local v25    # "minUpperCase":I
    :cond_b
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/16 v4, 0x64

    if-lt v2, v4, :cond_15

    .line 2718
    sget-boolean v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->usingTwoFactor:Z

    if-eqz v2, :cond_f

    .line 2719
    sget v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->selectedTwoFactorType:I

    const/16 v4, 0x271a

    if-ne v2, v4, :cond_d

    .line 2720
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->usingTwoFactor:Z

    .line 2721
    const/4 v2, -0x1

    sput v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->selectedTwoFactorType:I

    .line 2722
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v7, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v14

    .line 2723
    const/16 v2, 0x2713

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    goto/16 :goto_0

    .line 2675
    .local v14, "intent":Landroid/content/Intent;
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    sget v9, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move-object/from16 v2, p0

    move/from16 v4, p1

    .line 2674
    invoke-virtual/range {v2 .. v9}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPasswordIntent(Landroid/content/Context;IIIZLjava/lang/String;I)Landroid/content/Intent;

    move-result-object v14

    .local v14, "intent":Landroid/content/Intent;
    goto/16 :goto_1

    .line 2725
    :cond_d
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->usingTwoFactor:Z

    .line 2726
    const/4 v2, -0x1

    sput v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->selectedTwoFactorType:I

    .line 2727
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsEnforcedMultifactorNReset:Z

    if-eqz v2, :cond_e

    .line 2728
    const-string/jumbo v2, "fromKnoxKeyguard"

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2729
    const-string/jumbo v2, "first_lock_type"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSelectedBioLockTypeFromTwoStep:I

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 2731
    :cond_e
    const/16 v2, 0x2713

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    goto/16 :goto_0

    .line 2735
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v2, :cond_12

    .line 2736
    const-string/jumbo v2, "ChooseLockGenericFragment"

    const-string/jumbo v4, "[KNOX FINGER] : To set deviceLock, run ChooseLockPassword"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2737
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v7}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v5

    .line 2738
    const/4 v2, 0x4

    if-ge v5, v2, :cond_10

    .line 2739
    const/4 v5, 0x4

    .line 2741
    :cond_10
    const-string/jumbo v2, "lockscreen.password_min"

    invoke-virtual {v14, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2742
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsEnforcedMultifactorNReset:Z

    if-eqz v2, :cond_11

    .line 2743
    const-string/jumbo v2, "fromKnoxKeyguard"

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2745
    :cond_11
    const-string/jumbo v2, "isFromKnoxFinger"

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2746
    const-string/jumbo v2, "for_fingerprint"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2747
    const/16 v2, 0x66

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    goto/16 :goto_0

    .line 2748
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    if-eqz v2, :cond_14

    .line 2749
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v7}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v5

    .line 2750
    const/4 v2, 0x4

    if-ge v5, v2, :cond_13

    .line 2751
    const/4 v5, 0x4

    .line 2753
    :cond_13
    const-string/jumbo v2, "lockscreen.password_min"

    invoke-virtual {v14, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2754
    const-string/jumbo v2, "isFromKnoxIris"

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2755
    const-string/jumbo v2, "has_challenge"

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2756
    const-string/jumbo v2, "for_iris"

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2757
    const/16 v2, 0x66

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    goto/16 :goto_0

    .line 2759
    :cond_14
    const/16 v2, 0x2711

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    goto/16 :goto_0

    .line 2764
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v2, :cond_16

    .line 2765
    const-string/jumbo v2, "for_fingerprint"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2767
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    if-eqz v2, :cond_17

    .line 2768
    const-string/jumbo v2, "for_iris"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2770
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForPrivateModeBackupKey:Z

    if-eqz v2, :cond_18

    .line 2771
    const-string/jumbo v2, "forPrivateBackupKey"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForPrivateModeBackupKey:Z

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2772
    const/high16 v2, 0x20000

    move/from16 v0, p1

    if-ne v0, v2, :cond_1a

    const/16 v18, 0x1

    .line 2773
    .local v18, "mIsPin":Z
    :goto_2
    const-string/jumbo v2, "personal_mQuality"

    move/from16 v0, v18

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2775
    .end local v18    # "mIsPin":Z
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForAppLockBackupKey:Z

    if-eqz v2, :cond_19

    .line 2776
    const-string/jumbo v2, "forAppLockBackupKey"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mAppLockBackupKey:Ljava/lang/String;

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2777
    const/high16 v2, 0x20000

    move/from16 v0, p1

    if-ne v0, v2, :cond_1b

    const/16 v18, 0x1

    .line 2778
    .restart local v18    # "mIsPin":Z
    :goto_3
    const-string/jumbo v2, "applock_mQuality"

    move/from16 v0, v18

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2780
    .end local v18    # "mIsPin":Z
    :cond_19
    const/16 v2, 0x66

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    goto/16 :goto_0

    .line 2772
    :cond_1a
    const/16 v18, 0x0

    .restart local v18    # "mIsPin":Z
    goto :goto_2

    .line 2777
    .end local v18    # "mIsPin":Z
    :cond_1b
    const/16 v18, 0x0

    .restart local v18    # "mIsPin":Z
    goto :goto_3

    .line 2783
    .end local v5    # "minLength":I
    .end local v6    # "maxLength":I
    .end local v18    # "mIsPin":Z
    .local v14, "intent":Landroid/content/Intent;
    :cond_1c
    const/high16 v2, 0x10000

    move/from16 v0, p1

    if-ne v0, v2, :cond_29

    .line 2785
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    if-nez v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v2, :cond_1d

    .line 2786
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 2787
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    .line 2790
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    if-eqz v2, :cond_1e

    .line 2791
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    .line 2792
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChallenge:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    sget v13, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    move-object/from16 v7, p0

    move-object v8, v3

    .line 2791
    invoke-virtual/range {v7 .. v13}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPatternIntent(Landroid/content/Context;ZJLjava/lang/String;I)Landroid/content/Intent;

    move-result-object v14

    .line 2798
    .local v14, "intent":Landroid/content/Intent;
    :goto_4
    const-string/jumbo v2, "Block"

    invoke-virtual {v14, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2801
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/16 v4, 0x64

    if-lt v2, v4, :cond_24

    .line 2802
    const-string/jumbo v2, "has_challenge"

    const/4 v4, 0x0

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2803
    sget-boolean v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->usingTwoFactor:Z

    if-eqz v2, :cond_20

    .line 2804
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->usingTwoFactor:Z

    .line 2805
    const/4 v2, -0x1

    sput v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->selectedTwoFactorType:I

    .line 2806
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsEnforcedMultifactorNReset:Z

    if-eqz v2, :cond_1f

    .line 2807
    const-string/jumbo v2, "fromKnoxKeyguard"

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2808
    const-string/jumbo v2, "first_lock_type"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSelectedBioLockTypeFromTwoStep:I

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 2794
    .local v14, "intent":Landroid/content/Intent;
    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    .line 2795
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    sget v7, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 2794
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4, v7}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPatternIntent(Landroid/content/Context;ZLjava/lang/String;I)Landroid/content/Intent;

    move-result-object v14

    .local v14, "intent":Landroid/content/Intent;
    goto :goto_4

    .line 2811
    :cond_1f
    const/16 v2, 0x2713

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    goto/16 :goto_0

    .line 2814
    :cond_20
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v2, :cond_22

    .line 2815
    const-string/jumbo v2, "ChooseLockGenericFragment"

    const-string/jumbo v4, "[KNOX FINGER] : To set deviceLock, run ChooseLockPattern"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2816
    const-string/jumbo v2, "isFromKnoxFinger"

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2817
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsEnforcedMultifactorNReset:Z

    if-eqz v2, :cond_21

    .line 2818
    const-string/jumbo v2, "fromKnoxKeyguard"

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2820
    :cond_21
    const-string/jumbo v2, "has_challenge"

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2821
    const-string/jumbo v2, "for_fingerprint"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2822
    const/16 v2, 0x66

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    goto/16 :goto_0

    .line 2823
    :cond_22
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    if-eqz v2, :cond_23

    .line 2824
    const-string/jumbo v2, "isFromKnoxIris"

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2825
    const-string/jumbo v2, "has_challenge"

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2826
    const-string/jumbo v2, "for_iris"

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2827
    const/16 v2, 0x66

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    goto/16 :goto_0

    .line 2829
    :cond_23
    const/16 v2, 0x2711

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    goto/16 :goto_0

    .line 2834
    :cond_24
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v2, :cond_25

    .line 2835
    const-string/jumbo v2, "for_fingerprint"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2837
    :cond_25
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    if-eqz v2, :cond_26

    .line 2838
    const-string/jumbo v2, "for_iris"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2840
    :cond_26
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForPrivateModeBackupKey:Z

    if-eqz v2, :cond_27

    .line 2841
    const-string/jumbo v2, "forPrivateBackupKey"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForPrivateModeBackupKey:Z

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2843
    :cond_27
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForAppLockBackupKey:Z

    if-eqz v2, :cond_28

    .line 2844
    const-string/jumbo v2, "forAppLockBackupKey"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mAppLockBackupKey:Ljava/lang/String;

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2846
    :cond_28
    const/16 v2, 0x66

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    goto/16 :goto_0

    .line 2848
    .local v14, "intent":Landroid/content/Intent;
    :cond_29
    const v2, 0x9100

    move/from16 v0, p1

    if-ne v0, v2, :cond_2a

    .line 2849
    new-instance v17, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v4, Lcom/samsung/android/settings/ChooseLockBLock;

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2850
    .local v17, "mIntent":Landroid/content/Intent;
    const-string/jumbo v2, "confirm_credentials"

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2851
    const-string/jumbo v2, "Block"

    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2852
    const/16 v2, 0x66

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 2853
    .end local v17    # "mIntent":Landroid/content/Intent;
    :cond_2a
    const v2, 0x61000

    move/from16 v0, p1

    if-ne v0, v2, :cond_1

    .line 2854
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v2, :cond_2c

    .line 2855
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v16

    .line 2856
    .local v16, "isHWdetected":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->requestGetSensorStatus()I

    move-result v26

    .line 2857
    .local v26, "status":I
    if-eqz v16, :cond_2b

    const v2, 0x186c8

    move/from16 v0, v26

    if-eq v0, v2, :cond_2d

    const v2, 0x186c9

    move/from16 v0, v26

    if-eq v0, v2, :cond_2d

    .line 2858
    :cond_2b
    const-string/jumbo v2, "ChooseLockGenericFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateUnlockMethodAndFinish isHardwareDetected = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, ", requestGetSensorStatus = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2859
    const v2, 0x7f0b0674

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->showSensorErrorDialog(I)V

    .line 2860
    const/4 v2, 0x0

    return-object v2

    .line 2863
    .end local v16    # "isHWdetected":Z
    .end local v26    # "status":I
    :cond_2c
    const v2, 0x7f0b0674

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->showSensorErrorDialog(I)V

    .line 2864
    const/4 v2, 0x0

    return-object v2

    .line 2867
    .restart local v16    # "isHWdetected":Z
    .restart local v26    # "status":I
    :cond_2d
    const-string/jumbo v2, "lock_screen_fingerprint"

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v7}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startFingerprintLockSettings(Ljava/lang/String;[BZ)V

    .line 2868
    const/4 v2, 0x0

    return-object v2
.end method

.method private getResIdForFactoryResetProtectionWarningMessage()I
    .locals 5

    .prologue
    .line 3240
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    sget v4, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v3, v4}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    .line 3241
    .local v0, "hasFingerprints":Z
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledIrises()Z

    move-result v1

    .line 3244
    .local v1, "hasIrises":Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 3245
    const v2, 0x7f0b08ae

    .line 3252
    .local v2, "resourceId":I
    :goto_0
    return v2

    .line 3246
    .end local v2    # "resourceId":I
    :cond_0
    if-eqz v0, :cond_1

    .line 3247
    const v2, 0x7f0b08ac

    .restart local v2    # "resourceId":I
    goto :goto_0

    .line 3249
    .end local v2    # "resourceId":I
    :cond_1
    const v2, 0x7f0b08ad

    .restart local v2    # "resourceId":I
    goto :goto_0
.end method

.method private getResIdForFactoryResetProtectionWarningTitle()I
    .locals 3

    .prologue
    .line 2995
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    sget v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isManagedProfile(Landroid/os/UserManager;I)Z

    move-result v0

    .line 2996
    .local v0, "isProfile":Z
    if-eqz v0, :cond_0

    const v1, 0x7f0b11a5

    :goto_0
    return v1

    .line 2997
    :cond_0
    const v1, 0x7f0b11a4

    goto :goto_0
.end method

.method private hasEnrolledIrises()Z
    .locals 1

    .prologue
    .line 922
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFingerprintDisabled()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 3001
    const/4 v3, 0x0

    .line 3002
    .local v3, "isDisabledByEDM":Z
    const/4 v2, 0x0

    .line 3004
    .local v2, "isDisabledByDPM":Z
    const-string/jumbo v6, "device_policy"

    invoke-virtual {p0, v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 3006
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez v0, :cond_0

    .line 3007
    const-string/jumbo v5, "ChooseLockGenericFragment"

    const-string/jumbo v6, "isFingerprintDisabled :  dpm is NULL"

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3008
    return v7

    .line 3011
    :cond_0
    invoke-virtual {v0, v9}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v6

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_2

    const/4 v2, 0x1

    .line 3015
    :goto_0
    new-array v4, v5, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    .line 3016
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string/jumbo v8, "isBiometricAuthenticationEnabled"

    invoke-static {v6, v7, v8, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 3017
    .local v1, "isBiometricAuthenticationEnabled":I
    invoke-virtual {v0, v9}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v6

    if-lez v6, :cond_1

    .line 3018
    if-nez v1, :cond_1

    .line 3019
    const-string/jumbo v6, "ChooseLockGenericFragment"

    const-string/jumbo v7, "isBiometricAuthenticationEnabled(FINGERPRINT) == Utils.EDM_FALSE"

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3020
    const/4 v3, 0x1

    .line 3025
    :cond_1
    if-nez v3, :cond_3

    .end local v2    # "isDisabledByDPM":Z
    :goto_1
    return v2

    .line 3011
    .end local v1    # "isBiometricAuthenticationEnabled":I
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .restart local v2    # "isDisabledByDPM":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .restart local v1    # "isBiometricAuthenticationEnabled":I
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    :cond_3
    move v2, v5

    .line 3025
    goto :goto_1
.end method

.method private isIrisDisabled()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 3029
    const/4 v2, 0x0

    .line 3031
    .local v2, "isDisabledByEDM":Z
    const-string/jumbo v4, "device_policy"

    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 3033
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 3034
    .local v3, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string/jumbo v6, "isBiometricAuthenticationEnabled"

    invoke-static {v4, v5, v6, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 3035
    .local v1, "isBiometricAuthenticationEnabled":I
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v4

    if-lez v4, :cond_0

    .line 3036
    if-nez v1, :cond_0

    .line 3037
    const-string/jumbo v4, "ChooseLockGenericFragment"

    const-string/jumbo v5, "isBiometricAuthenticationEnabled(IRIS) == Utils.EDM_FALSE"

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3038
    const/4 v2, 0x1

    .line 3043
    :cond_0
    return v2
.end method

.method private isReadyforFidoADcontainer()Z
    .locals 2

    .prologue
    .line 3406
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->areFidoPackagesInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isEnterpriseIdentityLockSet(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSupportBiometrics()Z
    .locals 1

    .prologue
    .line 1007
    const/4 v0, 0x1

    return v0
.end method

.method private isUnlockMethodAllowedByAllowRemoveCertificates(Ljava/lang/String;)Z
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2415
    const/4 v0, 0x1

    .line 2417
    .local v0, "allowed":Z
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isUnlockMethodSecure(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2422
    :cond_0
    :goto_0
    const-string/jumbo v2, "ChooseLockGenericFragment"

    const-string/jumbo v3, "Preference key %s is %s according to MDM restrictions"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v4, v1

    .line 2423
    if-eqz v0, :cond_2

    const-string/jumbo v1, "allowed"

    :goto_1
    const/4 v5, 0x1

    aput-object v1, v4, v5

    .line 2422
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2424
    return v0

    .line 2417
    :cond_1
    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2418
    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    .line 2416
    if-eqz v1, :cond_0

    .line 2419
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isUserRemoveCertificateAllowed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2420
    const/4 v0, 0x0

    goto :goto_0

    .line 2423
    :cond_2
    const-string/jumbo v1, "not allowed"

    goto :goto_1
.end method

.method private isUnlockMethodSecure(Ljava/lang/String;)Z
    .locals 1
    .param p1, "unlockMethod"    # Ljava/lang/String;

    .prologue
    .line 3256
    const-string/jumbo v0, "unlock_set_off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3257
    const-string/jumbo v0, "unlock_set_none"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3256
    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isUserRemoveCertificateAllowed()Z
    .locals 5

    .prologue
    .line 2428
    const/4 v0, 0x1

    .line 2431
    .local v0, "allowed":Z
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 2434
    .local v1, "context":Landroid/content/Context;
    const-string/jumbo v3, "content://com.sec.knox.provider/CertificatePolicy"

    .line 2435
    const-string/jumbo v4, "isUserRemoveCertificatesAllowed"

    .line 2432
    invoke-static {v1, v3, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 2437
    .local v2, "isUserRemoveCertificatesAllowed":I
    if-nez v2, :cond_0

    .line 2438
    const-string/jumbo v3, "ChooseLockGenericFragment"

    const-string/jumbo v4, "isUserRemoveCertificatesAllowed not allowed"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2439
    const/4 v0, 0x0

    .line 2443
    :cond_0
    return v0
.end method

.method private maybeEnableEncryption(IZ)V
    .locals 18
    .param p1, "quality"    # I
    .param p2, "disabled"    # Z

    .prologue
    .line 935
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "user_setup_complete"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 936
    .local v3, "completeSetupWizard":I
    const/16 v10, 0x18

    .line 937
    .local v10, "min_api_level":I
    const-string/jumbo v15, "ro.product.first_api_level"

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 938
    .local v7, "first_api_level":I
    const/4 v9, 0x0

    .line 940
    .local v9, "isSkipInterstitial":Z
    if-lez v7, :cond_0

    const/16 v15, 0x18

    if-ge v7, v15, :cond_0

    .line 941
    const-string/jumbo v15, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 942
    const/4 v9, 0x1

    .line 945
    :cond_0
    const-string/jumbo v15, "device_policy"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    .line 946
    .local v5, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-static {v15}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 947
    sget v15, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v15

    .line 946
    if-eqz v15, :cond_1

    .line 947
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isFileEncryptionEnabled()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 973
    :cond_1
    const/4 v12, 0x0

    .line 975
    .local v12, "passwordType":I
    :try_start_0
    const-string/jumbo v15, "mount"

    invoke-static {v15}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v11

    .line 976
    .local v11, "mountService":Landroid/os/storage/IMountService;
    invoke-interface {v11}, Landroid/os/storage/IMountService;->getPasswordType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .line 980
    .end local v11    # "mountService":Landroid/os/storage/IMountService;
    :goto_0
    const/4 v15, 0x1

    if-eq v12, v15, :cond_2

    .line 981
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/widget/LockPatternUtils;->setCredentialRequiredToDecrypt(Z)V

    .line 984
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    if-eqz v15, :cond_5

    .line 986
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    .line 987
    return-void

    .line 948
    .end local v12    # "passwordType":I
    :cond_3
    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->getDoNotAskCredentialsOnBoot()Z

    move-result v15

    if-nez v15, :cond_1

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForPrivateModeBackupKey:Z

    if-nez v15, :cond_1

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForAppLockBackupKey:Z

    if-nez v15, :cond_1

    .line 949
    const/4 v15, 0x1

    if-eq v3, v15, :cond_1

    if-nez v9, :cond_1

    .line 950
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    .line 951
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    .line 954
    invoke-direct/range {p0 .. p2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getIntentForUnlockMethod(IZ)Landroid/content/Intent;

    move-result-object v14

    .line 956
    .local v14, "unlockMethodIntent":Landroid/content/Intent;
    const-string/jumbo v15, "for_cred_req_boot"

    .line 957
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    move/from16 v16, v0

    .line 955
    invoke-virtual/range {v14 .. v16}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 958
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 963
    .local v4, "context":Landroid/content/Context;
    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    .line 964
    .local v2, "accEn":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v16, v0

    if-eqz v2, :cond_4

    const/4 v15, 0x0

    :goto_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToDecrypt(Z)Z

    move-result v13

    .line 966
    .local v13, "required":Z
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v4, v1, v13, v14}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getEncryptionInterstitialIntent(Landroid/content/Context;IZLandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v8

    .line 968
    .local v8, "intent":Landroid/content/Intent;
    const-string/jumbo v15, "for_fingerprint"

    .line 969
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    move/from16 v16, v0

    .line 968
    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 970
    const-string/jumbo v15, ":settings:hide_drawer"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHideDrawer:Z

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 971
    const/16 v15, 0x65

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v15}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 934
    .end local v2    # "accEn":Z
    .end local v4    # "context":Landroid/content/Context;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v13    # "required":Z
    .end local v14    # "unlockMethodIntent":Landroid/content/Intent;
    :goto_2
    return-void

    .line 964
    .restart local v2    # "accEn":Z
    .restart local v4    # "context":Landroid/content/Context;
    .restart local v14    # "unlockMethodIntent":Landroid/content/Intent;
    :cond_4
    const/4 v15, 0x1

    goto :goto_1

    .line 977
    .end local v2    # "accEn":Z
    .end local v4    # "context":Landroid/content/Context;
    .end local v14    # "unlockMethodIntent":Landroid/content/Intent;
    .restart local v12    # "passwordType":I
    :catch_0
    move-exception v6

    .line 978
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v15, "ChooseLockGenericFragment"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Error calling mount service "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 990
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToDecrypt(Z)Z

    move-result v15

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    .line 992
    invoke-virtual/range {p0 .. p2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_2
.end method

.method private removeEncryptionPopup(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2912
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2913
    const v2, 0x7f0b08af

    .line 2912
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 2914
    const v2, 0x7f0b08b0

    .line 2912
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 2916
    new-instance v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$6;

    invoke-direct {v2, p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$6;-><init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)V

    .line 2915
    const/high16 v3, 0x1040000

    .line 2912
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 2923
    new-instance v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$7;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$7;-><init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;Ljava/lang/String;)V

    .line 2922
    const v3, 0x7f0b0454

    .line 2912
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2928
    .local v0, "dialog":Landroid/app/AlertDialog;
    new-instance v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$8;

    invoke-direct {v1, p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$8;-><init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2934
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2911
    return-void
.end method

.method private requestFidoDeregistrationFingerprint()V
    .locals 4

    .prologue
    .line 862
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.knox.kss"

    const-string/jumbo v3, "com.samsung.knox.kss.ChooseLockFido"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 863
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "dereg"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 864
    const-string/jumbo v1, "fido_user_name"

    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getEnterpriseID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 865
    const-string/jumbo v1, "fido_type"

    const-string/jumbo v2, "fido_type_fingerprint"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 866
    const/16 v1, 0x271c

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 861
    return-void
.end method

.method private requestFidoDeregistrationIris()V
    .locals 4

    .prologue
    .line 870
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.knox.kss"

    const-string/jumbo v3, "com.samsung.knox.kss.ChooseLockFido"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 871
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "dereg"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 872
    const-string/jumbo v1, "fido_user_name"

    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getEnterpriseID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 873
    const-string/jumbo v1, "fido_type"

    const-string/jumbo v2, "fido_type_iris"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 874
    const/16 v1, 0x271c

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 869
    return-void
.end method

.method private requestSystemKeyEvent(IZ)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "request"    # Z

    .prologue
    .line 3160
    const-string/jumbo v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 3162
    .local v1, "windowmanager":Landroid/view/IWindowManager;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 3163
    :catch_0
    move-exception v0

    .line 3164
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ChooseLockGenericFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestSystemKeyEvent - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3166
    const/4 v2, 0x0

    return v2
.end method

.method private setCacChosen(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 2879
    sput-boolean p1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->CAC_LOCK_CHOSEN:Z

    .line 2878
    return-void
.end method

.method private setFingerprintScreenLockDisable()V
    .locals 3

    .prologue
    .line 892
    const-string/jumbo v0, "ChooseLockGenericFragment"

    const-string/jumbo v1, "setFingerprintScreenLockDisable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    .line 891
    return-void
.end method

.method private setFingerprintScreenLockEnable()V
    .locals 4

    .prologue
    .line 884
    const-string/jumbo v1, "ChooseLockGenericFragment"

    const-string/jumbo v2, "setFingerprintScreenLockEnable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    .line 887
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.intent.action.FINGERPRINT_LOCK_SET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 888
    .local v0, "message":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 883
    return-void
.end method

.method private setLockTypeSummary(Landroid/preference/PreferenceScreen;)V
    .locals 12
    .param p1, "prefScreen"    # Landroid/preference/PreferenceScreen;

    .prologue
    const v11, 0x7f0b1191

    const v10, 0x7f0b0825

    const v9, 0x7f0b0edb

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1587
    const-string/jumbo v4, "pref_lock_type"

    invoke-virtual {p1, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settingslib/RestrictedPreference;

    .line 1588
    .local v3, "prefLockType":Lcom/samsung/android/settingslib/RestrictedPreference;
    if-nez v3, :cond_0

    .line 1589
    return-void

    .line 1591
    :cond_0
    iget-object v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    .line 1593
    .local v0, "currentLockTypeQuality":I
    const/4 v2, 0x0

    .line 1595
    .local v2, "isFingerPlus":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "knox_finger_print_plus"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v4, v7, :cond_1

    const/4 v2, 0x1

    .line 1600
    :goto_0
    const-string/jumbo v4, "ChooseLockGenericFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isFingerPlus Enabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    sparse-switch v0, :sswitch_data_0

    .line 1644
    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Lcom/samsung/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1585
    :goto_1
    return-void

    .line 1595
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1596
    :catch_0
    move-exception v1

    .line 1597
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v4, "ChooseLockGenericFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SettingNotFoundException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1604
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :sswitch_0
    if-eqz v2, :cond_2

    .line 1605
    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p0, v11}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v9, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1607
    :cond_2
    invoke-virtual {p0, v11}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1613
    :sswitch_1
    if-eqz v2, :cond_3

    .line 1614
    new-array v4, v7, [Ljava/lang/Object;

    const v5, 0x7f0b1193

    invoke-virtual {p0, v5}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v9, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1616
    :cond_3
    const v4, 0x7f0b1193

    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1623
    :sswitch_2
    if-eqz v2, :cond_5

    .line 1625
    iget-object v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isEnterpriseIdentityLockSet(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1626
    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p0, v10}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v9, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1630
    :cond_4
    new-array v4, v7, [Ljava/lang/Object;

    const v5, 0x7f0b1195

    invoke-virtual {p0, v5}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v9, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1634
    :cond_5
    iget-object v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isEnterpriseIdentityLockSet(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1635
    invoke-virtual {p0, v10}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1639
    :cond_6
    const v4, 0x7f0b1195

    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1602
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
    .end sparse-switch
.end method

.method private setUnlockMethod(Ljava/lang/String;)Z
    .locals 12
    .param p1, "unlockMethod"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x64

    const/4 v0, 0x5

    const/4 v2, 0x1

    const/4 v11, 0x0

    .line 3263
    const-string/jumbo v1, "pref_lock_type"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3264
    iput-boolean v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSelectedKnoxScreen:Z

    .line 3265
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3266
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0edc

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 3268
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    .line 3401
    :cond_1
    :goto_0
    return v2

    .line 3271
    :cond_2
    const-string/jumbo v1, "unlock_set_direction"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3272
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 3273
    .local v9, "intent":Landroid/content/Intent;
    if-eqz v9, :cond_1

    .line 3274
    const-string/jumbo v0, "com.android.settings"

    const-string/jumbo v1, "com.samsung.android.settings.accessibility.directionlock.ChooseLockDirection"

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3277
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 3276
    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3278
    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v0, :cond_3

    .line 3279
    const-string/jumbo v0, "for_fingerprint"

    .line 3280
    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    .line 3279
    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3283
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    if-eqz v0, :cond_4

    .line 3285
    const-string/jumbo v0, "for_iris"

    .line 3286
    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    .line 3284
    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3289
    :cond_4
    const/16 v0, 0x66

    invoke-virtual {p0, v9, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3294
    :catch_0
    move-exception v7

    .line 3295
    .local v7, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v7}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 3291
    .end local v7    # "e":Landroid/content/ActivityNotFoundException;
    :cond_5
    :try_start_1
    invoke-virtual {p0, v9}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    .line 3292
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3300
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_6
    const-string/jumbo v1, "unlock_set_off"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3303
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 3304
    const-string/jumbo v5, "screen-lock disabled : off"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    move v1, v0

    .line 3302
    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 3305
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockNoneLoggingVal:I

    .line 3306
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockNoneLoggingVal:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 3307
    invoke-virtual {p0, v11, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto/16 :goto_0

    .line 3309
    :cond_7
    const-string/jumbo v1, "unlock_set_none"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3312
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 3313
    const-string/jumbo v5, "screen-lock disabled : swipe"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    move v1, v0

    .line 3311
    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 3314
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockSwipeLoggingVal:I

    .line 3315
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockSwipeLoggingVal:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 3316
    invoke-virtual {p0, v11, v11}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto/16 :goto_0

    .line 3318
    :cond_8
    const-string/jumbo v0, "unlock_set_managed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3319
    const/high16 v0, 0x80000

    invoke-direct {p0, v0, v11}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto/16 :goto_0

    .line 3320
    :cond_9
    const-string/jumbo v0, "unlock_set_pattern"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3322
    const/high16 v0, 0x10000

    .line 3321
    invoke-direct {p0, v0, v11}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto/16 :goto_0

    .line 3323
    :cond_a
    const-string/jumbo v0, "unlock_set_pin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3325
    const/high16 v0, 0x20000

    .line 3324
    invoke-direct {p0, v0, v11}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto/16 :goto_0

    .line 3326
    :cond_b
    const-string/jumbo v0, "unlock_set_password"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3328
    const/high16 v0, 0x40000

    .line 3327
    invoke-direct {p0, v0, v11}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto/16 :goto_0

    .line 3329
    :cond_c
    const-string/jumbo v0, "unlock_set_smart"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3331
    const v0, 0x9100

    .line 3330
    invoke-virtual {p0, v0, v11}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto/16 :goto_0

    .line 3333
    :cond_d
    const-string/jumbo v0, "unlock_set_cac_pin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3335
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/UCMHelpUtils;->isCACCardRegistered(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3337
    invoke-direct {p0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setCacChosen(Z)V

    .line 3338
    const/high16 v0, 0x70000

    invoke-virtual {p0, v0, v11}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto/16 :goto_0

    .line 3342
    :cond_e
    invoke-direct {p0, v11}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setCacChosen(Z)V

    .line 3343
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/UCMHelpUtils;->showCardNotRegisteredDialog(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 3349
    :cond_f
    const-string/jumbo v0, "unlock_set_fingerprint"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3351
    const v0, 0x61000

    .line 3350
    invoke-virtual {p0, v0, v11}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto/16 :goto_0

    .line 3352
    :cond_10
    const-string/jumbo v0, "unlock_set_iris"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3354
    :try_start_2
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 3355
    .local v10, "mIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.android.settings.iris.IrisLockSettings"

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 3356
    const-string/jumbo v0, "previousStage"

    const-string/jumbo v1, "lock_screen_iris"

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3357
    const-string/jumbo v0, "password"

    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3358
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-lt v0, v3, :cond_11

    .line 3359
    const-string/jumbo v0, "is_knox"

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3361
    :cond_11
    invoke-virtual {p0, v10}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 3365
    .end local v10    # "mIntent":Landroid/content/Intent;
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_0

    .line 3362
    :catch_1
    move-exception v8

    .line 3363
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 3367
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_12
    const-string/jumbo v0, "unlock_set_two_factor"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-lt v0, v3, :cond_16

    .line 3368
    const-string/jumbo v0, "ChooseLockGenericFragment"

    const-string/jumbo v1, "set two-factor for knox"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3369
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3375
    :cond_13
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v3, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v9

    .line 3376
    .restart local v9    # "intent":Landroid/content/Intent;
    const-string/jumbo v0, "password"

    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3377
    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsEnforcedMultifactorNReset:Z

    if-eqz v0, :cond_14

    .line 3378
    const-string/jumbo v0, "fromKnoxKeyguard"

    invoke-virtual {v9, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3380
    :cond_14
    const/16 v0, 0x2712

    invoke-virtual {p0, v9, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 3370
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_15
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->ConnectedMobileKeypad(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3371
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const v2, 0x7f0b066d

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v11

    const v2, 0x7f0b0681

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3372
    return v11

    .line 3383
    :cond_16
    const-string/jumbo v0, "unlock_set_enterprise_identity"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3384
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-lt v0, v3, :cond_17

    .line 3385
    const-string/jumbo v0, "ChooseLockGenericFragment"

    const-string/jumbo v1, "set Enterprise identity for knox"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3386
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v3, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v9

    .line 3387
    .restart local v9    # "intent":Landroid/content/Intent;
    const-string/jumbo v0, "enterprise.password_old"

    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->enterpriseOldPassword:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3388
    const/16 v0, 0x271a

    invoke-virtual {p0, v9, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 3392
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_17
    const-string/jumbo v0, "ChooseLockGenericFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Encountered unknown unlock method to set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3393
    return v11
.end method

.method private showFactoryResetProtectionWarningDialog(Ljava/lang/String;)V
    .locals 5
    .param p1, "unlockMethodToSet"    # Ljava/lang/String;

    .prologue
    .line 3434
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResIdForFactoryResetProtectionWarningTitle()I

    move-result v2

    .line 3435
    .local v2, "title":I
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResIdForFactoryResetProtectionWarningMessage()I

    move-result v1

    .line 3437
    .local v1, "message":I
    invoke-static {v2, v1, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->newInstance(IILjava/lang/String;)Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    move-result-object v0

    .line 3439
    .local v0, "dialog":Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string/jumbo v4, "frp_warning_dialog"

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 3433
    return-void
.end method

.method private showFingerprintPPPDialog()V
    .locals 4

    .prologue
    .line 3443
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3444
    const v2, 0x7f0b06ee

    .line 3443
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 3445
    const v2, 0x7f0b071a

    .line 3443
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 3447
    new-instance v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$10;

    invoke-direct {v2, p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$10;-><init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)V

    .line 3446
    const v3, 0x7f0b042c

    .line 3443
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 3454
    new-instance v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$11;

    invoke-direct {v2, p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$11;-><init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)V

    .line 3453
    const/high16 v3, 0x1040000

    .line 3443
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 3460
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3442
    return-void
.end method

.method private showIrisPPPDialog()V
    .locals 4

    .prologue
    .line 3466
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3467
    const v2, 0x7f0b076d

    .line 3466
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 3468
    const v2, 0x7f0b076e

    .line 3466
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 3470
    new-instance v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$12;

    invoke-direct {v2, p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$12;-><init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)V

    .line 3469
    const v3, 0x7f0b042c

    .line 3466
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 3485
    new-instance v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$13;

    invoke-direct {v2, p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$13;-><init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)V

    .line 3484
    const/high16 v3, 0x1040000

    .line 3466
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 3491
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3464
    return-void
.end method

.method private showSensorErrorDialog(I)V
    .locals 4
    .param p1, "messageID"    # I

    .prologue
    .line 2888
    const v1, 0x7f0b0674

    if-ne p1, v1, :cond_0

    .line 2889
    const-string/jumbo v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2888
    if-eqz v1, :cond_0

    .line 2890
    const p1, 0x7f0b0675

    .line 2893
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2894
    const v2, 0x7f0b0672

    .line 2893
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 2897
    new-instance v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;

    invoke-direct {v2, p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;-><init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)V

    .line 2896
    const v3, 0x104000a

    .line 2893
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2902
    .local v0, "dialog":Landroid/app/AlertDialog;
    new-instance v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$5;

    invoke-direct {v1, p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$5;-><init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2908
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2887
    return-void
.end method

.method private skipBiometricsAuthentication()Z
    .locals 3

    .prologue
    .line 473
    const/4 v0, 0x0

    .line 474
    .local v0, "mFinger":Z
    const/4 v1, 0x0

    .line 476
    .local v1, "mIris":Z
    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v2, :cond_2

    .line 477
    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v2, :cond_0

    .line 478
    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 482
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v2, :cond_3

    .line 483
    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v2, :cond_1

    .line 484
    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v2}, Lcom/samsung/android/camera/iris/SemIrisManager;->isHardwareDetected()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 488
    :cond_1
    :goto_1
    if-eqz v0, :cond_4

    .end local v1    # "mIris":Z
    :goto_2
    return v1

    .line 479
    .restart local v1    # "mIris":Z
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 485
    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    .line 488
    :cond_4
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private startFingerprintLockSettings(Ljava/lang/String;[BZ)V
    .locals 8
    .param p1, "mPreviousStage"    # Ljava/lang/String;
    .param p2, "mToken"    # [B
    .param p3, "mKnoxIdentifyOnly"    # Z

    .prologue
    const/16 v7, 0x64

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 3047
    const-string/jumbo v3, "ChooseLockGenericFragment"

    const-string/jumbo v4, "startFingerprintLockSettings()"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3049
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isFingerprintDisabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3050
    const-string/jumbo v3, "ChooseLockGenericFragment"

    const-string/jumbo v4, "isFingerprintDisabled() = TURE"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3051
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    .line 3052
    return-void

    .line 3055
    :cond_0
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v3, :cond_1

    .line 3056
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3057
    const-string/jumbo v3, "ChooseLockGenericFragment"

    const-string/jumbo v4, "isHardwareDetected() of Fingerprint is FALSE."

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3058
    const v3, 0x7f0b0674

    invoke-direct {p0, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->showSensorErrorDialog(I)V

    .line 3059
    return-void

    .line 3063
    :cond_1
    const-string/jumbo v3, "lock_screen_fingerprint"

    if-ne p1, v3, :cond_2

    .line 3064
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3065
    const-string/jumbo v3, "ChooseLockGenericFragment"

    const-string/jumbo v4, "startFingerprintLockSettings() : isInMultiWindowMode is TRUE."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3066
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b06e8

    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 3067
    return-void

    .line 3072
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-lt v3, v7, :cond_3

    .line 3073
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->ConnectedMobileKeypad(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3074
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    const v5, 0x7f0b066d

    invoke-virtual {p0, v5}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const v5, 0x7f0b0681

    invoke-virtual {p0, v5, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 3080
    :cond_3
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isReadyforFidoADcontainer()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3081
    const-string/jumbo v3, "ChooseLockGenericFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "In startFingerprintLockSettings: mPreviousStage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3084
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsFingerView:Z

    .line 3085
    iget-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsIrisView:Z

    if-eqz v3, :cond_4

    .line 3086
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsIrisView:Z

    .line 3087
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->requestFidoDeregistrationFingerprint()V

    .line 3046
    :goto_0
    return-void

    .line 3090
    :cond_5
    const-string/jumbo v3, "com.android.settings.fingerprint.FingerprintLockSettings"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3091
    .local v0, "chooseLockFingerprint":Ljava/lang/Class;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    .line 3092
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-lt v3, v7, :cond_6

    .line 3093
    const-string/jumbo v3, "is_knox"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3095
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isReadyforFidoADcontainer()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3096
    const-string/jumbo v3, "isEnterpriseIDFingerprint"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3099
    :cond_6
    const-string/jumbo v3, "previousStage"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3100
    const-string/jumbo v3, "lock_screen_fingerprint"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3101
    const-string/jumbo v3, "password"

    iget-object v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3103
    :cond_7
    const-string/jumbo v3, "hw_auth_token"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 3104
    const-string/jumbo v3, "identifyFingerprint"

    iget-boolean v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyBiometrics:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3105
    const-string/jumbo v3, "fromSetupwizard"

    iget-boolean v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->fromSetupwizard:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3106
    const-string/jumbo v3, "android.intent.extra.USER_ID"

    sget v4, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3108
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3109
    const/16 v3, 0x2718

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3119
    .end local v0    # "chooseLockFingerprint":Ljava/lang/Class;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 3121
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 3110
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "chooseLockFingerprint":Ljava/lang/Class;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_8
    if-eqz p3, :cond_9

    .line 3111
    :try_start_1
    const-string/jumbo v3, "mKnoxIdentifyOnly"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3112
    const/16 v3, 0x2719

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 3114
    :cond_9
    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    .line 3115
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private startUseAdditionalBiometricsSettings([B[B)V
    .locals 5
    .param p1, "mToken"    # [B
    .param p2, "mtoken_2nd"    # [B

    .prologue
    .line 1365
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.settings.iris.UseAdditionalBiometrics"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1366
    .local v2, "useBiometrics":Ljava/lang/Class;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 1368
    .local v1, "mIntent":Landroid/content/Intent;
    const-string/jumbo v3, "hw_auth_token"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1369
    const-string/jumbo v3, "hw_auth_token_2nd"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1370
    const-string/jumbo v3, "mWasSecureBefore"

    iget-boolean v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWasSecureBefore:Z

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1372
    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1362
    .end local v1    # "mIntent":Landroid/content/Intent;
    .end local v2    # "useBiometrics":Ljava/lang/Class;
    :goto_0
    return-void

    .line 1373
    :catch_0
    move-exception v0

    .line 1375
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private updateBiometricsPreferences()V
    .locals 28

    .prologue
    .line 1400
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v22

    if-eqz v22, :cond_0

    .line 1401
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v22

    const v23, 0x7f0b0edd

    invoke-virtual/range {v22 .. v23}, Landroid/app/Activity;->setTitle(I)V

    .line 1404
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    .line 1405
    .local v17, "prefScreen":Landroid/preference/PreferenceScreen;
    if-eqz v17, :cond_1

    .line 1406
    invoke-virtual/range {v17 .. v17}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 1409
    :cond_1
    const/4 v9, 0x0

    .line 1410
    .local v9, "isMultifactorAuthEnforced":Z
    const/4 v7, 0x0

    .line 1411
    .local v7, "isBioAuthEnabled":Z
    const/4 v10, 0x0

    .line 1414
    .local v10, "isSDPEnabled":Z
    const-string/jumbo v22, "persona"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/knox/SemPersonaManager;

    .line 1415
    .local v12, "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaInfo(I)Lcom/samsung/android/knox/SemPersonaInfo;

    move-result-object v6

    .line 1416
    .local v6, "info":Lcom/samsung/android/knox/SemPersonaInfo;
    if-eqz v6, :cond_2

    iget-boolean v0, v6, Lcom/samsung/android/knox/SemPersonaInfo;->sdpEnabled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_2

    iget-boolean v0, v6, Lcom/samsung/android/knox/SemPersonaInfo;->isSdpMinor:Z

    move/from16 v22, v0

    if-eqz v22, :cond_11

    .line 1421
    :cond_2
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v5

    .line 1422
    .local v5, "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v22

    const-string/jumbo v23, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string/jumbo v24, "isBiometricAuthenticationEnabled"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    aput-object v26, v25, v27

    invoke-static/range {v22 .. v25}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 1423
    .local v8, "isBiometricAuthenticationEnabled":I
    if-eqz v5, :cond_12

    .line 1424
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v23

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/sec/enterprise/knox/container/KnoxContainerManager;

    move-result-object v3

    .line 1425
    .local v3, "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    if-eqz v3, :cond_3

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v8, v0, :cond_3

    .line 1426
    const/4 v7, 0x1

    .line 1429
    :cond_3
    if-eqz v3, :cond_4

    .line 1430
    invoke-virtual {v3}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->isMultifactorAuthenticationEnforced()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 1439
    .end local v3    # "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v5    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .end local v8    # "isBiometricAuthenticationEnabled":I
    .end local v9    # "isMultifactorAuthEnforced":Z
    :cond_4
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->addPreferences()V

    .line 1440
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferenceText()V

    .line 1441
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferenceSummaryIfNeeded()V

    .line 1442
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    .line 1443
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSelectedKnoxScreen:Z

    .line 1444
    if-eqz v17, :cond_1d

    .line 1445
    const-string/jumbo v22, "pref_lock_type"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Lcom/samsung/android/settingslib/RestrictedPreference;

    .line 1446
    .local v16, "prefLockType":Lcom/samsung/android/settingslib/RestrictedPreference;
    const-string/jumbo v22, "biometrics_category"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/PreferenceCategory;

    .line 1447
    .local v13, "prefBiometricsInfo":Landroid/preference/PreferenceCategory;
    const-string/jumbo v22, "pref_biometrics_description"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Lcom/android/settings/MultiLinePreference;

    .line 1448
    .local v14, "prefBiometricsSummary":Lcom/android/settings/MultiLinePreference;
    const-string/jumbo v22, "pref_divider"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/PreferenceCategory;

    .line 1449
    .local v15, "prefDivider":Landroid/preference/PreferenceCategory;
    const-string/jumbo v22, "switch_fingerprint"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/SwitchPreference;

    .line 1450
    .local v19, "switchPrefFinger":Landroid/preference/SwitchPreference;
    if-eqz v19, :cond_5

    .line 1451
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1453
    :cond_5
    const-string/jumbo v22, "switch_iris"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/SwitchPreference;

    .line 1454
    .local v20, "switchPrefIris":Landroid/preference/SwitchPreference;
    if-eqz v20, :cond_6

    .line 1455
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1458
    :cond_6
    invoke-virtual/range {v17 .. v17}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 1460
    if-eqz v16, :cond_7

    .line 1461
    const/16 v22, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setOrder(I)V

    .line 1462
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1464
    :cond_7
    if-eqz v13, :cond_8

    .line 1465
    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceCategory;->setOrder(I)V

    .line 1466
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1468
    :cond_8
    if-eqz v14, :cond_9

    .line 1469
    const v22, 0x7f0b0ede

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/settings/Utils;->getKnoxName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    aput-object v24, v23, v25

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getCurrentLockTypeSummary()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x1

    aput-object v24, v23, v25

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 1470
    .local v21, "title":Ljava/lang/String;
    const/16 v22, 0x3

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/android/settings/MultiLinePreference;->setOrder(I)V

    .line 1471
    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/android/settings/MultiLinePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1472
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1474
    .end local v21    # "title":Ljava/lang/String;
    :cond_9
    if-eqz v15, :cond_a

    .line 1475
    const/16 v22, 0x4

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceCategory;->setOrder(I)V

    .line 1476
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1478
    :cond_a
    if-eqz v19, :cond_d

    .line 1479
    const/16 v22, 0x5

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOrder(I)V

    .line 1480
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1482
    if-eqz v9, :cond_b

    .line 1483
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 1486
    :cond_b
    if-nez v10, :cond_13

    if-eqz v7, :cond_13

    .line 1491
    :goto_2
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v22

    if-eqz v22, :cond_14

    .line 1492
    if-eqz v19, :cond_c

    .line 1493
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 1494
    const v22, 0x7f0b119c

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 1502
    :cond_c
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v22, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v23

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v22

    if-nez v22, :cond_15

    .line 1504
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1509
    :cond_d
    :goto_4
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v22

    if-eqz v22, :cond_e

    if-eqz v20, :cond_e

    .line 1510
    const/16 v22, 0x6

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOrder(I)V

    .line 1511
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1515
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v22, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/widget/LockPatternUtils;->isEnterpriseIdentityLockSet(I)Z

    move-result v22

    if-eqz v22, :cond_10

    .line 1516
    const-string/jumbo v18, ""

    .line 1517
    .local v18, "strTempBiometrics":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->areFidoPackagesInstalled(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_18

    .line 1518
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/settings/Utils;->getKnoxName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 1519
    .local v11, "knoxName":Ljava/lang/String;
    const v22, 0x7f0b0ac5

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const v24, 0x7f0b0825

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    aput-object v24, v23, v25

    const/16 v24, 0x1

    aput-object v11, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 1520
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/android/settings/MultiLinePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1521
    if-eqz v19, :cond_f

    .line 1522
    const/16 v22, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 1524
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string/jumbo v23, "switch_fingerprint"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    .line 1525
    const/16 v22, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1530
    :goto_5
    if-eqz v20, :cond_10

    .line 1531
    const/16 v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 1532
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string/jumbo v23, "switch_iris"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_17

    .line 1533
    const/16 v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1554
    .end local v11    # "knoxName":Ljava/lang/String;
    .end local v18    # "strTempBiometrics":Ljava/lang/String;
    :cond_10
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setLockTypeSummary(Landroid/preference/PreferenceScreen;)V

    .line 1399
    .end local v13    # "prefBiometricsInfo":Landroid/preference/PreferenceCategory;
    .end local v14    # "prefBiometricsSummary":Lcom/android/settings/MultiLinePreference;
    .end local v15    # "prefDivider":Landroid/preference/PreferenceCategory;
    .end local v16    # "prefLockType":Lcom/samsung/android/settingslib/RestrictedPreference;
    .end local v19    # "switchPrefFinger":Landroid/preference/SwitchPreference;
    .end local v20    # "switchPrefIris":Landroid/preference/SwitchPreference;
    :goto_7
    return-void

    .line 1417
    .restart local v9    # "isMultifactorAuthEnforced":Z
    :cond_11
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1433
    .restart local v5    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .restart local v8    # "isBiometricAuthenticationEnabled":I
    :cond_12
    :try_start_1
    const-string/jumbo v22, "ChooseLockGenericFragment"

    const-string/jumbo v23, "ekm is null"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 1435
    .end local v5    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .end local v8    # "isBiometricAuthenticationEnabled":I
    :catch_0
    move-exception v4

    .line 1436
    .local v4, "e":Ljava/lang/SecurityException;
    const-string/jumbo v22, "ChooseLockGenericFragment"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "SecurityException: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1487
    .end local v4    # "e":Ljava/lang/SecurityException;
    .end local v9    # "isMultifactorAuthEnforced":Z
    .restart local v13    # "prefBiometricsInfo":Landroid/preference/PreferenceCategory;
    .restart local v14    # "prefBiometricsSummary":Lcom/android/settings/MultiLinePreference;
    .restart local v15    # "prefDivider":Landroid/preference/PreferenceCategory;
    .restart local v16    # "prefLockType":Lcom/samsung/android/settingslib/RestrictedPreference;
    .restart local v19    # "switchPrefFinger":Landroid/preference/SwitchPreference;
    .restart local v20    # "switchPrefIris":Landroid/preference/SwitchPreference;
    :cond_13
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 1488
    const v22, 0x7f0b119c

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 1497
    :cond_14
    if-eqz v19, :cond_c

    .line 1498
    const-string/jumbo v22, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1506
    :cond_15
    const/16 v22, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_4

    .line 1527
    .restart local v11    # "knoxName":Ljava/lang/String;
    .restart local v18    # "strTempBiometrics":Ljava/lang/String;
    :cond_16
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_5

    .line 1535
    :cond_17
    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_6

    .line 1539
    .end local v11    # "knoxName":Ljava/lang/String;
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/settings/Utils;->getKnoxName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 1540
    .restart local v11    # "knoxName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1c

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v22

    if-eqz v22, :cond_1c

    .line 1541
    const v22, 0x7f0b0ac6

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const v24, 0x7f0b0825

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    aput-object v24, v23, v25

    const/16 v24, 0x1

    aput-object v11, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 1544
    :cond_19
    :goto_8
    if-eqz v14, :cond_1a

    .line 1545
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/android/settings/MultiLinePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1546
    :cond_1a
    if-eqz v19, :cond_1b

    .line 1547
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 1548
    :cond_1b
    if-eqz v20, :cond_10

    .line 1549
    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_6

    .line 1542
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    move-object/from16 v22, v0

    if-eqz v22, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_19

    .line 1543
    const v22, 0x7f0b0ac7

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const v24, 0x7f0b0825

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    aput-object v24, v23, v25

    const/16 v24, 0x1

    aput-object v11, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    goto :goto_8

    .line 1556
    .end local v11    # "knoxName":Ljava/lang/String;
    .end local v13    # "prefBiometricsInfo":Landroid/preference/PreferenceCategory;
    .end local v14    # "prefBiometricsSummary":Lcom/android/settings/MultiLinePreference;
    .end local v15    # "prefDivider":Landroid/preference/PreferenceCategory;
    .end local v16    # "prefLockType":Lcom/samsung/android/settingslib/RestrictedPreference;
    .end local v18    # "strTempBiometrics":Ljava/lang/String;
    .end local v19    # "switchPrefFinger":Landroid/preference/SwitchPreference;
    .end local v20    # "switchPrefIris":Landroid/preference/SwitchPreference;
    :cond_1d
    const-string/jumbo v22, "ChooseLockGenericFragment"

    const-string/jumbo v23, "updateBiometricsPreferences : preference screen is null"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7
.end method

.method private updatePreferenceSummaryIfNeeded()V
    .locals 2

    .prologue
    .line 2450
    invoke-static {}, Landroid/os/storage/StorageManager;->isBlockEncrypted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2451
    return-void

    .line 2454
    :cond_0
    invoke-static {}, Landroid/os/storage/StorageManager;->isNonDefaultBlockEncrypted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2455
    return-void

    .line 2458
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 2459
    const/4 v1, -0x1

    .line 2458
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2460
    return-void

    .line 2447
    :cond_2
    return-void
.end method

.method private updatePreferenceText()V
    .locals 3

    .prologue
    .line 2093
    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mManagedPasswordProvider:Lcom/android/settings/ManagedLockPasswordProvider;

    invoke-virtual {v1}, Lcom/android/settings/ManagedLockPasswordProvider;->isSettingManagedPasswordSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2094
    const-string/jumbo v1, "unlock_set_managed"

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 2095
    .local v0, "managed":Landroid/preference/Preference;
    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mManagedPasswordProvider:Lcom/android/settings/ManagedLockPasswordProvider;

    iget-boolean v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    invoke-virtual {v1, v2}, Lcom/android/settings/ManagedLockPasswordProvider;->getPickerOptionTitle(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2080
    .end local v0    # "managed":Landroid/preference/Preference;
    :goto_0
    return-void

    .line 2097
    :cond_0
    const-string/jumbo v1, "unlock_set_managed"

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->removePreference(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updatePreferencesOrFinish()V
    .locals 49

    .prologue
    .line 1649
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    .line 1650
    .local v12, "intent":Landroid/content/Intent;
    const-string/jumbo v43, "lockscreen.password_type"

    const/16 v44, -0x1

    move-object/from16 v0, v43

    move/from16 v1, v44

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v38

    .line 1651
    .local v38, "quality":I
    const/16 v43, -0x1

    move/from16 v0, v38

    move/from16 v1, v43

    if-ne v0, v1, :cond_18

    .line 1653
    const-string/jumbo v43, "minimum_quality"

    const/16 v44, -0x1

    move-object/from16 v0, v43

    move/from16 v1, v44

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v38

    .line 1654
    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQuality(I)I

    move-result v38

    .line 1656
    const-string/jumbo v43, "hide_disabled_prefs"

    const/16 v44, 0x0

    .line 1655
    move-object/from16 v0, v43

    move/from16 v1, v44

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 1657
    .local v10, "hideDisabledPrefs":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v37

    .line 1658
    .local v37, "prefScreen":Landroid/preference/PreferenceScreen;
    if-eqz v37, :cond_0

    .line 1659
    invoke-virtual/range {v37 .. v37}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 1661
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->addPreferences()V

    .line 1662
    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1, v10}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferences(IZ)V

    .line 1663
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferenceText()V

    .line 1665
    const/16 v43, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setCacChosen(Z)V

    .line 1669
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferenceSummaryIfNeeded()V

    .line 1677
    .end local v10    # "hideDisabledPrefs":Z
    .end local v37    # "prefScreen":Landroid/preference/PreferenceScreen;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v43

    const-string/jumbo v44, "universal_lock_switch_state"

    const/16 v45, 0x0

    invoke-static/range {v43 .. v45}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v43

    if-eqz v43, :cond_1

    .line 1678
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForAppLockBackupKey:Z

    move/from16 v43, v0

    .line 1677
    if-eqz v43, :cond_2

    .line 1679
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v40

    .line 1680
    .local v40, "root":Landroid/preference/PreferenceScreen;
    const-string/jumbo v43, "unlock_set_direction"

    move-object/from16 v0, v40

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v43

    if-eqz v43, :cond_2

    .line 1681
    const-string/jumbo v43, "unlock_set_direction"

    move-object/from16 v0, v40

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v43

    move-object/from16 v0, v40

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1687
    .end local v40    # "root":Landroid/preference/PreferenceScreen;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v43

    invoke-static/range {v43 .. v43}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v43

    if-eqz v43, :cond_4

    .line 1688
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v40

    .line 1689
    .restart local v40    # "root":Landroid/preference/PreferenceScreen;
    const-string/jumbo v43, "unlock_set_off"

    move-object/from16 v0, v40

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v43

    if-eqz v43, :cond_3

    .line 1691
    const-string/jumbo v43, "unlock_set_off"

    .line 1690
    move-object/from16 v0, v40

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v43

    move-object/from16 v0, v40

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1693
    :cond_3
    const-string/jumbo v43, "unlock_set_none"

    move-object/from16 v0, v40

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v43

    if-eqz v43, :cond_4

    .line 1695
    const-string/jumbo v43, "unlock_set_none"

    .line 1694
    move-object/from16 v0, v40

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v43

    move-object/from16 v0, v40

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1700
    .end local v40    # "root":Landroid/preference/PreferenceScreen;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->wManagerChanged()V

    .line 1703
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v40

    .line 1704
    .restart local v40    # "root":Landroid/preference/PreferenceScreen;
    if-eqz v40, :cond_6

    .line 1705
    const-string/jumbo v43, "unlock_set_fingerprint"

    move-object/from16 v0, v40

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settingslib/RestrictedPreference;

    .line 1706
    .local v7, "fingeprintPref":Lcom/samsung/android/settingslib/RestrictedPreference;
    if-eqz v7, :cond_5

    .line 1707
    const-string/jumbo v43, "com.android.settings.SetupChooseLockGeneric$SetupChooseLockGenericFragment"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getClass()Ljava/lang/Class;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    .line 1706
    if-eqz v43, :cond_6

    .line 1708
    :cond_5
    const-string/jumbo v43, "fingerprint_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    .line 1709
    .local v8, "fingerCategory":Landroid/preference/PreferenceCategory;
    if-eqz v8, :cond_6

    .line 1710
    move-object/from16 v0, v40

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1715
    .end local v7    # "fingeprintPref":Lcom/samsung/android/settingslib/RestrictedPreference;
    .end local v8    # "fingerCategory":Landroid/preference/PreferenceCategory;
    :cond_6
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v43

    if-eqz v43, :cond_1b

    .line 1716
    const-string/jumbo v43, "unlock_set_fingerprint"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v43

    if-eqz v43, :cond_7

    .line 1717
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v43

    const/16 v44, 0x64

    move/from16 v0, v43

    move/from16 v1, v44

    if-lt v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsKnoxVersion270Supported:Z

    move/from16 v43, v0

    :goto_1
    if-nez v43, :cond_7

    .line 1718
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v43

    const-string/jumbo v44, "unlock_set_fingerprint"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1722
    :cond_7
    const-string/jumbo v43, "unlock_set_iris"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v43

    if-eqz v43, :cond_8

    .line 1723
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v43

    const/16 v44, 0x64

    move/from16 v0, v43

    move/from16 v1, v44

    if-lt v0, v1, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsKnoxVersion270Supported:Z

    move/from16 v43, v0

    :goto_2
    if-nez v43, :cond_8

    .line 1724
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v43

    const-string/jumbo v44, "unlock_set_iris"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1737
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    move/from16 v43, v0

    if-nez v43, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    move/from16 v43, v0

    if-nez v43, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForAppLockBackupKey:Z

    move/from16 v43, v0

    if-eqz v43, :cond_b

    .line 1738
    :cond_9
    const-string/jumbo v43, "switch_fingerprint"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v43

    if-eqz v43, :cond_a

    .line 1739
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v43

    const-string/jumbo v44, "switch_fingerprint"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1740
    :cond_a
    const-string/jumbo v43, "switch_iris"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v43

    if-eqz v43, :cond_b

    .line 1741
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v43

    const-string/jumbo v44, "switch_iris"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1744
    :cond_b
    const-string/jumbo v43, "switch_fingerprint"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v43

    if-eqz v43, :cond_c

    .line 1745
    const-string/jumbo v43, "switch_fingerprint"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1746
    const-string/jumbo v43, "switch_fingerprint"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v41

    check-cast v41, Landroid/preference/SwitchPreference;

    .line 1748
    .local v41, "switchPref":Landroid/preference/SwitchPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v43, v0

    sget v44, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const/16 v45, 0x1

    move-object/from16 v0, v43

    move/from16 v1, v45

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v43

    if-nez v43, :cond_1e

    .line 1750
    const/16 v43, 0x0

    move-object/from16 v0, v41

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1755
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    move-object/from16 v43, v0

    if-eqz v43, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v43

    if-eqz v43, :cond_1f

    .line 1756
    const v43, 0x7f0b077b

    move-object/from16 v0, v41

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 1762
    .end local v41    # "switchPref":Landroid/preference/SwitchPreference;
    :cond_c
    :goto_5
    const-string/jumbo v43, "switch_iris"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v43

    if-eqz v43, :cond_d

    .line 1763
    const-string/jumbo v43, "switch_iris"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1764
    const-string/jumbo v43, "switch_iris"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v41

    check-cast v41, Landroid/preference/SwitchPreference;

    .line 1765
    .restart local v41    # "switchPref":Landroid/preference/SwitchPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v43, v0

    sget v44, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const/16 v45, 0x10

    move-object/from16 v0, v43

    move/from16 v1, v45

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v43

    if-nez v43, :cond_20

    .line 1767
    const/16 v43, 0x0

    move-object/from16 v0, v41

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1772
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    move-object/from16 v43, v0

    if-eqz v43, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises()Z

    move-result v43

    if-eqz v43, :cond_21

    .line 1773
    const v43, 0x7f0b077b

    move-object/from16 v0, v41

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 1780
    .end local v41    # "switchPref":Landroid/preference/SwitchPreference;
    :cond_d
    :goto_7
    const-string/jumbo v43, "biometrics_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v43

    if-eqz v43, :cond_e

    .line 1781
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v43

    const-string/jumbo v44, "biometrics_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1783
    :cond_e
    const-string/jumbo v43, "pref_biometrics_description"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v43

    if-eqz v43, :cond_f

    .line 1784
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v43

    const-string/jumbo v44, "pref_biometrics_description"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1786
    :cond_f
    const-string/jumbo v43, "pref_divider"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v43

    if-eqz v43, :cond_10

    .line 1787
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v43

    const-string/jumbo v44, "pref_divider"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1791
    :cond_10
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v43

    const/16 v44, 0x64

    move/from16 v0, v43

    move/from16 v1, v44

    if-lt v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    move/from16 v43, v0

    if-eqz v43, :cond_22

    .line 2027
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v37

    .line 2028
    .restart local v37    # "prefScreen":Landroid/preference/PreferenceScreen;
    if-eqz v37, :cond_12

    const-string/jumbo v43, "unlock_set_two_factor"

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v43

    check-cast v43, Lcom/samsung/android/settingslib/RestrictedPreference;

    if-eqz v43, :cond_12

    .line 2029
    const-string/jumbo v43, "unlock_set_two_factor"

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    check-cast v32, Lcom/samsung/android/settingslib/RestrictedPreference;

    .line 2030
    .local v32, "mPrefTwoFactor":Lcom/samsung/android/settingslib/RestrictedPreference;
    if-eqz v32, :cond_12

    .line 2031
    move-object/from16 v0, v37

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 2035
    .end local v32    # "mPrefTwoFactor":Lcom/samsung/android/settingslib/RestrictedPreference;
    :cond_12
    if-eqz v37, :cond_13

    const-string/jumbo v43, "unlock_set_enterprise_identity"

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v43

    check-cast v43, Lcom/samsung/android/settingslib/RestrictedPreference;

    if-eqz v43, :cond_13

    .line 2036
    const-string/jumbo v43, "unlock_set_enterprise_identity"

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v26

    check-cast v26, Lcom/samsung/android/settingslib/RestrictedPreference;

    .line 2037
    .local v26, "mPrefEnterpriseIdentity":Lcom/samsung/android/settingslib/RestrictedPreference;
    if-eqz v26, :cond_13

    .line 2038
    move-object/from16 v0, v37

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 2046
    .end local v26    # "mPrefEnterpriseIdentity":Lcom/samsung/android/settingslib/RestrictedPreference;
    :cond_13
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v43

    const-string/jumbo v44, "Block"

    const/16 v45, 0x0

    invoke-virtual/range {v43 .. v45}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    .line 2047
    .local v15, "isBlock":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyBiometrics:Z

    move/from16 v43, v0

    if-nez v43, :cond_15

    .line 2048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    move-object/from16 v43, v0

    sget v44, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual/range {v43 .. v44}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v43

    .line 2047
    if-eqz v43, :cond_15

    .line 2049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v43, v0

    sget v44, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual/range {v43 .. v44}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v43

    if-eqz v43, :cond_14

    .line 2050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v43, v0

    sget v44, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual/range {v43 .. v44}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v43

    if-eqz v43, :cond_15

    .line 2051
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v43, v0

    sget v44, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual/range {v43 .. v44}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v43

    .line 2052
    const v44, 0x61000

    .line 2051
    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_15

    .line 2052
    :cond_14
    if-eqz v15, :cond_44

    .line 2054
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyBiometrics:Z

    move/from16 v43, v0

    if-nez v43, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v43, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v44

    invoke-virtual/range {v43 .. v44}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v43

    if-eqz v43, :cond_45

    .line 2057
    :cond_16
    const/16 v43, 0x1

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyBiometrics:Z

    .line 2060
    :goto_9
    invoke-static {}, Lcom/samsung/android/settings/UCMHelpUtils;->getKeyguardStorageForCurrentUser()Ljava/lang/String;

    move-result-object v42

    .line 2061
    .local v42, "ucmCSName":Ljava/lang/String;
    if-eqz v42, :cond_46

    const-string/jumbo v43, ""

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-nez v43, :cond_46

    const-string/jumbo v43, "none"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    :goto_a
    if-nez v43, :cond_17

    .line 2062
    invoke-static {}, Lcom/samsung/android/settings/UCMHelpUtils;->isEnforcedCredentialStorageExist()Z

    move-result v43

    if-eqz v43, :cond_17

    .line 2063
    const/high16 v43, 0x70000

    const/16 v44, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferences(IZ)V

    .line 1648
    :cond_17
    return-void

    .line 1671
    .end local v15    # "isBlock":Z
    .end local v37    # "prefScreen":Landroid/preference/PreferenceScreen;
    .end local v40    # "root":Landroid/preference/PreferenceScreen;
    .end local v42    # "ucmCSName":Ljava/lang/String;
    :cond_18
    const/16 v43, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v38

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto/16 :goto_0

    .line 1717
    .restart local v40    # "root":Landroid/preference/PreferenceScreen;
    :cond_19
    const/16 v43, 0x0

    goto/16 :goto_1

    .line 1723
    :cond_1a
    const/16 v43, 0x0

    goto/16 :goto_2

    .line 1728
    :cond_1b
    const-string/jumbo v43, "switch_fingerprint"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v43

    if-eqz v43, :cond_1c

    .line 1729
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v43

    const-string/jumbo v44, "switch_fingerprint"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1730
    :cond_1c
    const-string/jumbo v43, "switch_iris"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v43

    if-eqz v43, :cond_1d

    .line 1731
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v43

    const-string/jumbo v44, "switch_iris"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1732
    :cond_1d
    const-string/jumbo v43, "unlock_set_iris"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v43

    if-eqz v43, :cond_8

    .line 1733
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v43

    const-string/jumbo v44, "unlock_set_iris"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 1752
    .restart local v41    # "switchPref":Landroid/preference/SwitchPreference;
    :cond_1e
    const/16 v43, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_4

    .line 1758
    :cond_1f
    const/16 v43, 0x0

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 1769
    :cond_20
    const/16 v43, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_6

    .line 1775
    :cond_21
    const/16 v43, 0x0

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 1791
    .end local v41    # "switchPref":Landroid/preference/SwitchPreference;
    :cond_22
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    move/from16 v43, v0

    if-nez v43, :cond_11

    .line 1792
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v37

    .line 1793
    .restart local v37    # "prefScreen":Landroid/preference/PreferenceScreen;
    if-eqz v37, :cond_13

    .line 1794
    const-string/jumbo v43, "unlock_set_password"

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    check-cast v29, Lcom/samsung/android/settingslib/RestrictedPreference;

    .line 1795
    .local v29, "mPrefPassword":Lcom/samsung/android/settingslib/RestrictedPreference;
    const-string/jumbo v43, "unlock_set_pin"

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    check-cast v31, Lcom/samsung/android/settingslib/RestrictedPreference;

    .line 1796
    .local v31, "mPrefPin":Lcom/samsung/android/settingslib/RestrictedPreference;
    const-string/jumbo v43, "unlock_set_pattern"

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v30

    check-cast v30, Lcom/samsung/android/settingslib/RestrictedPreference;

    .line 1797
    .local v30, "mPrefPattern":Lcom/samsung/android/settingslib/RestrictedPreference;
    const/16 v27, 0x0

    .line 1798
    .local v27, "mPrefFinger":Lcom/samsung/android/settingslib/RestrictedPreference;
    const/16 v28, 0x0

    .line 1799
    .local v28, "mPrefIris":Lcom/samsung/android/settingslib/RestrictedPreference;
    const-string/jumbo v43, "unlock_set_two_factor"

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    check-cast v32, Lcom/samsung/android/settingslib/RestrictedPreference;

    .line 1801
    .restart local v32    # "mPrefTwoFactor":Lcom/samsung/android/settingslib/RestrictedPreference;
    const-string/jumbo v43, "fingerprint_category"

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/PreferenceCategory;

    .line 1804
    .local v16, "mCatePrefBio":Landroid/preference/PreferenceCategory;
    const-string/jumbo v43, "unlock_set_enterprise_identity"

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v26

    check-cast v26, Lcom/samsung/android/settingslib/RestrictedPreference;

    .line 1807
    .restart local v26    # "mPrefEnterpriseIdentity":Lcom/samsung/android/settingslib/RestrictedPreference;
    invoke-virtual/range {v37 .. v37}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 1809
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId()Z

    move-result v43

    if-eqz v43, :cond_3c

    .line 1810
    new-instance v9, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-direct {v9, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 1811
    .local v9, "header":Landroid/preference/Preference;
    if-eqz v9, :cond_23

    .line 1812
    const v43, 0x7f040068

    move/from16 v0, v43

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 1813
    const/16 v43, -0x1

    move/from16 v0, v43

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setOrder(I)V

    .line 1814
    move-object/from16 v0, v37

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1817
    :cond_23
    if-eqz v30, :cond_24

    .line 1818
    const/16 v43, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setOrder(I)V

    .line 1819
    move-object/from16 v0, v37

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1822
    :cond_24
    if-eqz v31, :cond_25

    .line 1823
    const/16 v43, 0x2

    move-object/from16 v0, v31

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setOrder(I)V

    .line 1824
    move-object/from16 v0, v37

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1827
    :cond_25
    if-eqz v29, :cond_26

    .line 1828
    const/16 v43, 0x3

    move-object/from16 v0, v29

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setOrder(I)V

    .line 1829
    move-object/from16 v0, v37

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1852
    .end local v9    # "header":Landroid/preference/Preference;
    :cond_26
    :goto_b
    if-eqz v32, :cond_27

    .line 1853
    const/16 v43, 0x5

    move-object/from16 v0, v32

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setOrder(I)V

    .line 1854
    move-object/from16 v0, v37

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1858
    :cond_27
    if-eqz v26, :cond_28

    .line 1859
    const/16 v43, 0x6

    move-object/from16 v0, v26

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setOrder(I)V

    .line 1860
    move-object/from16 v0, v37

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1862
    :cond_28
    const/16 v21, 0x0

    .line 1863
    .local v21, "mIsEnterpriseIdentityEnforced":Z
    const/16 v22, 0x0

    .line 1864
    .local v22, "mIsEnterpriseIdentityHidden":Z
    const/16 v20, 0x0

    .line 1865
    .local v20, "mIsEnterpriseIdentityAppInstalled":Z
    const/16 v23, 0x0

    .line 1866
    .local v23, "mIsKnoxVersionSupported":Z
    const/16 v39, 0x0

    .line 1867
    .local v39, "removeEnterpriseIdentity":Z
    const/16 v35, 0x0

    .line 1870
    .local v35, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId()Z

    move-result v43

    if-eqz v43, :cond_29

    .line 1871
    if-eqz v16, :cond_29

    .line 1872
    const/16 v43, 0x7

    move-object/from16 v0, v16

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setOrder(I)V

    .line 1873
    move-object/from16 v0, v37

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1878
    :cond_29
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v43

    if-eqz v43, :cond_2a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsKnoxVersion270Supported:Z

    move/from16 v43, v0

    if-eqz v43, :cond_2a

    .line 1889
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v43

    const/16 v44, 0x1

    invoke-virtual/range {v43 .. v44}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1890
    const/16 v24, 0x0

    .line 1891
    .local v24, "mIsMultifactorAuthEnforced":Z
    const/16 v18, 0x0

    .line 1892
    .local v18, "mIsBioAuthEnabled":Z
    const/16 v19, 0x0

    .line 1893
    .local v19, "mIsBioAuthIrisEnabled":Z
    const/16 v25, 0x0

    .line 1896
    .local v25, "mIsSDPEnabled":Z
    const-string/jumbo v43, "persona"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/samsung/android/knox/SemPersonaManager;

    .line 1897
    .local v36, "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v43

    move-object/from16 v0, v36

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaInfo(I)Lcom/samsung/android/knox/SemPersonaInfo;

    move-result-object v11

    .line 1898
    .local v11, "info":Lcom/samsung/android/knox/SemPersonaInfo;
    if-eqz v11, :cond_2b

    iget-boolean v0, v11, Lcom/samsung/android/knox/SemPersonaInfo;->sdpEnabled:Z

    move/from16 v43, v0

    if-eqz v43, :cond_2b

    iget-boolean v0, v11, Lcom/samsung/android/knox/SemPersonaInfo;->isSdpMinor:Z

    move/from16 v43, v0

    if-eqz v43, :cond_3f

    .line 1904
    :cond_2b
    :goto_c
    :try_start_0
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v6

    .line 1905
    .local v6, "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v43

    const-string/jumbo v44, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string/jumbo v45, "isBiometricAuthenticationEnabled"

    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x1

    invoke-static/range {v47 .. v47}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v47

    const/16 v48, 0x0

    aput-object v47, v46, v48

    invoke-static/range {v43 .. v46}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    .line 1906
    .local v13, "isBiometricAuthenticationEnabled":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v43

    const-string/jumbo v44, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string/jumbo v45, "isBiometricAuthenticationEnabled"

    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x2

    invoke-static/range {v47 .. v47}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v47

    const/16 v48, 0x0

    aput-object v47, v46, v48

    invoke-static/range {v43 .. v46}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 1907
    .local v14, "isBiometricAuthenticationIrisEnabled":I
    if-eqz v6, :cond_41

    .line 1908
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v43

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v44

    move-object/from16 v0, v43

    move/from16 v1, v44

    invoke-virtual {v6, v0, v1}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/sec/enterprise/knox/container/KnoxContainerManager;

    move-result-object v4

    .line 1909
    .local v4, "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    if-eqz v4, :cond_2c

    const/16 v43, 0x1

    move/from16 v0, v43

    if-ne v13, v0, :cond_2c

    .line 1910
    const/16 v18, 0x1

    .line 1914
    :cond_2c
    if-eqz v4, :cond_2d

    const/16 v43, 0x1

    move/from16 v0, v43

    if-ne v14, v0, :cond_2d

    .line 1915
    const/16 v19, 0x1

    .line 1919
    :cond_2d
    if-eqz v4, :cond_2e

    .line 1920
    invoke-virtual {v4}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->isMultifactorAuthenticationEnforced()Z

    move-result v24

    .line 1923
    .end local v24    # "mIsMultifactorAuthEnforced":Z
    :cond_2e
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v34

    .line 1924
    .local v34, "newEkm":Lcom/samsung/android/knox/EnterpriseKnoxManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v43

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v44

    move-object/from16 v0, v34

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object v33

    .line 1925
    .local v33, "newContainerMgr":Lcom/samsung/android/knox/container/KnoxContainerManager;
    const/16 v17, 0x0

    .line 1926
    .local v17, "mConfig":Lcom/samsung/android/knox/container/AuthenticationConfig;
    if-eqz v33, :cond_2f

    invoke-virtual/range {v33 .. v33}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getBasePasswordPolicy()Lcom/samsung/android/knox/container/BasePasswordPolicy;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->getEnterpriseIdentityAuthentication()Lcom/samsung/android/knox/container/AuthenticationConfig;

    move-result-object v17

    .local v17, "mConfig":Lcom/samsung/android/knox/container/AuthenticationConfig;
    if-eqz v17, :cond_2f

    .line 1927
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getEnforceEnterpriseIdentityLock()Z

    move-result v21

    .line 1928
    .local v21, "mIsEnterpriseIdentityEnforced":Z
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getHideEnterpriseIdentityLock()Z

    move-result v22

    .line 1929
    .local v22, "mIsEnterpriseIdentityHidden":Z
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/knox/container/AuthenticationConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v35

    .line 1931
    .end local v17    # "mConfig":Lcom/samsung/android/knox/container/AuthenticationConfig;
    .end local v21    # "mIsEnterpriseIdentityEnforced":Z
    .end local v22    # "mIsEnterpriseIdentityHidden":Z
    .end local v35    # "packageName":Ljava/lang/String;
    :cond_2f
    if-eqz v4, :cond_31

    .line 1932
    if-nez v35, :cond_30

    .line 1933
    const-string/jumbo v35, "com.sec.android.service.singlesignon"

    .line 1934
    :cond_30
    invoke-virtual {v4}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v3

    .line 1935
    .local v3, "appPolicy":Landroid/app/enterprise/ApplicationPolicy;
    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Landroid/app/enterprise/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_31

    .line 1936
    const/16 v20, 0x1

    .line 1939
    .end local v3    # "appPolicy":Landroid/app/enterprise/ApplicationPolicy;
    :cond_31
    sget-object v43, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static/range {v43 .. v43}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v23

    .line 1940
    .local v23, "mIsKnoxVersionSupported":Z
    if-nez v25, :cond_40

    if-eqz v20, :cond_40

    if-eqz v23, :cond_40

    const/16 v39, 0x0

    .line 1950
    .end local v4    # "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v6    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .end local v13    # "isBiometricAuthenticationEnabled":I
    .end local v14    # "isBiometricAuthenticationIrisEnabled":I
    .end local v23    # "mIsKnoxVersionSupported":Z
    .end local v33    # "newContainerMgr":Lcom/samsung/android/knox/container/KnoxContainerManager;
    .end local v34    # "newEkm":Lcom/samsung/android/knox/EnterpriseKnoxManager;
    :goto_d
    if-nez v25, :cond_32

    if-eqz v18, :cond_32

    .line 1957
    :cond_32
    if-nez v25, :cond_33

    if-eqz v19, :cond_33

    .line 1967
    :cond_33
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v43

    if-eqz v43, :cond_34

    .line 1971
    :cond_34
    if-eqz v24, :cond_36

    .line 1972
    const/16 v43, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 1973
    const/16 v43, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 1974
    const/16 v43, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 1977
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v43

    if-eqz v43, :cond_35

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsKnoxVersion270Supported:Z

    move/from16 v43, v0

    if-eqz v43, :cond_35

    .line 1983
    :cond_35
    if-nez v39, :cond_42

    .line 1984
    const/16 v43, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 1991
    :cond_36
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v43

    invoke-static/range {v43 .. v43}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v43

    if-nez v43, :cond_37

    .line 1992
    if-eqz v32, :cond_37

    .line 1993
    move-object/from16 v0, v37

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1996
    :cond_37
    if-eqz v32, :cond_38

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    move/from16 v43, v0

    if-eqz v43, :cond_38

    .line 1997
    move-object/from16 v0, v37

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 2000
    :cond_38
    if-eqz v21, :cond_39

    if-eqz v39, :cond_43

    .line 2013
    :cond_39
    if-nez v22, :cond_3a

    if-eqz v39, :cond_3b

    .line 2014
    :cond_3a
    if-eqz v26, :cond_3b

    .line 2015
    move-object/from16 v0, v37

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 2020
    :cond_3b
    :goto_f
    if-eqz v11, :cond_13

    iget-boolean v0, v11, Lcom/samsung/android/knox/SemPersonaInfo;->isSecureFolder:Z

    move/from16 v43, v0

    if-eqz v43, :cond_13

    .line 2021
    if-eqz v32, :cond_13

    .line 2022
    move-object/from16 v0, v37

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_8

    .line 1834
    .end local v11    # "info":Lcom/samsung/android/knox/SemPersonaInfo;
    .end local v18    # "mIsBioAuthEnabled":Z
    .end local v19    # "mIsBioAuthIrisEnabled":Z
    .end local v20    # "mIsEnterpriseIdentityAppInstalled":Z
    .end local v25    # "mIsSDPEnabled":Z
    .end local v36    # "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    .end local v39    # "removeEnterpriseIdentity":Z
    :cond_3c
    if-eqz v29, :cond_3d

    .line 1835
    const/16 v43, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setOrder(I)V

    .line 1836
    move-object/from16 v0, v37

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1838
    :cond_3d
    if-eqz v31, :cond_3e

    .line 1839
    const/16 v43, 0x2

    move-object/from16 v0, v31

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setOrder(I)V

    .line 1840
    move-object/from16 v0, v37

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1842
    :cond_3e
    if-eqz v30, :cond_26

    .line 1843
    const/16 v43, 0x3

    move-object/from16 v0, v30

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setOrder(I)V

    .line 1844
    move-object/from16 v0, v37

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_b

    .line 1899
    .restart local v11    # "info":Lcom/samsung/android/knox/SemPersonaInfo;
    .restart local v18    # "mIsBioAuthEnabled":Z
    .restart local v19    # "mIsBioAuthIrisEnabled":Z
    .restart local v20    # "mIsEnterpriseIdentityAppInstalled":Z
    .local v21, "mIsEnterpriseIdentityEnforced":Z
    .local v22, "mIsEnterpriseIdentityHidden":Z
    .local v23, "mIsKnoxVersionSupported":Z
    .restart local v24    # "mIsMultifactorAuthEnforced":Z
    .restart local v25    # "mIsSDPEnabled":Z
    .restart local v35    # "packageName":Ljava/lang/String;
    .restart local v36    # "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    .restart local v39    # "removeEnterpriseIdentity":Z
    :cond_3f
    const/16 v25, 0x1

    goto/16 :goto_c

    .line 1940
    .end local v21    # "mIsEnterpriseIdentityEnforced":Z
    .end local v22    # "mIsEnterpriseIdentityHidden":Z
    .end local v24    # "mIsMultifactorAuthEnforced":Z
    .end local v35    # "packageName":Ljava/lang/String;
    .restart local v4    # "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .restart local v6    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .restart local v13    # "isBiometricAuthenticationEnabled":I
    .restart local v14    # "isBiometricAuthenticationIrisEnabled":I
    .local v23, "mIsKnoxVersionSupported":Z
    .restart local v33    # "newContainerMgr":Lcom/samsung/android/knox/container/KnoxContainerManager;
    .restart local v34    # "newEkm":Lcom/samsung/android/knox/EnterpriseKnoxManager;
    :cond_40
    const/16 v39, 0x1

    goto/16 :goto_d

    .line 1943
    .end local v4    # "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v33    # "newContainerMgr":Lcom/samsung/android/knox/container/KnoxContainerManager;
    .end local v34    # "newEkm":Lcom/samsung/android/knox/EnterpriseKnoxManager;
    .restart local v21    # "mIsEnterpriseIdentityEnforced":Z
    .restart local v22    # "mIsEnterpriseIdentityHidden":Z
    .local v23, "mIsKnoxVersionSupported":Z
    .restart local v24    # "mIsMultifactorAuthEnforced":Z
    .restart local v35    # "packageName":Ljava/lang/String;
    :cond_41
    :try_start_1
    const-string/jumbo v43, "ChooseLockGenericFragment"

    const-string/jumbo v44, "ekm is null"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_d

    .line 1945
    .end local v6    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .end local v13    # "isBiometricAuthenticationEnabled":I
    .end local v14    # "isBiometricAuthenticationIrisEnabled":I
    .end local v21    # "mIsEnterpriseIdentityEnforced":Z
    .end local v22    # "mIsEnterpriseIdentityHidden":Z
    .end local v24    # "mIsMultifactorAuthEnforced":Z
    .end local v35    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 1946
    .local v5, "e":Ljava/lang/SecurityException;
    const-string/jumbo v43, "ChooseLockGenericFragment"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "SecurityException: "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 1986
    .end local v5    # "e":Ljava/lang/SecurityException;
    .end local v23    # "mIsKnoxVersionSupported":Z
    :cond_42
    move-object/from16 v0, v37

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_e

    .line 2001
    :cond_43
    if-nez v24, :cond_3b

    .line 2002
    const/16 v43, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 2003
    const/16 v43, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 2004
    const/16 v43, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 2007
    if-eqz v32, :cond_3b

    .line 2008
    const/16 v43, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto/16 :goto_f

    .line 2053
    .end local v11    # "info":Lcom/samsung/android/knox/SemPersonaInfo;
    .end local v16    # "mCatePrefBio":Landroid/preference/PreferenceCategory;
    .end local v18    # "mIsBioAuthEnabled":Z
    .end local v19    # "mIsBioAuthIrisEnabled":Z
    .end local v20    # "mIsEnterpriseIdentityAppInstalled":Z
    .end local v25    # "mIsSDPEnabled":Z
    .end local v26    # "mPrefEnterpriseIdentity":Lcom/samsung/android/settingslib/RestrictedPreference;
    .end local v27    # "mPrefFinger":Lcom/samsung/android/settingslib/RestrictedPreference;
    .end local v28    # "mPrefIris":Lcom/samsung/android/settingslib/RestrictedPreference;
    .end local v29    # "mPrefPassword":Lcom/samsung/android/settingslib/RestrictedPreference;
    .end local v30    # "mPrefPattern":Lcom/samsung/android/settingslib/RestrictedPreference;
    .end local v31    # "mPrefPin":Lcom/samsung/android/settingslib/RestrictedPreference;
    .end local v32    # "mPrefTwoFactor":Lcom/samsung/android/settingslib/RestrictedPreference;
    .end local v36    # "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    .end local v39    # "removeEnterpriseIdentity":Z
    .restart local v15    # "isBlock":Z
    :cond_44
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->confirmFingerprintPassword()V

    goto/16 :goto_9

    .line 2054
    :cond_45
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledIrises()Z

    move-result v43

    if-eqz v43, :cond_16

    if-nez v15, :cond_16

    .line 2055
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->confirmIrisPassword()V

    goto/16 :goto_9

    .line 2061
    .restart local v42    # "ucmCSName":Ljava/lang/String;
    :cond_46
    const/16 v43, 0x1

    goto/16 :goto_a
.end method

.method private upgradeQuality(I)I
    .locals 1
    .param p1, "quality"    # I

    .prologue
    .line 2177
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2178
    const/high16 v0, 0x50000

    return v0

    .line 2198
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQualityForDPM(I)I

    move-result p1

    .line 2200
    return p1
.end method

.method private upgradeQualityForDPM(I)I
    .locals 4
    .param p1, "quality"    # I

    .prologue
    const/4 v3, 0x0

    .line 2205
    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    sget v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v1, v3, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v0

    .line 2206
    .local v0, "minQuality":I
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v1, :cond_0

    .line 2207
    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v0

    .line 2209
    :cond_0
    if-ge p1, v0, :cond_1

    .line 2210
    move p1, v0

    .line 2212
    :cond_1
    return p1
.end method


# virtual methods
.method protected addPreferences()V
    .locals 2

    .prologue
    .line 2071
    const v0, 0x7f0800e7

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->addPreferencesFromResource(I)V

    .line 2075
    const-string/jumbo v0, "unlock_set_none"

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settingslib/RestrictedPreference;

    const v1, 0x7f11000c

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setViewId(I)V

    .line 2076
    const-string/jumbo v0, "unlock_set_pin"

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settingslib/RestrictedPreference;

    const v1, 0x7f11000d

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setViewId(I)V

    .line 2077
    const-string/jumbo v0, "unlock_set_password"

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settingslib/RestrictedPreference;

    const v1, 0x7f11000e

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setViewId(I)V

    .line 2068
    return-void
.end method

.method protected disableUnusablePreferences(IZ)V
    .locals 0
    .param p1, "quality"    # I
    .param p2, "hideDisabledPrefs"    # Z

    .prologue
    .line 2233
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferencesImpl(IZ)V

    .line 2232
    return-void
.end method

.method protected disableUnusablePreferencesImpl(IZ)V
    .locals 23
    .param p1, "quality"    # I
    .param p2, "hideDisabled"    # Z

    .prologue
    .line 2244
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    .line 2246
    .local v8, "entries":Landroid/preference/PreferenceScreen;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v19, v0

    sget v20, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v4

    .line 2248
    .local v4, "adminEnforcedQuality":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    sget v20, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 2247
    invoke-static/range {v19 .. v20}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfPasswordQualityIsSet(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v7

    .line 2250
    .local v7, "enforcedAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 2251
    .local v10, "intent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v19

    const-string/jumbo v20, "Block"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    .line 2252
    .local v13, "isBlock":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v14

    .line 2254
    .local v14, "isGuestMode":Z
    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v19

    add-int/lit8 v9, v19, -0x1

    .local v9, "i":I
    :goto_0
    if-ltz v9, :cond_3e

    .line 2255
    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v16

    .line 2256
    .local v16, "pref":Landroid/preference/Preference;
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/samsung/android/settingslib/RestrictedPreference;

    move/from16 v19, v0

    if-nez v19, :cond_0

    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/preference/SwitchPreference;

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 2257
    :cond_0
    invoke-virtual/range {v16 .. v16}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v15

    .line 2258
    .local v15, "key":Ljava/lang/String;
    const/4 v6, 0x1

    .line 2259
    .local v6, "enabled":Z
    const/16 v18, 0x1

    .line 2260
    .local v18, "visible":Z
    const/4 v5, 0x0

    .line 2261
    .local v5, "disabledByAdmin":Z
    const-string/jumbo v19, "unlock_set_direction"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 2264
    const/16 v19, 0x1000

    move/from16 v0, p1

    move/from16 v1, v19

    if-gt v0, v1, :cond_4

    const/4 v6, 0x1

    .line 2381
    .end local v6    # "enabled":Z
    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    .line 2382
    if-eqz v18, :cond_38

    move/from16 v18, v6

    .line 2386
    .end local v18    # "visible":Z
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isUnlockMethodAllowedByAllowRemoveCertificates(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_39

    .line 2391
    :goto_3
    if-nez v18, :cond_3a

    .line 2392
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 2254
    .end local v5    # "disabledByAdmin":Z
    .end local v15    # "key":Ljava/lang/String;
    .end local v16    # "pref":Landroid/preference/Preference;
    :cond_3
    :goto_4
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 2264
    .restart local v5    # "disabledByAdmin":Z
    .restart local v6    # "enabled":Z
    .restart local v15    # "key":Ljava/lang/String;
    .restart local v16    # "pref":Landroid/preference/Preference;
    .restart local v18    # "visible":Z
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 2265
    :cond_5
    const-string/jumbo v19, "unlock_set_off"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 2266
    if-gtz p1, :cond_7

    const/4 v6, 0x1

    .line 2267
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0e000f

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 2268
    const/4 v6, 0x0

    .line 2269
    const/16 v18, 0x0

    .line 2271
    :cond_6
    if-lez v4, :cond_8

    const/4 v5, 0x1

    goto :goto_1

    .line 2266
    :cond_7
    const/4 v6, 0x0

    goto :goto_5

    .line 2271
    :cond_8
    const/4 v5, 0x0

    goto :goto_1

    .line 2273
    :cond_9
    const-string/jumbo v19, "unlock_set_none"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 2274
    sget v19, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_a

    .line 2276
    const/16 v18, 0x0

    .line 2278
    :cond_a
    if-gtz p1, :cond_b

    const/4 v6, 0x1

    .line 2279
    :goto_6
    if-lez v4, :cond_c

    const/4 v5, 0x1

    goto :goto_1

    .line 2278
    :cond_b
    const/4 v6, 0x0

    goto :goto_6

    .line 2279
    :cond_c
    const/4 v5, 0x0

    goto :goto_1

    .line 2281
    :cond_d
    const-string/jumbo v19, "unlock_set_pattern"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 2282
    invoke-static {}, Lcom/android/settings/Utils;->isExhibitionMode()Z

    move-result v19

    if-eqz v19, :cond_e

    .line 2283
    const/4 v6, 0x0

    .line 2288
    :goto_7
    const/high16 v19, 0x10000

    .line 2287
    move/from16 v0, v19

    if-le v4, v0, :cond_10

    const/4 v5, 0x1

    goto :goto_1

    .line 2285
    :cond_e
    const/high16 v19, 0x10000

    move/from16 v0, p1

    move/from16 v1, v19

    if-gt v0, v1, :cond_f

    const/4 v6, 0x1

    goto :goto_7

    :cond_f
    const/4 v6, 0x0

    goto :goto_7

    .line 2287
    :cond_10
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2289
    :cond_11
    const-string/jumbo v19, "unlock_set_fingerprint"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_12

    const-string/jumbo v19, "switch_fingerprint"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_19

    .line 2290
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_13

    if-eqz v14, :cond_18

    :cond_13
    const/16 v18, 0x0

    .line 2292
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 2294
    .local v11, "intent_finger":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->fromChinaSUW:Z

    move/from16 v19, v0

    if-nez v19, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    move/from16 v19, v0

    if-nez v19, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    move/from16 v19, v0

    if-nez v19, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForAppLockBackupKey:Z

    move/from16 v19, v0

    if-nez v19, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForPrivateModeBackupKey:Z

    move/from16 v19, v0

    if-nez v19, :cond_14

    const-string/jumbo v19, "com.android.settings.SetupChooseLockGeneric$SetupChooseLockGenericFragment"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_15

    .line 2295
    :cond_14
    const/4 v6, 0x0

    .line 2296
    const/16 v18, 0x0

    .line 2299
    :cond_15
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    aput-object v19, v17, v20

    .line 2300
    .local v17, "selectionArgs":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    const-string/jumbo v20, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string/jumbo v21, "isBiometricAuthenticationEnabled"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 2301
    .local v12, "isBiometricAuthenticationEnabled":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v19

    if-lez v19, :cond_16

    .line 2302
    if-nez v12, :cond_16

    .line 2303
    const/4 v6, 0x0

    .line 2307
    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isFingerprintDisabled()Z

    move-result v19

    if-eqz v19, :cond_17

    .line 2308
    const-string/jumbo v19, "ChooseLockGenericFragment"

    const-string/jumbo v20, "isFingerprintDisabled() = TURE"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2309
    const/4 v6, 0x0

    .line 2312
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 2313
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 2290
    .end local v11    # "intent_finger":Landroid/content/Intent;
    .end local v12    # "isBiometricAuthenticationEnabled":I
    .end local v17    # "selectionArgs":[Ljava/lang/String;
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/settings/Utils;->isGuestUser(Landroid/content/Context;)Z

    move-result v19

    if-nez v19, :cond_13

    const/16 v18, 0x1

    goto/16 :goto_8

    .line 2315
    :cond_19
    const-string/jumbo v19, "unlock_set_smart"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1b

    .line 2316
    const v19, 0x9100

    move/from16 v0, p1

    move/from16 v1, v19

    if-gt v0, v1, :cond_1a

    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_1a
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 2317
    :cond_1b
    const-string/jumbo v19, "unlock_set_pin"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1f

    .line 2318
    invoke-static {}, Lcom/android/settings/Utils;->isExhibitionMode()Z

    move-result v19

    if-eqz v19, :cond_1c

    .line 2319
    const/4 v6, 0x0

    .line 2324
    :goto_9
    const/high16 v19, 0x30000

    .line 2323
    move/from16 v0, v19

    if-le v4, v0, :cond_1e

    const/4 v5, 0x1

    goto/16 :goto_1

    .line 2321
    :cond_1c
    const/high16 v19, 0x30000

    move/from16 v0, p1

    move/from16 v1, v19

    if-gt v0, v1, :cond_1d

    const/4 v6, 0x1

    goto :goto_9

    :cond_1d
    const/4 v6, 0x0

    goto :goto_9

    .line 2323
    :cond_1e
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2325
    :cond_1f
    const-string/jumbo v19, "unlock_set_cac_pin"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_23

    .line 2326
    const/high16 v19, 0x70000

    move/from16 v0, p1

    move/from16 v1, v19

    if-gt v0, v1, :cond_21

    const/4 v6, 0x1

    .line 2327
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/settings/UCMHelpUtils;->isSmartcardAvailable(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_20

    if-eqz v14, :cond_22

    :cond_20
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 2326
    :cond_21
    const/4 v6, 0x0

    goto :goto_a

    .line 2327
    :cond_22
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 2328
    :cond_23
    const-string/jumbo v19, "unlock_set_password"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_27

    .line 2329
    invoke-static {}, Lcom/android/settings/Utils;->isExhibitionMode()Z

    move-result v19

    if-eqz v19, :cond_24

    .line 2330
    const/4 v6, 0x0

    .line 2335
    :goto_b
    const/high16 v19, 0x60000

    .line 2334
    move/from16 v0, v19

    if-le v4, v0, :cond_26

    const/4 v5, 0x1

    goto/16 :goto_1

    .line 2332
    :cond_24
    const/high16 v19, 0x60000

    move/from16 v0, p1

    move/from16 v1, v19

    if-gt v0, v1, :cond_25

    const/4 v6, 0x1

    goto :goto_b

    :cond_25
    const/4 v6, 0x0

    goto :goto_b

    .line 2334
    :cond_26
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2336
    :cond_27
    const-string/jumbo v19, "unlock_set_managed"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2a

    .line 2337
    const/high16 v19, 0x80000

    move/from16 v0, p1

    move/from16 v1, v19

    if-gt v0, v1, :cond_28

    .line 2338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mManagedPasswordProvider:Lcom/android/settings/ManagedLockPasswordProvider;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/ManagedLockPasswordProvider;->isManagedPasswordChoosable()Z

    move-result v6

    .line 2340
    .end local v6    # "enabled":Z
    :goto_c
    const/high16 v19, 0x80000

    .line 2339
    move/from16 v0, v19

    if-le v4, v0, :cond_29

    const/4 v5, 0x1

    goto/16 :goto_1

    .line 2337
    .restart local v6    # "enabled":Z
    :cond_28
    const/4 v6, 0x0

    goto :goto_c

    .line 2339
    .end local v6    # "enabled":Z
    :cond_29
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2341
    .restart local v6    # "enabled":Z
    :cond_2a
    const-string/jumbo v19, "unlock_set_enterprise_identity"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2d

    .line 2342
    invoke-static {}, Lcom/android/settings/Utils;->isExhibitionMode()Z

    move-result v19

    if-eqz v19, :cond_2b

    .line 2343
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 2345
    :cond_2b
    const/high16 v19, 0x60000

    move/from16 v0, p1

    move/from16 v1, v19

    if-gt v0, v1, :cond_2c

    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_2c
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 2347
    :cond_2d
    const-string/jumbo v19, "pref_lock_type"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_30

    .line 2348
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v19

    const/16 v20, 0x64

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_2e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2f

    .line 2351
    :cond_2e
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 2348
    :cond_2f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    move/from16 v19, v0

    if-nez v19, :cond_2e

    .line 2349
    const/16 v18, 0x1

    .line 2348
    goto/16 :goto_1

    .line 2354
    :cond_30
    const-string/jumbo v19, "unlock_set_iris"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_33

    .line 2355
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isIrisDisabled()Z

    move-result v19

    if-eqz v19, :cond_31

    .line 2356
    const/4 v6, 0x0

    .line 2359
    :cond_31
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->fromChinaSUW:Z

    move/from16 v19, v0

    if-nez v19, :cond_32

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    move/from16 v19, v0

    if-nez v19, :cond_32

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    move/from16 v19, v0

    if-nez v19, :cond_32

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForAppLockBackupKey:Z

    move/from16 v19, v0

    if-nez v19, :cond_32

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForPrivateModeBackupKey:Z

    move/from16 v19, v0

    if-nez v19, :cond_32

    const-string/jumbo v19, "com.android.settings.SetupChooseLockGeneric$SetupChooseLockGenericFragment"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 2360
    :cond_32
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 2362
    :cond_33
    const-string/jumbo v19, "switch_iris"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 2363
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isIrisDisabled()Z

    move-result v19

    if-eqz v19, :cond_34

    .line 2364
    const/4 v6, 0x0

    .line 2368
    :cond_34
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v19

    const/16 v20, 0x64

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_35

    .line 2369
    const/16 v18, 0x1

    .line 2372
    :cond_35
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->fromChinaSUW:Z

    move/from16 v19, v0

    if-nez v19, :cond_36

    const-string/jumbo v19, "com.android.settings.SetupChooseLockGeneric$SetupChooseLockGenericFragment"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_37

    .line 2373
    :cond_36
    const/16 v18, 0x0

    .line 2376
    :cond_37
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 2377
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 2382
    .end local v6    # "enabled":Z
    :cond_38
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 2387
    .end local v18    # "visible":Z
    :cond_39
    const-string/jumbo v19, "ChooseLockGenericFragment"

    const-string/jumbo v20, "Disabling preference key %s due to MDM allowRemoveCertificates"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v15, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2388
    const/4 v6, 0x0

    .restart local v6    # "enabled":Z
    goto/16 :goto_3

    .line 2393
    .end local v6    # "enabled":Z
    :cond_3a
    if-eqz v5, :cond_3b

    if-eqz v7, :cond_3b

    .line 2394
    check-cast v16, Lcom/samsung/android/settingslib/RestrictedPreference;

    .end local v16    # "pref":Landroid/preference/Preference;
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/samsung/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto/16 :goto_4

    .line 2395
    .restart local v16    # "pref":Landroid/preference/Preference;
    :cond_3b
    if-nez v6, :cond_3d

    .line 2398
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/samsung/android/settingslib/RestrictedPreference;

    move/from16 v19, v0

    if-eqz v19, :cond_3c

    move-object/from16 v19, v16

    .line 2399
    check-cast v19, Lcom/samsung/android/settingslib/RestrictedPreference;

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 2401
    :cond_3c
    const v19, 0x7f0b119c

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 2402
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_4

    .line 2404
    :cond_3d
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/samsung/android/settingslib/RestrictedPreference;

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 2405
    check-cast v16, Lcom/samsung/android/settingslib/RestrictedPreference;

    .end local v16    # "pref":Landroid/preference/Preference;
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto/16 :goto_4

    .line 2243
    .end local v5    # "disabledByAdmin":Z
    .end local v15    # "key":Ljava/lang/String;
    :cond_3e
    return-void
.end method

.method protected getEncryptionInterstitialIntent(Landroid/content/Context;IZLandroid/content/Intent;)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quality"    # I
    .param p3, "required"    # Z
    .param p4, "unlockMethodIntent"    # Landroid/content/Intent;

    .prologue
    .line 2545
    invoke-static {p1, p2, p3, p4}, Lcom/android/settings/CryptKeeperEncryptionInterstitialActivity;->createStartIntent(Landroid/content/Context;IZLandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 3181
    const v0, 0x7f0b18a7

    return v0
.end method

.method protected getLockManagedPasswordIntent(ZLjava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "requirePassword"    # Z
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 2492
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mManagedPasswordProvider:Lcom/android/settings/ManagedLockPasswordProvider;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/ManagedLockPasswordProvider;->createIntent(ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getLockPasswordIntent(Landroid/content/Context;IIIZJLjava/lang/String;I)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quality"    # I
    .param p3, "minLength"    # I
    .param p4, "maxLength"    # I
    .param p5, "requirePasswordToDecrypt"    # Z
    .param p6, "challenge"    # J
    .param p8, "password"    # Ljava/lang/String;
    .param p9, "userId"    # I

    .prologue
    .line 2512
    invoke-static/range {p1 .. p9}, Lcom/android/settings/ChooseLockPassword;->createIntent(Landroid/content/Context;IIIZJLjava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getLockPasswordIntent(Landroid/content/Context;IIIZLjava/lang/String;I)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quality"    # I
    .param p3, "minLength"    # I
    .param p4, "maxLength"    # I
    .param p5, "requirePasswordToDecrypt"    # Z
    .param p6, "password"    # Ljava/lang/String;
    .param p7, "userId"    # I

    .prologue
    .line 2518
    invoke-static/range {p1 .. p7}, Lcom/android/settings/ChooseLockPassword;->createIntent(Landroid/content/Context;IIIZLjava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getLockPasswordIntent(Landroid/content/Context;IIIZZI)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quality"    # I
    .param p3, "minLength"    # I
    .param p4, "maxLength"    # I
    .param p5, "requirePasswordToDecrypt"    # Z
    .param p6, "confirmCredentials"    # Z
    .param p7, "userId"    # I

    .prologue
    .line 2498
    invoke-static/range {p1 .. p7}, Lcom/android/settings/ChooseLockPassword;->createIntent(Landroid/content/Context;IIIZZI)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getLockPatternIntent(Landroid/content/Context;ZJLjava/lang/String;I)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requirePassword"    # Z
    .param p3, "challenge"    # J
    .param p5, "pattern"    # Ljava/lang/String;
    .param p6, "userId"    # I

    .prologue
    .line 2535
    invoke-static/range {p1 .. p6}, Lcom/android/settings/ChooseLockPattern;->createIntent(Landroid/content/Context;ZJLjava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getLockPatternIntent(Landroid/content/Context;ZLjava/lang/String;I)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requirePassword"    # Z
    .param p3, "pattern"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    .line 2540
    invoke-static {p1, p2, p3, p4}, Lcom/android/settings/ChooseLockPattern;->createIntent(Landroid/content/Context;ZLjava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 468
    const/16 v0, 0x1b

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 25
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1012
    invoke-super/range {p0 .. p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1013
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 1014
    const/16 v3, 0x64

    move/from16 v0, p1

    if-ne v0, v3, :cond_6

    const/4 v3, -0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_6

    .line 1015
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 1016
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v3, :cond_0

    .line 1017
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    .line 1019
    :cond_0
    if-eqz p3, :cond_1

    .line 1020
    const-string/jumbo v3, "password"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    .line 1022
    const-string/jumbo v3, "enterprise_password"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->enterpriseOldPassword:Ljava/lang/String;

    .line 1024
    const-string/jumbo v3, "password"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->oldPassword:Ljava/lang/String;

    .line 1027
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isSupportBiometrics()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1028
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateBiometricsPreferences()V

    .line 1032
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    if-eqz v3, :cond_2

    .line 1033
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1035
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v4, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v3

    const/4 v4, 0x0

    .line 1034
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    .line 1357
    :cond_2
    :goto_1
    if-nez p1, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    if-eqz v3, :cond_3

    .line 1358
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    .line 1011
    :cond_3
    return-void

    .line 1030
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    goto :goto_0

    .line 1037
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_1

    .line 1041
    :cond_6
    const/16 v3, 0x66

    move/from16 v0, p1

    if-eq v0, v3, :cond_7

    const/16 v3, 0x65

    move/from16 v0, p1

    if-ne v0, v3, :cond_12

    .line 1042
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    if-eqz v3, :cond_8

    .line 1043
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v3, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1044
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    .line 1046
    :cond_8
    const/16 v17, 0x0

    .line 1047
    .local v17, "mToken":[B
    const/16 v18, 0x0

    .line 1048
    .local v18, "mtoken_2nd":[B
    if-eqz p3, :cond_9

    .line 1049
    const-string/jumbo v3, "hw_auth_token"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v17

    .line 1050
    .local v17, "mToken":[B
    const-string/jumbo v3, "hw_auth_token_2nd"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v18

    .line 1053
    .end local v17    # "mToken":[B
    .end local v18    # "mtoken_2nd":[B
    :cond_9
    if-eqz p2, :cond_2

    .line 1054
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v3, :cond_a

    if-eqz v17, :cond_a

    .line 1055
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    sget v4, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v3, v4}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1056
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/hardware/fingerprint/FingerprintManager;->requestUpdateSID([B)Z

    .line 1059
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "db_lockscreen_is_smart_lock"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_c

    const/4 v13, 0x1

    .line 1060
    .local v13, "isAutoLockEnabled":Z
    :goto_2
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1061
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    if-nez v3, :cond_b

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v3, :cond_d

    .line 1100
    :cond_b
    :goto_3
    invoke-static {}, Lcom/samsung/android/settings/UCMHelpUtils;->resetUcmKeyguardSettings()Z

    .line 1101
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v3, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1102
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_1

    .line 1059
    .end local v13    # "isAutoLockEnabled":Z
    :cond_c
    const/4 v13, 0x0

    .restart local v13    # "isAutoLockEnabled":Z
    goto :goto_2

    .line 1061
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->fromSetupwizard:Z

    if-nez v3, :cond_b

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForAppLockBackupKey:Z

    if-nez v3, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 1062
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    sget v4, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v3, v4}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledIrises()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1065
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v4, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v19

    .line 1066
    .local v19, "passwordQuality":I
    const-string/jumbo v11, ""

    .line 1067
    .local v11, "extraValue":Ljava/lang/String;
    sparse-switch v19, :sswitch_data_0

    .line 1081
    :goto_4
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    .line 1082
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "com.android.settings"

    const-string/jumbo v5, "LOSC"

    invoke-static {v3, v4, v5, v11}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1063
    .end local v11    # "extraValue":Ljava/lang/String;
    .end local v19    # "passwordQuality":I
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startUseAdditionalBiometricsSettings([B[B)V

    goto :goto_3

    .line 1070
    .restart local v11    # "extraValue":Ljava/lang/String;
    .restart local v19    # "passwordQuality":I
    :sswitch_0
    const-string/jumbo v11, "PIN"

    goto :goto_4

    .line 1075
    :sswitch_1
    const-string/jumbo v11, "Password"

    goto :goto_4

    .line 1078
    :sswitch_2
    const-string/jumbo v11, "Pattern"

    goto :goto_4

    .line 1087
    .end local v11    # "extraValue":Ljava/lang/String;
    .end local v19    # "passwordQuality":I
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-nez v3, :cond_b

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    if-nez v3, :cond_b

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForPrivateModeBackupKey:Z

    if-nez v3, :cond_b

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForAppLockBackupKey:Z

    if-nez v3, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_b

    if-nez v13, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isGuestUser(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 1088
    const/4 v14, 0x0

    .line 1089
    .local v14, "isSmartcardNumericType":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v4, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v3

    const/high16 v4, 0x70000

    if-ne v3, v4, :cond_11

    .line 1090
    const-string/jumbo v3, "ChooseLockGenericFragment"

    const-string/jumbo v4, "Smartcard type do not need fingerprint setting"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    const/4 v14, 0x1

    .line 1093
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v4, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    if-eqz v3, :cond_b

    if-nez v14, :cond_b

    .line 1094
    const-string/jumbo v3, "lock_screen_pin_pattern_password"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v3, v1, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startFingerprintLockSettings(Ljava/lang/String;[BZ)V

    .line 1095
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v3, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1096
    return-void

    .line 1105
    .end local v13    # "isAutoLockEnabled":Z
    .end local v14    # "isSmartcardNumericType":Z
    :cond_12
    const/16 v3, 0x2715

    move/from16 v0, p1

    if-ne v0, v3, :cond_13

    .line 1106
    const/4 v3, -0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_2

    .line 1107
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    .line 1108
    sget-object v3, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUnlockMethod:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 1109
    sget-object v3, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUnlockMethod:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setUnlockMethod(Ljava/lang/String;)Z

    .line 1110
    return-void

    .line 1113
    :cond_13
    const/16 v3, 0x2716

    move/from16 v0, p1

    if-eq v0, v3, :cond_14

    const/16 v3, 0x2717

    move/from16 v0, p1

    if-ne v0, v3, :cond_16

    .line 1114
    :cond_14
    const/4 v3, -0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_15

    .line 1115
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyBiometrics:Z

    goto/16 :goto_1

    .line 1117
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_1

    .line 1119
    :cond_16
    const/16 v3, 0x2718

    move/from16 v0, p1

    if-ne v0, v3, :cond_17

    .line 1120
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_1

    .line 1122
    :cond_17
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_38

    .line 1123
    const-string/jumbo v3, "ChooseLockGenericFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onActivityResult reqCode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", resultCode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    const/16 v3, 0x2711

    move/from16 v0, p1

    if-ne v0, v3, :cond_1a

    .line 1125
    const/4 v3, 0x1

    move/from16 v0, p2

    if-eq v0, v3, :cond_18

    if-eqz p2, :cond_19

    .line 1127
    :cond_18
    :try_start_0
    const-string/jumbo v3, "ChooseLockGenericFragment"

    const-string/jumbo v4, "set two factor : 0"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "knox_finger_print_plus"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1129
    const-string/jumbo v3, "ChooseLockGenericFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "two factor : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "knox_finger_print_plus"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1134
    :cond_19
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_1

    .line 1130
    :catch_0
    move-exception v10

    .line 1131
    .local v10, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v3, "ChooseLockGenericFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SettingNotFoundException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v10}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1135
    .end local v10    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1a
    const/16 v3, 0x2712

    move/from16 v0, p1

    if-ne v0, v3, :cond_22

    .line 1136
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsEnforcedMultifactorNReset:Z

    if-eqz v3, :cond_1b

    if-nez p2, :cond_1b

    .line 1137
    new-instance v15, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.knox.kss.PASSWORD_RESET"

    invoke-direct {v15, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1138
    .local v15, "knoxIntent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.samsung.knox.kss"

    const-string/jumbo v5, "com.samsung.knox.kss.KnoxKeyguardReceiver"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1139
    const-string/jumbo v3, "resetResult"

    const/4 v4, 0x0

    invoke-virtual {v15, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1140
    const/high16 v3, 0x10000000

    invoke-virtual {v15, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1141
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v15, v4}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1143
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    .line 1144
    return-void

    .line 1146
    .end local v15    # "knoxIntent":Landroid/content/Intent;
    :cond_1b
    if-eqz p3, :cond_1c

    .line 1147
    const-string/jumbo v3, "first_lock_type"

    const/4 v4, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSelectedBioLockTypeFromTwoStep:I

    .line 1148
    const-string/jumbo v3, "fromKnoxKeyguard"

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsEnforcedMultifactorNReset:Z

    .line 1151
    :cond_1c
    const/high16 v3, 0x10000

    move/from16 v0, p2

    if-lt v0, v3, :cond_1d

    const/high16 v3, 0x60000

    move/from16 v0, p2

    if-gt v0, v3, :cond_1d

    .line 1152
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->usingTwoFactor:Z

    .line 1153
    sput p2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->selectedTwoFactorType:I

    .line 1154
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    .line 1155
    return-void

    .line 1157
    :cond_1d
    const/16 v3, 0x271a

    move/from16 v0, p2

    if-ne v0, v3, :cond_21

    .line 1158
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->usingTwoFactor:Z

    .line 1159
    const/high16 v22, 0x60000

    .line 1160
    .local v22, "quality":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v3, :cond_20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v3

    const/high16 v4, 0x60000

    if-gt v3, v4, :cond_20

    .line 1161
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v3

    const/high16 v4, 0x40000

    if-lt v3, v4, :cond_20

    .line 1162
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v22

    .line 1166
    :cond_1e
    :goto_6
    sput p2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->selectedTwoFactorType:I

    .line 1167
    move/from16 p2, v22

    .line 1168
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v3, :cond_1f

    .line 1169
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    .line 1170
    :cond_1f
    return-void

    .line 1163
    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v3, :cond_1e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v3

    const/high16 v4, 0x20000

    if-gt v3, v4, :cond_1e

    .line 1164
    const/high16 v22, 0x40000

    goto :goto_6

    .line 1173
    .end local v22    # "quality":I
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_1

    .line 1174
    :cond_22
    const/16 v3, 0x2713

    move/from16 v0, p1

    if-ne v0, v3, :cond_26

    .line 1175
    const/4 v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_25

    .line 1177
    :try_start_1
    const-string/jumbo v3, "ChooseLockGenericFragment"

    const-string/jumbo v4, "set two factor : 1"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "knox_finger_print_plus"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const/4 v6, 0x1

    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1179
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSelectedBioLockTypeFromTwoStep:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_23

    .line 1180
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v5, 0x10

    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    .line 1181
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    .line 1189
    :goto_7
    sget-object v3, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/knox/SemPersonaManager;->setIsFingerAsSupplement(IZ)V

    .line 1191
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    .line 1192
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "KNOX lock type will be set as two-step"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    .line 1191
    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 1193
    const-string/jumbo v3, "ChooseLockGenericFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "two factor : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "knox_finger_print_plus"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1197
    :goto_8
    const-string/jumbo v3, "persona"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/samsung/android/knox/SemPersonaManager;

    .line 1198
    .local v20, "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/knox/SemPersonaManager;->setIsFingerAsSupplement(IZ)V

    .line 1207
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_1

    .line 1182
    .end local v20    # "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    :cond_23
    :try_start_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSelectedBioLockTypeFromTwoStep:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_24

    .line 1183
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    .line 1184
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v5, 0x10

    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_7

    .line 1194
    :catch_1
    move-exception v10

    .line 1195
    .restart local v10    # "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v3, "ChooseLockGenericFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SettingNotFoundException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v10}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1186
    .end local v10    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_24
    :try_start_3
    const-string/jumbo v3, "ChooseLockGenericFragment"

    const-string/jumbo v4, "error when getting bio locktype"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V
    :try_end_3
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_7

    .line 1201
    :cond_25
    :try_start_4
    const-string/jumbo v3, "ChooseLockGenericFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "two factor : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "knox_finger_print_plus"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1205
    :goto_9
    return-void

    .line 1202
    :catch_2
    move-exception v10

    .line 1203
    .restart local v10    # "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v3, "ChooseLockGenericFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SettingNotFoundException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v10}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1208
    .end local v10    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_26
    const/16 v3, 0x2719

    move/from16 v0, p1

    if-ne v0, v3, :cond_2b

    .line 1209
    const-string/jumbo v3, "switch_fingerprint"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/SwitchPreference;

    .line 1210
    .local v23, "switchPrefFinger":Landroid/preference/SwitchPreference;
    if-eqz v23, :cond_2

    .line 1211
    const/4 v3, -0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_2a

    .line 1212
    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1213
    const-string/jumbo v3, ""

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1215
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_29

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isReadyforFidoADcontainer()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1216
    const-string/jumbo v3, "switch_iris"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/SwitchPreference;

    .line 1217
    .local v24, "switchPrefIris":Landroid/preference/SwitchPreference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "switch_fingerprint"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const/4 v6, 0x1

    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1218
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsFingerView:Z

    .line 1219
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsIrisView:Z

    if-eqz v3, :cond_27

    .line 1220
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsIrisView:Z

    .line 1221
    :cond_27
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v3

    if-eqz v3, :cond_28

    if-eqz v24, :cond_28

    invoke-virtual/range {v24 .. v24}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 1222
    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1224
    :cond_28
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->requestFidoDeregistrationFingerprint()V

    .line 1233
    .end local v24    # "switchPrefIris":Landroid/preference/SwitchPreference;
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    .line 1234
    .local v21, "prefScreen":Landroid/preference/PreferenceScreen;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setLockTypeSummary(Landroid/preference/PreferenceScreen;)V

    goto/16 :goto_1

    .line 1227
    .end local v21    # "prefScreen":Landroid/preference/PreferenceScreen;
    :cond_29
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    .line 1228
    sget-object v3, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/knox/SemPersonaManager;->setIsFingerAsSupplement(IZ)V

    goto :goto_a

    .line 1231
    :cond_2a
    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_a

    .line 1237
    .end local v23    # "switchPrefFinger":Landroid/preference/SwitchPreference;
    :cond_2b
    const/16 v3, 0x271b

    move/from16 v0, p1

    if-ne v0, v3, :cond_32

    .line 1238
    const-string/jumbo v3, "ChooseLockGenericFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "In onActivityResult: FIDO is set, resultCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    const-string/jumbo v3, "switch_fingerprint"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/SwitchPreference;

    .line 1240
    .restart local v23    # "switchPrefFinger":Landroid/preference/SwitchPreference;
    const-string/jumbo v3, "switch_iris"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/SwitchPreference;

    .line 1241
    .restart local v24    # "switchPrefIris":Landroid/preference/SwitchPreference;
    const/4 v3, -0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_31

    .line 1242
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsFingerView:Z

    if-eqz v3, :cond_2e

    .line 1243
    const/4 v3, -0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_2d

    .line 1244
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "switch_fingerprint"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const/4 v6, 0x1

    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1245
    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1246
    const-string/jumbo v3, ""

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1248
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v3

    if-eqz v3, :cond_2c

    if-eqz v24, :cond_2c

    invoke-virtual/range {v24 .. v24}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 1249
    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1259
    :cond_2c
    :goto_b
    const-string/jumbo v3, "ChooseLockGenericFragment"

    const-string/jumbo v4, "In onActivityResult: Fingerprint is set as lock : "

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "persona"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/samsung/android/knox/SemPersonaManager;

    .line 1261
    .local v16, "mPm":Lcom/samsung/android/knox/SemPersonaManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/knox/SemPersonaManager;->setIsFingerAsSupplement(IZ)V

    .line 1262
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    .line 1263
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v5, 0x10

    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    .line 1264
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "knox_finger_print_plus"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const/4 v6, 0x2

    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1265
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->enterpriseOldPassword:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockBackupPassword(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1251
    .end local v16    # "mPm":Lcom/samsung/android/knox/SemPersonaManager;
    :cond_2d
    if-nez p2, :cond_2c

    .line 1253
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1254
    const-string/jumbo v4, "switch_fingerprint"

    .line 1255
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 1254
    const/4 v6, 0x0

    .line 1252
    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1256
    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1257
    const-string/jumbo v3, ""

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 1266
    :cond_2e
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsIrisView:Z

    if-eqz v3, :cond_2

    .line 1267
    const/4 v3, -0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_30

    .line 1268
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "switch_iris"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const/4 v6, 0x1

    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1269
    const/4 v3, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1270
    const-string/jumbo v3, ""

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1272
    invoke-virtual/range {v23 .. v23}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 1273
    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1283
    :cond_2f
    :goto_c
    const-string/jumbo v3, "ChooseLockGenericFragment"

    const-string/jumbo v4, "In onActivityResult: Iris is set as lock : "

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "persona"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/samsung/android/knox/SemPersonaManager;

    .line 1285
    .restart local v16    # "mPm":Lcom/samsung/android/knox/SemPersonaManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/knox/SemPersonaManager;->setIsFingerAsSupplement(IZ)V

    .line 1286
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v5, 0x10

    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    .line 1287
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    .line 1288
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "knox_finger_print_plus"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const/4 v6, 0x2

    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1289
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->enterpriseOldPassword:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockBackupPassword(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1275
    .end local v16    # "mPm":Lcom/samsung/android/knox/SemPersonaManager;
    :cond_30
    if-nez p2, :cond_2f

    .line 1277
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1278
    const-string/jumbo v4, "switch_iris"

    .line 1279
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 1278
    const/4 v6, 0x0

    .line 1276
    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1280
    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1281
    const-string/jumbo v3, ""

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 1292
    :cond_31
    const-string/jumbo v3, "ChooseLockGenericFragment"

    const-string/jumbo v4, "In onActivityResult: Fido is not set due to error"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    .line 1295
    .end local v23    # "switchPrefFinger":Landroid/preference/SwitchPreference;
    .end local v24    # "switchPrefIris":Landroid/preference/SwitchPreference;
    :cond_32
    const/16 v3, 0x271c

    move/from16 v0, p1

    if-ne v0, v3, :cond_36

    .line 1296
    const-string/jumbo v3, "ChooseLockGenericFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "In onActivityResult: FIDO is dereg, resultCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    const-string/jumbo v3, "switch_fingerprint"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/SwitchPreference;

    .line 1298
    .restart local v23    # "switchPrefFinger":Landroid/preference/SwitchPreference;
    const-string/jumbo v3, "switch_iris"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/SwitchPreference;

    .line 1299
    .restart local v24    # "switchPrefIris":Landroid/preference/SwitchPreference;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsDreg:Z

    if-eqz v3, :cond_34

    .line 1300
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsFingerView:Z

    if-eqz v3, :cond_33

    .line 1301
    const-string/jumbo v3, "ChooseLockGenericFragment"

    const-string/jumbo v4, "In onActivityResult: De-registration for fingerprint is completed"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1304
    const-string/jumbo v4, "switch_fingerprint"

    .line 1305
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 1304
    const/4 v6, 0x0

    .line 1302
    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1306
    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1307
    const-string/jumbo v3, ""

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1309
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    .line 1310
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Lcom/android/internal/widget/LockPatternUtils;->setEnterpriseIdentityLock(ZI)Z

    .line 1311
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsDreg:Z

    .line 1312
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsFingerView:Z

    goto/16 :goto_1

    .line 1313
    :cond_33
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsIrisView:Z

    if-eqz v3, :cond_2

    .line 1314
    const-string/jumbo v3, "ChooseLockGenericFragment"

    const-string/jumbo v4, "In onActivityResult: De-registration for iris is completed"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1317
    const-string/jumbo v4, "switch_iris"

    .line 1318
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 1317
    const/4 v6, 0x0

    .line 1315
    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1319
    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1320
    const-string/jumbo v3, ""

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1321
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v5, 0x10

    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    .line 1322
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Lcom/android/internal/widget/LockPatternUtils;->setEnterpriseIdentityLock(ZI)Z

    .line 1323
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsDreg:Z

    .line 1324
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsIrisView:Z

    goto/16 :goto_1

    .line 1327
    :cond_34
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsFingerView:Z

    if-eqz v3, :cond_35

    .line 1328
    const-string/jumbo v3, "ChooseLockGenericFragment"

    const-string/jumbo v4, "In onActivityResult: send intent for registration for Fingerprint"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 1330
    .local v12, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "com.samsung.knox.kss"

    const-string/jumbo v4, "com.samsung.knox.kss.ChooseLockFido"

    invoke-virtual {v12, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1331
    const-string/jumbo v3, "dereg"

    const/4 v4, 0x0

    invoke-virtual {v12, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1332
    const-string/jumbo v3, "fido_user_name"

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getEnterpriseID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1333
    const-string/jumbo v3, "fido_type"

    const-string/jumbo v4, "fido_type_fingerprint"

    invoke-virtual {v12, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1334
    const/16 v3, 0x271b

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 1335
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_35
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsIrisView:Z

    if-eqz v3, :cond_2

    .line 1336
    const-string/jumbo v3, "ChooseLockGenericFragment"

    const-string/jumbo v4, "In onActivityResult: send intent for registration for Iris"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 1338
    .restart local v12    # "intent":Landroid/content/Intent;
    const-string/jumbo v3, "com.samsung.knox.kss"

    const-string/jumbo v4, "com.samsung.knox.kss.ChooseLockFido"

    invoke-virtual {v12, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1339
    const-string/jumbo v3, "dereg"

    const/4 v4, 0x0

    invoke-virtual {v12, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1340
    const-string/jumbo v3, "fido_user_name"

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getEnterpriseID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1341
    const-string/jumbo v3, "fido_type"

    const-string/jumbo v4, "fido_type_iris"

    invoke-virtual {v12, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1342
    const/16 v3, 0x271b

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 1345
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v23    # "switchPrefFinger":Landroid/preference/SwitchPreference;
    .end local v24    # "switchPrefIris":Landroid/preference/SwitchPreference;
    :cond_36
    const/16 v3, 0x271a

    move/from16 v0, p1

    if-ne v0, v3, :cond_37

    .line 1346
    const-string/jumbo v3, "ChooseLockGenericFragment"

    const-string/jumbo v4, "REQUEST_ENTERPRISE_IDENTITY_SET : "

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_1

    .line 1350
    :cond_37
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_1

    .line 1354
    :cond_38
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setResult(I)V

    .line 1355
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_1

    .line 1067
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_2
        0x20000 -> :sswitch_0
        0x30000 -> :sswitch_0
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_1
        0x60000 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v13, 0x64

    const/4 v12, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 493
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 494
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v9, "fingerprint"

    invoke-virtual {v6, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 496
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    .line 497
    const-string/jumbo v6, "device_policy"

    invoke-virtual {p0, v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/admin/DevicePolicyManager;

    iput-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 498
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKeyStore:Landroid/security/KeyStore;

    .line 499
    new-instance v6, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v6, v9}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 500
    new-instance v6, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v6, v9}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 503
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 504
    const-string/jumbo v9, "confirm_credentials"

    .line 503
    invoke-virtual {v6, v9, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 505
    .local v1, "confirmCredentials":Z
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    instance-of v6, v6, Lcom/android/settings/ChooseLockGeneric$InternalActivity;

    if-eqz v6, :cond_0

    .line 506
    if-eqz v1, :cond_9

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 509
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v9, ":settings:hide_drawer"

    invoke-virtual {v6, v9, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHideDrawer:Z

    .line 511
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 512
    const-string/jumbo v9, "has_challenge"

    .line 511
    invoke-virtual {v6, v9, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    .line 513
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 514
    const-string/jumbo v9, "challenge"

    const-wide/16 v10, 0x0

    .line 513
    invoke-virtual {v6, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChallenge:J

    .line 515
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 516
    const-string/jumbo v9, "for_fingerprint"

    .line 515
    invoke-virtual {v6, v9, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    .line 517
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 518
    const-string/jumbo v9, "isFromKnoxSetDigitalLock"

    .line 517
    invoke-virtual {v6, v9, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFromKnoxSetDigitalLock:Z

    .line 519
    const-string/jumbo v6, "ChooseLockGenericFragment"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mFromKnoxSetDigitalLock:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFromKnoxSetDigitalLock:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 521
    const-string/jumbo v9, "for_iris"

    .line 520
    invoke-virtual {v6, v9, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    .line 522
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_a

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    .line 523
    const-string/jumbo v9, "for_cred_req_boot"

    .line 522
    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    :goto_1
    iput-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    .line 524
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 525
    const-string/jumbo v9, "forPrivateBackupKey"

    .line 524
    invoke-virtual {v6, v9, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForPrivateModeBackupKey:Z

    .line 526
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 527
    const-string/jumbo v9, "forAppLockBackupKey"

    .line 526
    invoke-virtual {v6, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mAppLockBackupKey:Ljava/lang/String;

    .line 528
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mAppLockBackupKey:Ljava/lang/String;

    if-eqz v6, :cond_b

    move v6, v8

    :goto_2
    iput-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForAppLockBackupKey:Z

    .line 529
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 530
    const-string/jumbo v9, "fromKnoxKeyguard"

    .line 529
    invoke-virtual {v6, v9, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsEnforcedMultifactorNReset:Z

    .line 532
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v9, "fromChinaSUW"

    invoke-virtual {v6, v9, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->fromChinaSUW:Z

    .line 534
    sget-object v6, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_7_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsKnoxVersion270Supported:Z

    .line 536
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->skipBiometricsAuthentication()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyBiometrics:Z

    .line 538
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWasSecureBefore:Z

    .line 540
    iget-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v6, :cond_1

    .line 542
    if-eqz v1, :cond_c

    move v6, v7

    :goto_3
    iput-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 543
    if-eqz v1, :cond_d

    move v6, v7

    :goto_4
    iput-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyBiometrics:Z

    .line 544
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v9, "password"

    invoke-virtual {v6, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    .line 545
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v9, "disable_systemkey"

    invoke-virtual {v6, v9, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDisableSystemKey:Z

    .line 547
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v9, 0x7f0b06ee

    invoke-virtual {v6, v9}, Landroid/app/Activity;->setTitle(I)V

    .line 550
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-lt v6, v13, :cond_1

    .line 551
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v6}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 558
    :cond_1
    :goto_5
    iget-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    if-eqz v6, :cond_2

    .line 559
    if-eqz v1, :cond_f

    move v6, v7

    :goto_6
    iput-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 560
    if-eqz v1, :cond_10

    move v6, v7

    :goto_7
    iput-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyBiometrics:Z

    .line 561
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-lt v6, v13, :cond_2

    .line 562
    iget-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsKnoxVersion270Supported:Z

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v6

    .line 561
    if-eqz v6, :cond_2

    .line 563
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v9, 0x7f0b076d

    invoke-virtual {v6, v9}, Landroid/app/Activity;->setTitle(I)V

    .line 567
    :cond_2
    if-eqz p1, :cond_3

    .line 568
    const-string/jumbo v6, "password_confirmed"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 569
    const-string/jumbo v6, "waiting_for_confirmation"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 570
    const-string/jumbo v6, "encrypt_requested_quality"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    .line 572
    const-string/jumbo v6, "encrypt_requested_disabled"

    .line 571
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    .line 575
    :cond_3
    iget-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForPrivateModeBackupKey:Z

    if-nez v6, :cond_4

    iget-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForAppLockBackupKey:Z

    if-eqz v6, :cond_5

    .line 576
    :cond_4
    iput-boolean v8, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 577
    iput-boolean v8, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyBiometrics:Z

    .line 578
    const v6, 0x7f0b0a0a

    invoke-virtual {p0, v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 579
    .local v4, "msg":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 583
    .end local v4    # "msg":Ljava/lang/CharSequence;
    :cond_5
    if-eqz p1, :cond_6

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-lt v6, v13, :cond_6

    .line 584
    const-string/jumbo v6, "KEY_USING_TWO_FACTOR"

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    sput-boolean v6, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->usingTwoFactor:Z

    .line 585
    const-string/jumbo v6, "KEY_SELECTED_TWO_FACTOR_TYPE"

    const/4 v9, -0x1

    invoke-virtual {p1, v6, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->selectedTwoFactorType:I

    .line 586
    const-string/jumbo v6, "KEY_SELECTED_KNOX_SCREEN"

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSelectedKnoxScreen:Z

    .line 588
    :cond_6
    const-string/jumbo v6, "persona"

    invoke-virtual {p0, v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/SemPersonaManager;

    sput-object v6, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    .line 593
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v6

    .line 594
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v9

    .line 596
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 592
    invoke-static {v6, v9, v12, v10}, Lcom/android/settings/Utils;->getSecureTargetUser(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 597
    .local v5, "targetUser":I
    const-string/jumbo v6, "android.app.action.SET_NEW_PARENT_PROFILE_PASSWORD"

    .line 598
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 597
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    .line 599
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowed(I)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 606
    sput v5, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 609
    :goto_8
    const-string/jumbo v6, "android.app.action.SET_NEW_PASSWORD"

    .line 610
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 609
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 611
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v6

    sget v9, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v6, v9}, Lcom/android/settings/Utils;->isManagedProfile(Landroid/os/UserManager;I)Z

    move-result v6

    .line 609
    if-eqz v6, :cond_7

    .line 612
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v9, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v6, v9}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v6

    .line 609
    if-eqz v6, :cond_7

    .line 613
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v9, 0x7f0b1183

    invoke-virtual {v6, v9}, Landroid/app/Activity;->setTitle(I)V

    .line 616
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    sget v9, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v6, v9}, Lcom/android/settings/ManagedLockPasswordProvider;->get(Landroid/content/Context;I)Lcom/android/settings/ManagedLockPasswordProvider;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mManagedPasswordProvider:Lcom/android/settings/ManagedLockPasswordProvider;

    .line 620
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_13

    iget-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz v6, :cond_13

    .line 621
    const-string/jumbo v6, "unlock_set_password"

    invoke-direct {p0, v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setUnlockMethod(Ljava/lang/String;)Z

    .line 659
    :cond_8
    :goto_9
    new-instance v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 492
    return-void

    .end local v5    # "targetUser":I
    :cond_9
    move v6, v8

    .line 506
    goto/16 :goto_0

    :cond_a
    move v6, v7

    .line 522
    goto/16 :goto_1

    :cond_b
    move v6, v7

    .line 528
    goto/16 :goto_2

    :cond_c
    move v6, v8

    .line 542
    goto/16 :goto_3

    :cond_d
    move v6, v8

    .line 543
    goto/16 :goto_4

    .line 552
    :cond_e
    iput-object v12, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    goto/16 :goto_5

    :cond_f
    move v6, v8

    .line 559
    goto/16 :goto_6

    :cond_10
    move v6, v8

    .line 560
    goto/16 :goto_7

    .line 602
    .restart local v5    # "targetUser":I
    :cond_11
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 603
    .local v0, "arguments":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v0, :cond_12

    .end local v0    # "arguments":Landroid/os/Bundle;
    :goto_a
    invoke-static {v6, v0}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v6

    sput v6, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    goto/16 :goto_8

    .line 604
    .restart local v0    # "arguments":Landroid/os/Bundle;
    :cond_12
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_a

    .line 622
    .end local v0    # "arguments":Landroid/os/Bundle;
    :cond_13
    iget-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz v6, :cond_16

    .line 623
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-lt v6, v13, :cond_14

    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isSupportBiometrics()Z

    move-result v6

    if-eqz v6, :cond_14

    iget-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSelectedKnoxScreen:Z

    if-eqz v6, :cond_15

    .line 626
    :cond_14
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    .line 628
    :goto_b
    iget-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    if-eqz v6, :cond_8

    .line 629
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 630
    sget v8, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 629
    invoke-virtual {v6, v8}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v6

    invoke-direct {p0, v6, v7}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto :goto_9

    .line 623
    :cond_15
    iget-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-nez v6, :cond_14

    iget-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    if-nez v6, :cond_14

    .line 624
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateBiometricsPreferences()V

    goto :goto_b

    .line 632
    :cond_16
    iget-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsEnforcedMultifactorNReset:Z

    if-eqz v6, :cond_17

    .line 633
    iput-boolean v8, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 634
    const-string/jumbo v6, "unlock_set_two_factor"

    invoke-direct {p0, v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setUnlockMethod(Ljava/lang/String;)Z

    goto :goto_9

    .line 635
    :cond_17
    iget-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    if-nez v6, :cond_8

    .line 636
    iget-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFromKnoxSetDigitalLock:Z

    if-eqz v6, :cond_18

    .line 637
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v9, "isFromKnoxSetDigitalLock"

    invoke-virtual {v6, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 639
    :cond_18
    const-string/jumbo v6, "ChooseLockGenericFragment"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mFromKnoxSetDigitalLock1:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFromKnoxSetDigitalLock:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    new-instance v2, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v2, v6, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 643
    .local v2, "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v6

    sget v9, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 642
    invoke-static {v6, v9}, Lcom/android/settings/Utils;->isManagedProfile(Landroid/os/UserManager;I)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 644
    iget-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v9, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v6, v9}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_19

    move v3, v7

    .line 646
    .local v3, "managedProfileWithUnifiedLock":Z
    :goto_c
    if-nez v3, :cond_1b

    .line 648
    const v6, 0x7f0b1188

    invoke-virtual {p0, v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 647
    invoke-virtual {v2, v13, v6, v8, v7}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 652
    iput-boolean v8, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    goto/16 :goto_9

    .end local v3    # "managedProfileWithUnifiedLock":Z
    :cond_19
    move v3, v8

    .line 644
    goto :goto_c

    :cond_1a
    move v3, v7

    .line 642
    goto :goto_c

    .line 649
    .restart local v3    # "managedProfileWithUnifiedLock":Z
    :cond_1b
    iput-boolean v8, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 650
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    goto/16 :goto_9
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 3171
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroy()V

    .line 3173
    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDisableSystemKey:Z

    if-eqz v0, :cond_0

    .line 3174
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->DisableSystemKey(Z)V

    .line 3170
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 769
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 772
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "ScreenLockType"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 767
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    const/16 v9, 0x10

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 778
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 780
    .local v0, "isChecked":Z
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 782
    .local v1, "key":Ljava/lang/String;
    const-string/jumbo v4, "switch_fingerprint"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 783
    const-string/jumbo v4, "switch_fingerprint"

    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    .line 784
    .local v3, "switchPref":Landroid/preference/SwitchPreference;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/16 v5, 0x64

    if-lt v4, v5, :cond_4

    .line 785
    if-eqz v0, :cond_1

    .line 786
    const-string/jumbo v4, "lock_screen_fingerprint"

    invoke-direct {p0, v4, v8, v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startFingerprintLockSettings(Ljava/lang/String;[BZ)V

    .line 844
    .end local v3    # "switchPref":Landroid/preference/SwitchPreference;
    :cond_0
    :goto_0
    return v7

    .line 788
    .restart local v3    # "switchPref":Landroid/preference/SwitchPreference;
    :cond_1
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 789
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setFingerprintScreenLockDisable()V

    .line 791
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isReadyforFidoADcontainer()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 792
    iput-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsDreg:Z

    .line 793
    iput-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsFingerView:Z

    .line 794
    iget-boolean v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsIrisView:Z

    if-eqz v4, :cond_2

    .line 795
    iput-boolean v7, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsIrisView:Z

    .line 796
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->requestFidoDeregistrationFingerprint()V

    .line 799
    :cond_3
    sget-object v4, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v5, v7}, Lcom/samsung/android/knox/SemPersonaManager;->setIsFingerAsSupplement(IZ)V

    .line 800
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->disableTwoFactorIfEnabled()V

    .line 802
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 803
    .local v2, "prefScreen":Landroid/preference/PreferenceScreen;
    invoke-direct {p0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setLockTypeSummary(Landroid/preference/PreferenceScreen;)V

    goto :goto_0

    .line 806
    .end local v2    # "prefScreen":Landroid/preference/PreferenceScreen;
    :cond_4
    if-eqz v0, :cond_7

    .line 807
    iget-object v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    sget v5, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v4, v5}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 808
    :cond_5
    iget-object v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v5, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 811
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 812
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setFingerprintScreenLockEnable()V

    goto :goto_0

    .line 809
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->showFingerprintPPPDialog()V

    goto :goto_0

    .line 815
    :cond_7
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 816
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setFingerprintScreenLockDisable()V

    goto :goto_0

    .line 819
    .end local v3    # "switchPref":Landroid/preference/SwitchPreference;
    :cond_8
    const-string/jumbo v4, "switch_iris"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 820
    const-string/jumbo v4, "switch_iris"

    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    .line 821
    .restart local v3    # "switchPref":Landroid/preference/SwitchPreference;
    if-eqz v0, :cond_b

    .line 822
    iget-object v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v4}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 823
    :cond_9
    iget-object v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 826
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 827
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v4, v5, v9}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    goto/16 :goto_0

    .line 824
    :cond_a
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->showIrisPPPDialog()V

    goto/16 :goto_0

    .line 830
    :cond_b
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 832
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isReadyforFidoADcontainer()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 833
    iput-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsDreg:Z

    .line 834
    iput-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsIrisView:Z

    .line 835
    iget-boolean v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsFingerView:Z

    if-eqz v4, :cond_c

    .line 836
    iput-boolean v7, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsFingerView:Z

    .line 837
    :cond_c
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->requestFidoDeregistrationIris()V

    .line 840
    :cond_d
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v4, v5, v9}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x1

    .line 899
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 901
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isResumed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 902
    return v3

    .line 905
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isUnlockMethodSecure(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 906
    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    sget v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->hasEnrolledIrises()Z

    move-result v1

    .line 905
    if-eqz v1, :cond_2

    .line 909
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->showFactoryResetProtectionWarningDialog(Ljava/lang/String;)V

    .line 910
    return v3

    .line 912
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isUnlockMethodSecure(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 916
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setUnlockMethod(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 912
    :cond_4
    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 913
    invoke-direct {p0, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->removeEncryptionPopup(Ljava/lang/String;)V

    .line 914
    return v3
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 712
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 713
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v4

    .line 714
    .local v4, "isShopDemo":Z
    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v3

    .line 716
    .local v3, "isLDUModel":Z
    if-nez v4, :cond_0

    if-eqz v3, :cond_1

    .line 717
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 718
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    .line 721
    :cond_1
    iget-boolean v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 722
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0b06e3

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 726
    :cond_2
    iget-boolean v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz v5, :cond_3

    .line 727
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "turn-on"

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 728
    .local v1, "isBlockTurnOn":Z
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "Block"

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 729
    .local v0, "isBlock":Z
    if-eqz v1, :cond_8

    .line 730
    const v5, 0x9100

    invoke-virtual {p0, v5, v8}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    .line 737
    .end local v0    # "isBlock":Z
    .end local v1    # "isBlockTurnOn":Z
    :cond_3
    :goto_0
    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v5, :cond_4

    .line 738
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 740
    :cond_4
    const-string/jumbo v5, "ChooseLockGenericFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "On resuming generic activity"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getCacChosen()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getCacChosen()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 743
    iget-boolean v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz v5, :cond_5

    .line 744
    const/high16 v5, 0x70000

    invoke-virtual {p0, v5, v8}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    .line 748
    :cond_5
    const/4 v2, 0x0

    .line 749
    .local v2, "isFromSearch":Z
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 750
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "fromSearch"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 751
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "fromSearch"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 757
    .end local v2    # "isFromSearch":Z
    :cond_6
    if-eqz v2, :cond_7

    iget-boolean v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    if-eqz v5, :cond_9

    .line 763
    :cond_7
    :goto_1
    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v8, "ScreenLockType"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 711
    return-void

    .line 731
    .restart local v0    # "isBlock":Z
    .restart local v1    # "isBlockTurnOn":Z
    :cond_8
    if-eqz v0, :cond_3

    .line 732
    const/high16 v5, 0x10000

    invoke-virtual {p0, v5, v8}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 757
    .end local v0    # "isBlock":Z
    .end local v1    # "isBlockTurnOn":Z
    :cond_9
    iget-boolean v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isLaunched:Z

    if-nez v5, :cond_7

    .line 759
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isLaunched:Z

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1381
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1383
    const-string/jumbo v0, "password_confirmed"

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1384
    const-string/jumbo v0, "waiting_for_confirmation"

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1385
    const-string/jumbo v0, "encrypt_requested_quality"

    iget v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1386
    const-string/jumbo v0, "encrypt_requested_disabled"

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1388
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 1389
    const-string/jumbo v0, "KEY_SELECTED_KNOX_SCREEN"

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSelectedKnoxScreen:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1390
    sget-boolean v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->usingTwoFactor:Z

    if-eqz v0, :cond_0

    .line 1391
    const-string/jumbo v0, "KEY_USING_TWO_FACTOR"

    sget-boolean v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->usingTwoFactor:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1392
    const-string/jumbo v0, "KEY_SELECTED_TWO_FACTOR_TYPE"

    sget v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->selectedTwoFactorType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1393
    const-string/jumbo v0, "KEY_SELECTED_KNOX_SCREEN"

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mSelectedKnoxScreen:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1380
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 670
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 671
    iget-boolean v9, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-nez v9, :cond_0

    iget-boolean v9, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    if-eqz v9, :cond_3

    .line 672
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 673
    .local v7, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getListView()Landroid/widget/ListView;

    move-result-object v8

    .line 675
    .local v8, "listView":Landroid/widget/ListView;
    const v9, 0x7f040066

    .line 674
    invoke-virtual {v7, v9, v8, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 677
    .local v1, "fingerprintHeader":Landroid/view/View;
    const v9, 0x7f1101b8

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 678
    .local v2, "guideImg":Landroid/widget/ImageView;
    const v9, 0x7f1101bc

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 680
    .local v3, "guide_desc":Landroid/widget/TextView;
    const v9, 0x7f1101ba

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 681
    .local v4, "guide_desc_1":Landroid/widget/TextView;
    const v9, 0x7f1101bb

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 683
    .local v5, "guide_desc_2":Landroid/widget/TextView;
    iget-boolean v9, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForIris:Z

    if-eqz v9, :cond_1

    .line 684
    const v9, 0x7f020340

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 685
    const v9, 0x7f0b0780

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(I)V

    .line 686
    const v9, 0x7f0b0781

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(I)V

    .line 687
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 688
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f0b076d

    invoke-virtual {v9, v10}, Landroid/app/Activity;->setTitle(I)V

    .line 692
    :cond_1
    invoke-virtual {v8, v1, v11, v12}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 669
    .end local v1    # "fingerprintHeader":Landroid/view/View;
    .end local v2    # "guideImg":Landroid/widget/ImageView;
    .end local v3    # "guide_desc":Landroid/widget/TextView;
    .end local v4    # "guide_desc_1":Landroid/widget/TextView;
    .end local v5    # "guide_desc_2":Landroid/widget/TextView;
    .end local v7    # "inflater":Landroid/view/LayoutInflater;
    .end local v8    # "listView":Landroid/widget/ListView;
    :cond_2
    :goto_0
    return-void

    .line 693
    :cond_3
    iget-boolean v9, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mForAppLockBackupKey:Z

    if-eqz v9, :cond_2

    .line 694
    const-string/jumbo v0, "applock_locktype_iris"

    .line 695
    .local v0, "KEY_LOCK_TYPE_IRIS":Ljava/lang/String;
    new-instance v6, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v6, v9}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 696
    .local v6, "header":Landroid/preference/Preference;
    const-string/jumbo v9, "applock_locktype_iris"

    iget-object v10, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mAppLockBackupKey:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 697
    const v9, 0x7f040064

    invoke-virtual {v6, v9}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 701
    :goto_1
    iget-object v9, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mAppLockHeaderPreference:Landroid/preference/Preference;

    if-eqz v9, :cond_4

    .line 702
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mAppLockHeaderPreference:Landroid/preference/Preference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 704
    :cond_4
    const/4 v9, -0x1

    invoke-virtual {v6, v9}, Landroid/preference/Preference;->setOrder(I)V

    .line 705
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 706
    iput-object v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mAppLockHeaderPreference:Landroid/preference/Preference;

    goto :goto_0

    .line 699
    :cond_5
    const v9, 0x7f040065

    invoke-virtual {v6, v9}, Landroid/preference/Preference;->setLayoutResource(I)V

    goto :goto_1
.end method

.method updateUnlockMethodAndFinish(IZ)V
    .locals 9
    .param p1, "quality"    # I
    .param p2, "disabled"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 2559
    iget-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-nez v3, :cond_0

    .line 2560
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Tried to update password without confirming it"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2564
    :cond_0
    iget-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyBiometrics:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsEnforcedMultifactorNReset:Z

    if-eqz v3, :cond_2

    .line 2568
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQuality(I)I

    move-result p1

    .line 2570
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2573
    .local v0, "context":Landroid/content/Context;
    iput v7, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    .line 2575
    invoke-direct {p0, p1, p2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getIntentForUnlockMethod(IZ)Landroid/content/Intent;

    move-result-object v2

    .line 2576
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_4

    .line 2577
    iget v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    if-ne v3, v7, :cond_3

    .line 2578
    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    .line 2582
    :goto_0
    return-void

    .line 2565
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    return-void

    .line 2580
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_3
    iget v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockRequestCode:I

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 2585
    :cond_4
    if-nez p1, :cond_8

    .line 2587
    if-eqz p2, :cond_6

    .line 2588
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "com.android.settings"

    const-string/jumbo v5, "LOSC"

    const-string/jumbo v6, "None"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/Utils;->insertStatusLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2593
    :goto_1
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v4, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V

    .line 2594
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v3}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    sget v4, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(I)V

    .line 2597
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mService:Landroid/net/IConnectivityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    .line 2598
    const-string/jumbo v3, "ChooseLockGenericFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateUnlockMethodAndFinish update VPN state - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2600
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget v3, v3, Lcom/android/internal/net/LegacyVpnInfo;->state:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_7

    .line 2602
    :try_start_1
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mService:Landroid/net/IConnectivityManager;

    const-string/jumbo v4, "[Legacy VPN]"

    const-string/jumbo v5, "[Legacy VPN]"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-interface {v3, v4, v5, v6}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2617
    :cond_5
    :goto_2
    invoke-static {}, Lcom/samsung/android/settings/UCMHelpUtils;->resetUcmKeyguardSettings()Z

    .line 2620
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v3}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    sget v4, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v3, p2, v4}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    .line 2622
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "lock_to_app_exit_locked"

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2623
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "interaction_control_exit_locked"

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2624
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/Activity;->setResult(I)V

    .line 2625
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    .line 2557
    :goto_3
    return-void

    .line 2590
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "com.android.settings"

    const-string/jumbo v5, "LOSC"

    const-string/jumbo v6, "Swipe"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/Utils;->insertStatusLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2608
    :cond_7
    :try_start_2
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v3}, Landroid/security/KeyStore;->isEmptyForSystemCredential()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2609
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v3}, Landroid/net/IConnectivityManager;->updateLockdownVpn()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 2612
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    goto :goto_2

    .line 2626
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_8
    const v3, 0x61000

    if-ne p1, v3, :cond_9

    .line 2627
    return-void

    .line 2630
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_3

    .line 2603
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    goto :goto_2
.end method

.method public wManagerChanged()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2163
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wmanager_connected"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 2164
    .local v2, "state":I
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "db_smartlock_supported"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2166
    .local v0, "isSmartLockSupport":I
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 2168
    .local v1, "root":Landroid/preference/PreferenceScreen;
    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    if-nez v2, :cond_1

    .line 2169
    :cond_0
    const-string/jumbo v3, "unlock_set_smart"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2170
    const-string/jumbo v3, "unlock_set_smart"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 2162
    :cond_1
    return-void
.end method
