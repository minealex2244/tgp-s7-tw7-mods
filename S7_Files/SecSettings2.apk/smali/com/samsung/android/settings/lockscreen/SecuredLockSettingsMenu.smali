.class public Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "SecuredLockSettingsMenu.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;,
        Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$SecuredLockIndexProvider;
    }
.end annotation


# static fields
.field private static final MY_USER_ID:I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final TRUST_AGENT_INTENT:Landroid/content/Intent;

.field private static mSmartLockString:Ljava/lang/String;


# instance fields
.field private isDeviceLockTime:Z

.field private mAutoFactoryReset:Landroid/preference/SwitchPreference;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDeviceLockDialog:Landroid/app/AlertDialog;

.field private mDirectionLockBeep:Landroid/preference/SwitchPreference;

.field private mDirectionLockVibration:Landroid/preference/SwitchPreference;

.field private mDirectionLockVisible:Landroid/preference/SwitchPreference;

.field private mDirectionLockVoice:Landroid/preference/SwitchPreference;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mLockAfter:Lcom/samsung/android/settings/SettingsListPreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLocktype:I

.field private mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

.field private mResetCount:I

.field private mTrustAgentClickIntent:Landroid/content/Intent;

.field private mUserManager:Landroid/os/UserManager;

.field private mVisiblePattern:Landroid/preference/SwitchPreference;

.field private smartlock:Landroid/preference/Preference;


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/SettingsListPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/samsung/android/settings/SettingsListPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mVisiblePattern:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->smartlock:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "dpm"    # Landroid/app/admin/DevicePolicyManager;

    .prologue
    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getActiveTrustAgents(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 87
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.service.trust.TrustAgentService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    .line 134
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    .line 776
    new-instance v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$SecuredLockIndexProvider;

    invoke-direct {v0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$SecuredLockIndexProvider;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 83
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDeviceLockDialog:Landroid/app/AlertDialog;

    .line 130
    const/16 v0, 0xf

    iput v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mResetCount:I

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLocktype:I

    .line 955
    new-instance v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;-><init>(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 83
    return-void
.end method

.method private InitValue()V
    .locals 14

    .prologue
    .line 244
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    if-eqz v10, :cond_8

    const/4 v6, 0x1

    .line 246
    .local v6, "isSecondaryUser":Z
    :goto_0
    const-string/jumbo v10, "visiblepattern"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreference;

    iput-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mVisiblePattern:Landroid/preference/SwitchPreference;

    .line 247
    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mVisiblePattern:Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_1

    .line 249
    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternDisabledByMDM()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 250
    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mVisiblePattern:Landroid/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 253
    :cond_0
    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mVisiblePattern:Landroid/preference/SwitchPreference;

    iget-object v11, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 254
    sget v12, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    .line 253
    invoke-virtual {v11, v12}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 255
    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mVisiblePattern:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 258
    :cond_1
    const-string/jumbo v10, "auto_factory_reset"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreference;

    iput-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroid/preference/SwitchPreference;

    .line 259
    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_3

    .line 260
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 261
    const-string/jumbo v11, "auto_swipe_main_user"

    const/4 v12, 0x0

    .line 260
    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_9

    .line 261
    const/4 v9, 0x1

    .line 262
    .local v9, "value":Z
    :goto_1
    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 263
    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 264
    const-string/jumbo v2, ""

    .line 265
    .local v2, "auto_reset_summary":Ljava/lang/String;
    const v10, 0x7f0b0b75

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    iget v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mResetCount:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 266
    if-eqz v6, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 267
    const v10, 0x7f0b0b76

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    iget v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mResetCount:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 269
    :cond_2
    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, v2}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v10

    if-lez v10, :cond_a

    .line 271
    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroid/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 279
    .end local v2    # "auto_reset_summary":Ljava/lang/String;
    .end local v9    # "value":Z
    :cond_3
    :goto_2
    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v11, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    invoke-virtual {v10, v11}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    .line 281
    .local v3, "hasSecurity":Z
    if-eqz v3, :cond_7

    .line 282
    const-string/jumbo v10, "lock_after_timeout"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/settings/SettingsListPreference;

    iput-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/samsung/android/settings/SettingsListPreference;

    .line 283
    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/samsung/android/settings/SettingsListPreference;

    if-eqz v10, :cond_6

    .line 285
    iget-boolean v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->isDeviceLockTime:Z

    if-eqz v10, :cond_5

    .line 286
    const-string/jumbo v10, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string/jumbo v10, "AIO"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 287
    :cond_4
    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/samsung/android/settings/SettingsListPreference;

    const v11, 0x7f0b086c

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/SettingsListPreference;->setTitle(I)V

    .line 288
    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/samsung/android/settings/SettingsListPreference;

    const v11, 0x7f0b086c

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/SettingsListPreference;->setDialogTitle(I)V

    .line 293
    :goto_3
    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/samsung/android/settings/SettingsListPreference;

    const v11, 0x7f0c0031

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/SettingsListPreference;->setEntries(I)V

    .line 294
    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/samsung/android/settings/SettingsListPreference;

    const v11, 0x7f0c0032

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/SettingsListPreference;->setEntryValues(I)V

    .line 297
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->setupLockAfterPreference()V

    .line 298
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->updateLockAfterPreferenceSummary()V

    .line 301
    :cond_6
    const-string/jumbo v10, "power_button_instantly_locks"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreference;

    iput-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    .line 302
    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_7

    .line 303
    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    iget-object v11, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 304
    sget v12, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    .line 303
    invoke-virtual {v11, v12}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks(I)Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 305
    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 310
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-static {v10, v11, v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getActiveTrustAgents(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;

    move-result-object v1

    .line 311
    .local v1, "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;>;"
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    .line 312
    .local v7, "root":Landroid/preference/PreferenceScreen;
    const/4 v8, 0x0

    .line 313
    .local v8, "smartlockForDisable":Landroid/preference/Preference;
    if-nez v7, :cond_d

    .line 314
    return-void

    .line 244
    .end local v1    # "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;>;"
    .end local v3    # "hasSecurity":Z
    .end local v6    # "isSecondaryUser":Z
    .end local v7    # "root":Landroid/preference/PreferenceScreen;
    .end local v8    # "smartlockForDisable":Landroid/preference/Preference;
    :cond_8
    const/4 v6, 0x0

    .restart local v6    # "isSecondaryUser":Z
    goto/16 :goto_0

    .line 261
    :cond_9
    const/4 v9, 0x0

    .restart local v9    # "value":Z
    goto/16 :goto_1

    .line 272
    .restart local v2    # "auto_reset_summary":Ljava/lang/String;
    :cond_a
    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v10}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v10

    if-nez v10, :cond_b

    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v10}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 273
    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroid/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_2

    .line 275
    :cond_b
    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroid/preference/SwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_2

    .line 290
    .end local v2    # "auto_reset_summary":Ljava/lang/String;
    .end local v9    # "value":Z
    .restart local v3    # "hasSecurity":Z
    :cond_c
    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/samsung/android/settings/SettingsListPreference;

    const v11, 0x7f0b1133

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/SettingsListPreference;->setTitle(I)V

    .line 291
    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/samsung/android/settings/SettingsListPreference;

    const v11, 0x7f0b1133

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/SettingsListPreference;->setDialogTitle(I)V

    goto/16 :goto_3

    .line 315
    .restart local v1    # "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;>;"
    .restart local v7    # "root":Landroid/preference/PreferenceScreen;
    .restart local v8    # "smartlockForDisable":Landroid/preference/Preference;
    :cond_d
    const/4 v4, 0x0

    .end local v8    # "smartlockForDisable":Landroid/preference/Preference;
    .local v4, "i":I
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_f

    .line 316
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;

    .line 320
    .local v0, "agent":Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;
    new-instance v10, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->smartlock:Landroid/preference/Preference;

    .line 322
    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->smartlock:Landroid/preference/Preference;

    const-string/jumbo v11, "trust_agent"

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 323
    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->smartlock:Landroid/preference/Preference;

    iget-object v11, v0, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->smartlock:Landroid/preference/Preference;

    iget-object v11, v0, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 326
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 327
    .local v5, "intent":Landroid/content/Intent;
    iget-object v10, v0, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 328
    const-string/jumbo v10, "android.intent.action.MAIN"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->smartlock:Landroid/preference/Preference;

    invoke-virtual {v10, v5}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 331
    invoke-static {}, Lcom/android/settings/Utils;->isLockscreenMenuTreeForAOD()Z

    move-result v10

    if-nez v10, :cond_e

    .line 332
    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->smartlock:Landroid/preference/Preference;

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 334
    :cond_e
    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->smartlock:Landroid/preference/Preference;

    .line 315
    .local v8, "smartlockForDisable":Landroid/preference/Preference;
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 339
    .end local v0    # "agent":Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v8    # "smartlockForDisable":Landroid/preference/Preference;
    :cond_f
    const-string/jumbo v10, "lock_screen_visible"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreference;

    iput-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVisible:Landroid/preference/SwitchPreference;

    .line 340
    const-string/jumbo v10, "lock_screen_vibration"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreference;

    iput-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVibration:Landroid/preference/SwitchPreference;

    .line 341
    const-string/jumbo v10, "lock_screen_voice"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreference;

    iput-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVoice:Landroid/preference/SwitchPreference;

    .line 342
    const-string/jumbo v10, "lock_screen_beep"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreference;

    iput-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockBeep:Landroid/preference/SwitchPreference;

    .line 343
    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v11, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    invoke-virtual {v10, v11}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v10

    const/16 v11, 0x1000

    if-eq v10, v11, :cond_10

    .line 344
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockBeep:Landroid/preference/SwitchPreference;

    .line 345
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVibration:Landroid/preference/SwitchPreference;

    .line 346
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVisible:Landroid/preference/SwitchPreference;

    .line 347
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVoice:Landroid/preference/SwitchPreference;

    .line 349
    :cond_10
    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVisible:Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_11

    .line 350
    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVisible:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 351
    iget-object v11, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVisible:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v12, "universal_lock_visible"

    const/4 v13, 0x0

    invoke-static {v10, v12, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v12, 0x1

    if-ne v10, v12, :cond_1b

    const/4 v10, 0x1

    :goto_5
    invoke-virtual {v11, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 353
    :cond_11
    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVibration:Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_12

    .line 354
    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVibration:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 355
    iget-object v11, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVibration:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v12, "universal_lock_vibration"

    const/4 v13, 0x1

    invoke-static {v10, v12, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v12, 0x1

    if-ne v10, v12, :cond_1c

    const/4 v10, 0x1

    :goto_6
    invoke-virtual {v11, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 357
    :cond_12
    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockBeep:Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_13

    .line 358
    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockBeep:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 359
    iget-object v11, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockBeep:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v12, "universal_lock_beep"

    const/4 v13, 0x1

    invoke-static {v10, v12, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v12, 0x1

    if-ne v10, v12, :cond_1d

    const/4 v10, 0x1

    :goto_7
    invoke-virtual {v11, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 361
    :cond_13
    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVoice:Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_14

    .line 362
    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVoice:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 363
    iget-object v11, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVoice:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v12, "universal_lock_voice"

    const/4 v13, 0x0

    invoke-static {v10, v12, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v12, 0x1

    if-ne v10, v12, :cond_1e

    const/4 v10, 0x1

    :goto_8
    invoke-virtual {v11, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 368
    :cond_14
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_19

    .line 369
    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/samsung/android/settings/SettingsListPreference;

    if-eqz v10, :cond_15

    .line 370
    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/samsung/android/settings/SettingsListPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/SettingsListPreference;->setEnabled(Z)V

    .line 372
    :cond_15
    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mVisiblePattern:Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_16

    .line 373
    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mVisiblePattern:Landroid/preference/SwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 374
    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v11, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    const/4 v12, 0x1

    invoke-virtual {v10, v12, v11}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    .line 375
    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mVisiblePattern:Landroid/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 378
    :cond_16
    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_17

    .line 379
    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 380
    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 382
    :cond_17
    if-eqz v8, :cond_18

    .line 383
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 385
    :cond_18
    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_19

    .line 386
    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroid/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 390
    :cond_19
    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/samsung/android/settings/SettingsListPreference;

    if-eqz v10, :cond_1a

    .line 391
    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/samsung/android/settings/SettingsListPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/SettingsListPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 243
    :cond_1a
    return-void

    .line 351
    :cond_1b
    const/4 v10, 0x0

    goto/16 :goto_5

    .line 355
    :cond_1c
    const/4 v10, 0x0

    goto/16 :goto_6

    .line 359
    :cond_1d
    const/4 v10, 0x0

    goto :goto_7

    .line 363
    :cond_1e
    const/4 v10, 0x0

    goto :goto_8
.end method

.method private RemoveMenu()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVibration:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->isVibrationSupport()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 224
    :cond_0
    :goto_0
    iget v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLocktype:I

    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_1

    .line 225
    iget v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLocktype:I

    const/high16 v1, 0x90000

    if-eq v0, v1, :cond_1

    .line 226
    iget v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLocktype:I

    const v1, 0x9100

    if-eq v0, v1, :cond_1

    .line 227
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mVisiblePattern:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 228
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mVisiblePattern:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->isDeviceLockTime:Z

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPowerKey()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 216
    :cond_2
    :goto_1
    return-void

    .line 220
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVibration:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 232
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private disableUnusableTimeouts(J)V
    .locals 15
    .param p1, "maxTimeout"    # J

    .prologue
    .line 653
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/samsung/android/settings/SettingsListPreference;

    invoke-virtual {v12}, Lcom/samsung/android/settings/SettingsListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 654
    .local v2, "entries":[Ljava/lang/CharSequence;
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/samsung/android/settings/SettingsListPreference;

    invoke-virtual {v12}, Lcom/samsung/android/settings/SettingsListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v11

    .line 655
    .local v11, "values":[Ljava/lang/CharSequence;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 656
    .local v6, "revisedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 658
    .local v7, "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "screen_off_timeout"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x0

    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    int-to-long v0, v12

    .line 661
    .local v0, "displayTimeout":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v12, v11

    if-ge v3, v12, :cond_1

    .line 662
    aget-object v12, v11, v3

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 664
    .local v8, "timeout":J
    cmp-long v12, v8, p1

    if-gtz v12, :cond_0

    .line 665
    aget-object v12, v2, v3

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 666
    aget-object v12, v11, v3

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 671
    .end local v8    # "timeout":J
    :cond_1
    const-string/jumbo v12, "SecuredLockSettingsMenu"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "revisedValues.size() : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sub-long v4, p1, v12

    .line 673
    .local v4, "last_timeout":J
    const-string/jumbo v12, "SecuredLockSettingsMenu"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "last_timeout : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-lez v12, :cond_2

    array-length v12, v11

    add-int/lit8 v12, v12, -0x1

    aget-object v12, v11, v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v12, p1, v12

    if-gez v12, :cond_2

    .line 676
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    invoke-direct/range {p0 .. p2}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    const v13, 0x7f0b0870

    invoke-virtual {p0, v13, v12}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    :cond_2
    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/samsung/android/settings/SettingsListPreference;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/CharSequence;

    invoke-virtual {v13, v12}, Lcom/samsung/android/settings/SettingsListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 681
    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/samsung/android/settings/SettingsListPreference;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/CharSequence;

    invoke-virtual {v13, v12}, Lcom/samsung/android/settings/SettingsListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 682
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/samsung/android/settings/SettingsListPreference;

    invoke-virtual {v12}, Lcom/samsung/android/settings/SettingsListPreference;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 684
    .local v10, "userPreference":I
    int-to-long v12, v10

    cmp-long v12, v12, p1

    if-gtz v12, :cond_3

    .line 685
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/samsung/android/settings/SettingsListPreference;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/SettingsListPreference;->setValue(Ljava/lang/String;)V

    .line 694
    :goto_1
    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/samsung/android/settings/SettingsListPreference;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_4

    const/4 v12, 0x1

    :goto_2
    invoke-virtual {v13, v12}, Lcom/samsung/android/settings/SettingsListPreference;->setEnabled(Z)V

    .line 652
    return-void

    .line 687
    :cond_3
    const-string/jumbo v12, "SecuredLockSettingsMenu"

    const-string/jumbo v13, "mLockAfter.setValueIndex(revisedValues.size()-1)"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/samsung/android/settings/SettingsListPreference;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/SettingsListPreference;->setValueIndex(I)V

    goto :goto_1

    .line 694
    :cond_4
    const/4 v12, 0x0

    goto :goto_2
.end method

.method private static getActiveTrustAgents(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "dpm"    # Landroid/app/admin/DevicePolicyManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Landroid/app/admin/DevicePolicyManager;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 395
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 396
    .local v5, "pm":Landroid/content/pm/PackageManager;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 398
    .local v9, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;>;"
    sget-object v11, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    const/16 v12, 0x80

    invoke-virtual {v5, v11, v12}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 399
    .local v7, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget v11, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    invoke-virtual {p1, v11}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object v2

    .line 402
    .local v2, "enabledTrustAgents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    const/16 v12, 0x10

    .line 401
    invoke-static {p0, v12, v11}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 405
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 442
    :cond_0
    :goto_0
    return-object v9

    .line 406
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_0

    .line 407
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 408
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v11, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v11, :cond_3

    .line 406
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 409
    :cond_3
    invoke-static {v6, v5}, Lcom/android/settings/TrustAgentUtils;->checkProvidePermission(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 410
    invoke-static {v5, v6}, Lcom/android/settings/TrustAgentUtils;->getSettingsComponent(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;

    move-result-object v10

    .line 411
    .local v10, "trustAgentComponentInfo":Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;
    iget-object v11, v10, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v11, :cond_2

    .line 413
    invoke-static {v6}, Lcom/android/settings/TrustAgentUtils;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v11

    .line 412
    invoke-interface {v2, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 414
    iget-object v11, v10, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    .line 411
    if-nez v11, :cond_2

    .line 415
    if-eqz v0, :cond_4

    .line 416
    invoke-static {v6}, Lcom/android/settings/TrustAgentUtils;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v11

    const/4 v12, 0x0

    .line 415
    invoke-virtual {p2, v12, v11}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v11

    if-nez v11, :cond_4

    .line 417
    iput-object v0, v10, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->admin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 421
    :cond_4
    iget-object v11, v10, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    if-nez v11, :cond_5

    .line 422
    iget-object v11, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v4, v11, Landroid/content/pm/ServiceInfo;->labelRes:I

    .line 423
    .local v4, "nLabelResId":I
    const/4 v8, 0x0

    .line 425
    .local v8, "resources":Landroid/content/res/Resources;
    :try_start_0
    iget-object v11, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v11}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 430
    .end local v8    # "resources":Landroid/content/res/Resources;
    :goto_2
    invoke-static {v8, v4}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->isSmartLockPreference(Landroid/content/res/Resources;I)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 431
    if-eqz v8, :cond_5

    sget-object v11, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mSmartLockString:Ljava/lang/String;

    if-eqz v11, :cond_5

    .line 432
    sget-object v11, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mSmartLockString:Ljava/lang/String;

    iput-object v11, v10, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    .line 436
    .end local v4    # "nLabelResId":I
    :cond_5
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 426
    .restart local v4    # "nLabelResId":I
    .restart local v8    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 427
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v11, "SecuredLockSettingsMenu"

    const-string/jumbo v12, "getResourcesForApplication NameNotFoundException!"

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2
.end method

.method private getTimeoutNewEntry(J)Ljava/lang/String;
    .locals 11
    .param p1, "time"    # J

    .prologue
    .line 698
    const-wide/16 v6, 0x3e8

    div-long v4, p1, v6

    .line 699
    .local v4, "second":J
    const-wide/16 v6, 0x3c

    div-long v0, v4, v6

    .line 700
    .local v0, "minute":J
    const-wide/16 v6, 0x3c

    rem-long/2addr v4, v6

    .line 701
    const-string/jumbo v2, ""

    .line 703
    .local v2, "result":Ljava/lang/String;
    const-wide/16 v6, 0x0

    cmp-long v3, v0, v6

    if-lez v3, :cond_0

    .line 704
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    long-to-int v6, v0

    const v7, 0x7f130001

    invoke-virtual {v3, v7, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    long-to-int v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 707
    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v3, v0, v6

    if-lez v3, :cond_1

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 708
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 711
    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    .line 712
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    long-to-int v7, v4

    const v8, 0x7f130002

    invoke-virtual {v6, v8, v7}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    long-to-int v8, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 715
    :cond_2
    const-string/jumbo v3, "SecuredLockSettingsMenu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getTimeoutNewEntry : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    return-object v2
.end method

.method private isInDefaultTimeoutList(J)Z
    .locals 5
    .param p1, "timeout"    # J

    .prologue
    const/4 v4, 0x0

    .line 743
    const/4 v1, 0x0

    .line 745
    .local v1, "values":[Ljava/lang/String;
    iget-boolean v2, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->isDeviceLockTime:Z

    if-eqz v2, :cond_0

    .line 746
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0032

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 753
    .local v1, "values":[Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_1

    .line 754
    return v4

    .line 748
    .local v1, "values":[Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0034

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .local v1, "values":[Ljava/lang/String;
    goto :goto_0

    .line 757
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 758
    aget-object v2, v1, v0

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_2

    .line 759
    const/4 v2, 0x1

    return v2

    .line 757
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 763
    :cond_3
    return v4
.end method

.method public static isSmartLockPreference(Landroid/content/res/Resources;I)Ljava/lang/Boolean;
    .locals 9
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "labelResID"    # I

    .prologue
    const/4 v8, 0x0

    .line 878
    const/4 v5, 0x0

    .line 879
    .local v5, "sLabel":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 880
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 881
    .local v0, "assets":Landroid/content/res/AssetManager;
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 882
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 883
    .local v1, "config":Landroid/content/res/Configuration;
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iput-object v6, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 884
    new-instance v2, Landroid/content/res/Resources;

    invoke-direct {v2, v0, v4, v1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 886
    .local v2, "defaultResources":Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 892
    .end local v0    # "assets":Landroid/content/res/AssetManager;
    .end local v1    # "config":Landroid/content/res/Configuration;
    .end local v2    # "defaultResources":Landroid/content/res/Resources;
    .end local v4    # "metrics":Landroid/util/DisplayMetrics;
    .end local v5    # "sLabel":Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v5, :cond_1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    return-object v6

    .line 887
    .restart local v0    # "assets":Landroid/content/res/AssetManager;
    .restart local v1    # "config":Landroid/content/res/Configuration;
    .restart local v2    # "defaultResources":Landroid/content/res/Resources;
    .restart local v4    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v5    # "sLabel":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 888
    .local v3, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v5, ""

    .local v5, "sLabel":Ljava/lang/String;
    goto :goto_0

    .line 894
    .end local v0    # "assets":Landroid/content/res/AssetManager;
    .end local v1    # "config":Landroid/content/res/Configuration;
    .end local v2    # "defaultResources":Landroid/content/res/Resources;
    .end local v3    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v4    # "metrics":Landroid/util/DisplayMetrics;
    .end local v5    # "sLabel":Ljava/lang/String;
    :cond_1
    const-string/jumbo v6, "Smart Lock"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 895
    const-string/jumbo v6, "SecuredLockSettingsMenu"

    const-string/jumbo v7, "isSmartLockSupported : true"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    return-object v6

    .line 898
    :cond_2
    const-string/jumbo v6, "SecuredLockSettingsMenu"

    const-string/jumbo v7, "isSmartLockSupported : false"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    return-object v6
.end method

.method private isVibrationSupport()Z
    .locals 1

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isEnableIntensity(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    const/4 v0, 0x1

    return v0

    .line 239
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private setupLockAfterPreference()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 577
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 578
    const-string/jumbo v7, "lock_screen_lock_after_timeout"

    const-wide/16 v8, 0x1388

    .line 577
    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 579
    .local v2, "currentTimeout":J
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/samsung/android/settings/SettingsListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/SettingsListPreference;->setValue(Ljava/lang/String;)V

    .line 580
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/samsung/android/settings/SettingsListPreference;

    invoke-virtual {v6, p0}, Lcom/samsung/android/settings/SettingsListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 581
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v6, v11}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 582
    .local v0, "adminTimeout":J
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "screen_off_timeout"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-long v4, v6

    .line 584
    .local v4, "displayTimeout":J
    cmp-long v6, v0, v12

    if-lez v6, :cond_0

    .line 590
    iget-boolean v6, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->isDeviceLockTime:Z

    if-eqz v6, :cond_2

    .end local v0    # "adminTimeout":J
    :goto_1
    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->disableUnusableTimeouts(J)V

    .line 575
    :cond_0
    return-void

    .line 581
    .end local v4    # "displayTimeout":J
    :cond_1
    const-wide/16 v0, 0x0

    .restart local v0    # "adminTimeout":J
    goto :goto_0

    .line 590
    .restart local v4    # "displayTimeout":J
    :cond_2
    sub-long/2addr v0, v4

    goto :goto_1
.end method

.method private updateLockAfterPreferenceSummary()V
    .locals 22

    .prologue
    .line 597
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "lock_screen_lock_after_timeout"

    const-wide/16 v20, 0x1388

    invoke-static/range {v18 .. v21}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    .line 598
    .local v6, "currentTimeout":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/samsung/android/settings/SettingsListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/settings/SettingsListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 599
    .local v5, "entries":[Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/samsung/android/settings/SettingsListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/settings/SettingsListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v15

    .line 600
    .local v15, "values":[Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 602
    .local v4, "best":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    array-length v0, v15

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v10, v0, :cond_1

    .line 603
    aget-object v18, v15, v10

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 605
    .local v16, "timeout":J
    cmp-long v18, v6, v16

    if-ltz v18, :cond_0

    .line 606
    move v4, v10

    .line 602
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 611
    .end local v16    # "timeout":J
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v2

    .line 612
    .local v2, "adminTimeout":J
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "screen_off_timeout"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x0

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v18

    move/from16 v0, v18

    int-to-long v8, v0

    .line 614
    .local v8, "displayTimeout":J
    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->isDeviceLockTime:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .end local v2    # "adminTimeout":J
    :goto_2
    move-wide/from16 v0, v18

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 617
    .local v12, "maxTimeout":J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->isDeviceLockTime:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    const v14, 0x7f0b086d

    .line 618
    .local v14, "summaryResID":I
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->isDeviceLockTime:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    const v11, 0x7f0b086e

    .line 621
    .local v11, "immeResID":I
    :goto_4
    aget-object v18, v15, v4

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    cmp-long v18, v18, v12

    if-gez v18, :cond_7

    cmp-long v18, v12, v6

    if-gez v18, :cond_7

    .line 622
    const-string/jumbo v18, "SecuredLockSettingsMenu"

    const-string/jumbo v19, "updateLockAfterPreferenceSummary, Long.valueOf(values[best].toString()) < maxTimeout && maxTimeout < currentTimeout"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->isDeviceLockTime:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    cmp-long v18, v12, v8

    if-gez v18, :cond_6

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/samsung/android/settings/SettingsListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    aget-object v20, v5, v4

    const/16 v21, 0x0

    aput-object v20, v19, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/SettingsListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 595
    :goto_5
    return-void

    .line 611
    .end local v8    # "displayTimeout":J
    .end local v11    # "immeResID":I
    .end local v12    # "maxTimeout":J
    .end local v14    # "summaryResID":I
    :cond_2
    const-wide/16 v2, 0x0

    .restart local v2    # "adminTimeout":J
    goto/16 :goto_1

    .line 614
    .restart local v8    # "displayTimeout":J
    :cond_3
    sub-long/2addr v2, v8

    goto :goto_2

    .line 617
    .end local v2    # "adminTimeout":J
    .restart local v12    # "maxTimeout":J
    :cond_4
    const v14, 0x7f0b1134

    .restart local v14    # "summaryResID":I
    goto :goto_3

    .line 618
    :cond_5
    const v11, 0x7f0b086f

    .restart local v11    # "immeResID":I
    goto :goto_4

    .line 628
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/samsung/android/settings/SettingsListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v14, v1}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/SettingsListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 635
    :cond_7
    if-nez v4, :cond_8

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/samsung/android/settings/SettingsListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    aget-object v20, v5, v4

    const/16 v21, 0x0

    aput-object v20, v19, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/SettingsListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 638
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->isInDefaultTimeoutList(J)Z

    move-result v18

    if-eqz v18, :cond_a

    cmp-long v18, v6, v12

    if-ltz v18, :cond_9

    const-wide/16 v18, 0x0

    cmp-long v18, v12, v18

    if-nez v18, :cond_a

    .line 639
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/samsung/android/settings/SettingsListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    aget-object v20, v5, v4

    const/16 v21, 0x0

    aput-object v20, v19, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v14, v1}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/SettingsListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 641
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/samsung/android/settings/SettingsListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v14, v1}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/SettingsListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 187
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 188
    const/16 v1, 0x7e

    if-ne p1, v1, :cond_1

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 189
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 191
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_0
    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 197
    :cond_0
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 185
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 768
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 769
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/samsung/android/settings/SettingsListPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/SettingsListPreference;->rotateSettingsListPreference()V

    .line 767
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 146
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 148
    const v0, 0x7f0b085b

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mSmartLockString:Ljava/lang/String;

    .line 150
    const-string/jumbo v0, "DeviceLockTime"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->isDeviceLockTime:Z

    .line 152
    const-string/jumbo v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 153
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 154
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLocktype:I

    .line 155
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 156
    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mUserManager:Landroid/os/UserManager;

    .line 158
    if-eqz p1, :cond_0

    const-string/jumbo v0, "trust_agent_click_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    const-string/jumbo v0, "trust_agent_click_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 162
    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLocktype:I

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_1

    .line 163
    const v0, 0x7f0800fb

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->addPreferencesFromResource(I)V

    .line 168
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->InitValue()V

    .line 169
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->RemoveMenu()V

    .line 172
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 144
    return-void

    .line 165
    :cond_1
    const v0, 0x7f0800f3

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->addPreferencesFromResource(I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 212
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 214
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "SecureLockSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 210
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 15
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 470
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v13

    .line 472
    .local v13, "key":Ljava/lang/String;
    const-string/jumbo v0, "visiblepattern"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 473
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget v2, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    .line 474
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1001cb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x3e8

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 570
    :cond_0
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 474
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 475
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    const-string/jumbo v0, "power_button_instantly_locks"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 476
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget v2, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->setPowerButtonInstantlyLocks(ZI)V

    .line 477
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1001cd

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x3e8

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 478
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_4
    const-string/jumbo v0, "auto_factory_reset"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 479
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "auto_swipe_main_user"

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_3
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 480
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "SLAV"

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x3e8

    :goto_4
    int-to-long v4, v0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/settings/Utils;->insertStatusLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 481
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1001ce

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x3e8

    :goto_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 479
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    .line 480
    :cond_6
    const/4 v0, 0x0

    goto :goto_4

    .line 481
    .end local p2    # "value":Ljava/lang/Object;
    :cond_7
    const/4 v0, 0x0

    goto :goto_5

    .line 482
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_8
    const-string/jumbo v0, "lock_after_timeout"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 483
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 486
    .local v14, "timeout":I
    int-to-long v0, v14

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->isInDefaultTimeoutList(J)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 487
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lock_after_timeout_rollback"

    invoke-static {v0, v1, v14}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 494
    :goto_6
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lock_screen_lock_after_timeout"

    invoke-static {v0, v1, v14}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    :goto_7
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "screen lock timeout : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    .line 500
    const/4 v0, 0x5

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 505
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_off_timeout"

    const-wide/16 v2, 0x7530

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v10

    .line 507
    .local v10, "currentScreenTimeout":J
    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->isDeviceLockTime:Z

    if-eqz v0, :cond_9

    if-eqz v14, :cond_9

    int-to-long v0, v14

    cmp-long v0, v0, v10

    if-gez v0, :cond_9

    .line 508
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->showDeviceLockDialog()V

    .line 512
    :cond_9
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->updateLockAfterPreferenceSummary()V

    .line 513
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lock_screen_lock_after_timeout"

    const-wide/16 v2, 0x1388

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    .line 514
    .local v8, "after_timout":J
    const/4 v7, 0x0

    .line 515
    .local v7, "detail":I
    const-wide/16 v0, 0x1388

    cmp-long v0, v8, v0

    if-nez v0, :cond_c

    .line 516
    const/4 v7, 0x1

    .line 533
    :cond_a
    :goto_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 489
    .end local v7    # "detail":I
    .end local v8    # "after_timout":J
    .end local v10    # "currentScreenTimeout":J
    :cond_b
    const v14, 0x1b7741

    goto/16 :goto_6

    .line 495
    :catch_0
    move-exception v12

    .line 496
    .local v12, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v0, "SecuritySettings"

    const-string/jumbo v1, "could not persist lockAfter timeout setting"

    invoke-static {v0, v1, v12}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 517
    .end local v12    # "e":Ljava/lang/NumberFormatException;
    .restart local v7    # "detail":I
    .restart local v8    # "after_timout":J
    .restart local v10    # "currentScreenTimeout":J
    :cond_c
    const-wide/16 v0, 0x3a98

    cmp-long v0, v8, v0

    if-nez v0, :cond_d

    .line 518
    const/4 v7, 0x2

    goto :goto_8

    .line 519
    :cond_d
    const-wide/16 v0, 0x7530

    cmp-long v0, v8, v0

    if-nez v0, :cond_e

    .line 520
    const/4 v7, 0x3

    goto :goto_8

    .line 521
    :cond_e
    const-wide/32 v0, 0xea60

    cmp-long v0, v8, v0

    if-nez v0, :cond_f

    .line 522
    const/4 v7, 0x4

    goto :goto_8

    .line 523
    :cond_f
    const-wide/32 v0, 0x1d4c0

    cmp-long v0, v8, v0

    if-nez v0, :cond_10

    .line 524
    const/4 v7, 0x5

    goto :goto_8

    .line 525
    :cond_10
    const-wide/32 v0, 0x493e0

    cmp-long v0, v8, v0

    if-nez v0, :cond_11

    .line 526
    const/4 v7, 0x6

    goto :goto_8

    .line 527
    :cond_11
    const-wide/32 v0, 0x927c0

    cmp-long v0, v8, v0

    if-nez v0, :cond_12

    .line 528
    const/4 v7, 0x7

    goto :goto_8

    .line 529
    :cond_12
    const-wide/32 v0, 0x1b7740

    cmp-long v0, v8, v0

    if-nez v0, :cond_a

    .line 530
    const/16 v7, 0x8

    goto :goto_8

    .line 535
    .end local v7    # "detail":I
    .end local v8    # "after_timout":J
    .end local v10    # "currentScreenTimeout":J
    .end local v14    # "timeout":I
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_13
    const-string/jumbo v0, "lock_screen_visible"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 536
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVisible:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 537
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "universal_lock_visible"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 538
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->setDirectionShowEnabled(ZI)V

    goto/16 :goto_1

    .line 540
    :cond_14
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "universal_lock_visible"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 541
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->setDirectionShowEnabled(ZI)V

    goto/16 :goto_1

    .line 543
    :cond_15
    const-string/jumbo v0, "lock_screen_vibration"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 544
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVibration:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 545
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "universal_lock_vibration"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 546
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->setDirectionVibrationEnabled(ZI)V

    goto/16 :goto_1

    .line 548
    :cond_16
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "universal_lock_vibration"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 549
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->setDirectionVibrationEnabled(ZI)V

    goto/16 :goto_1

    .line 551
    :cond_17
    const-string/jumbo v0, "lock_screen_beep"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 552
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockBeep:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 553
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "universal_lock_beep"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 554
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->setDirectionSoundEnabled(ZI)V

    goto/16 :goto_1

    .line 556
    :cond_18
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "universal_lock_beep"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 557
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->setDirectionSoundEnabled(ZI)V

    goto/16 :goto_1

    .line 559
    :cond_19
    const-string/jumbo v0, "lock_screen_voice"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVoice:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 562
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "universal_lock_voice"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 563
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->setDirectionVoiceEnabled(ZI)V

    goto/16 :goto_1

    .line 565
    :cond_1a
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "universal_lock_voice"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 566
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->setDirectionVoiceEnabled(ZI)V

    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v6, 0x0

    .line 446
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 448
    .local v2, "key":Ljava/lang/String;
    const-string/jumbo v3, "trust_agent"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 449
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1001cf

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 452
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 453
    .local v1, "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 455
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    const/16 v4, 0x7e

    .line 454
    invoke-virtual {v1, v4, v3}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v0

    .line 456
    .local v0, "confirmationLaunched":Z
    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v3, :cond_0

    .line 458
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->startActivity(Landroid/content/Intent;)V

    .line 459
    iput-object v6, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 465
    :cond_0
    const/4 v3, 0x1

    return v3

    .line 463
    .end local v0    # "confirmationLaunched":Z
    .end local v1    # "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 204
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 206
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "SecureLockSettings"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 202
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 177
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 178
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 179
    const-string/jumbo v0, "trust_agent_click_intent"

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 175
    :cond_0
    return-void
.end method

.method public showDeviceLockDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 722
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 724
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDeviceLockDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 725
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDeviceLockDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 726
    iput-object v5, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDeviceLockDialog:Landroid/app/AlertDialog;

    .line 729
    :cond_0
    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 730
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0401de

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 731
    .local v2, "layout":Landroid/view/View;
    const v4, 0x7f110549

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 732
    .local v3, "tv":Landroid/widget/TextView;
    const v4, 0x7f0b0872

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 733
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 734
    const v4, 0x7f0b1343

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 735
    const v4, 0x104000a

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 736
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDeviceLockDialog:Landroid/app/AlertDialog;

    .line 737
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDeviceLockDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 720
    return-void
.end method
