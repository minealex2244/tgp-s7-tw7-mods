.class public Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "PowerSavingValueFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$1;,
        Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$2;
    }
.end annotation


# instance fields
.field private delta:I

.field private mAD:Landroid/app/AlertDialog;

.field private mActionBar:Landroid/app/ActionBar;

.field private mAlwaysOnDisplay:Landroid/preference/SwitchPreference;

.field private mAvailableTime:I

.field private mBatteryLevel:I

.field private mBatteryLevelReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryPercentInCircleTv:Landroid/widget/TextView;

.field private mBixbyCurrentStateId:Ljava/lang/String;

.field private mBottomDescriptionTv:Landroid/widget/TextView;

.field private mBrightnessManager:Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;

.field private mCancelButtonBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

.field private mContext:Landroid/content/Context;

.field private mDisplayManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mFromWhere:Ljava/lang/String;

.field private mPowerSavingMode:I

.field private mPreviousAodMode:I

.field private mPreviousBrightnessStatus:I

.field private mPreviousDataRestriction:I

.field private mPreviousNetworkRestriction:I

.field private mPreviousPerformance:I

.field private mPreviousPowerSavingMode:I

.field private mPreviousScreenStatus:I

.field private mPsmRestrictedDevice:Landroid/preference/SwitchPreference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResetButton:Landroid/widget/TextView;

.field private mResetButtonBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mResetTitle:Landroid/widget/TextView;

.field private mRestrictBackData:Landroid/preference/SwitchPreference;

.field private mRestrictNetworkUsage:Landroid/preference/SwitchPreference;

.field private mSaveButton:Landroid/widget/Button;

.field private mSaveButtonBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

.field private mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

.field private mTopDescriptionTv:Landroid/widget/TextView;

.field private mcancelButton:Landroid/widget/Button;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mAD:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mAlwaysOnDisplay:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictNetworkUsage:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Lcom/android/settings/widget/SecIntervalSeekbarPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Lcom/android/settings/widget/SecIntervalSeekbarPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    return-object v0
.end method

.method static synthetic -get13(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mcancelButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBatteryLevel:I

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBrightnessManager:Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mFromWhere:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    return v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPsmRestrictedDevice:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictBackData:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBatteryLevel:I

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;)Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBrightnessManager:Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->cancelPsmEditValue()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->enableResetButton(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->onBrightnessSetText(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->onScreenResolutionSetText(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->resetEditValue()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->updateBatteryStatus()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 129
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 101
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBatteryLevel:I

    .line 108
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mFromWhere:Ljava/lang/String;

    .line 109
    iput v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    .line 137
    new-instance v1, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$1;-><init>(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)V

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 181
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBoostMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x5a

    :cond_0
    iput v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->delta:I

    .line 936
    new-instance v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$2;-><init>(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 129
    return-void
.end method

.method private cancelPsmEditValue()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x2

    const/4 v2, 0x1

    .line 861
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    if-eqz v1, :cond_0

    .line 862
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v1}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->getProgress()I

    move-result v0

    .line 863
    .local v0, "curValue":I
    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousScreenStatus:I

    if-eq v0, v1, :cond_0

    .line 864
    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousScreenStatus:I

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->onScreenResolutionSetText(I)V

    .line 865
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    iget v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousScreenStatus:I

    invoke-virtual {v1, v4}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setProgress(I)V

    .line 866
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "screen_resolution_state"

    .line 867
    iget v5, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    iget v6, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousScreenStatus:I

    .line 866
    invoke-static {v1, v4, v7, v5, v6}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    .line 871
    .end local v0    # "curValue":I
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    if-eqz v1, :cond_1

    .line 872
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v1}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->getProgress()I

    move-result v0

    .line 873
    .restart local v0    # "curValue":I
    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousBrightnessStatus:I

    add-int/lit8 v1, v1, -0x50

    div-int/lit8 v1, v1, 0x5

    if-eq v0, v1, :cond_1

    .line 874
    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousBrightnessStatus:I

    add-int/lit8 v1, v1, -0x50

    div-int/lit8 v1, v1, 0x5

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->onBrightnessSetText(I)V

    .line 875
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    iget v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousBrightnessStatus:I

    add-int/lit8 v4, v4, -0x50

    div-int/lit8 v4, v4, 0x5

    invoke-virtual {v1, v4}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setProgress(I)V

    .line 876
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "limit_brightness_state"

    .line 877
    iget v5, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    iget v6, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousBrightnessStatus:I

    .line 876
    invoke-static {v1, v4, v7, v5, v6}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    .line 881
    .end local v0    # "curValue":I
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPsmRestrictedDevice:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_2

    .line 882
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPsmRestrictedDevice:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    .line 883
    .restart local v0    # "curValue":I
    :goto_0
    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousPerformance:I

    if-eq v0, v1, :cond_2

    .line 884
    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPsmRestrictedDevice:Landroid/preference/SwitchPreference;

    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousPerformance:I

    if-ne v1, v2, :cond_7

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 885
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "restricted_device_performance"

    .line 886
    iget v5, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    iget v6, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousPerformance:I

    .line 885
    invoke-static {v1, v4, v7, v5, v6}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    .line 890
    .end local v0    # "curValue":I
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictBackData:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_3

    .line 891
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictBackData:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x0

    .line 892
    .restart local v0    # "curValue":I
    :goto_2
    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousDataRestriction:I

    if-eq v0, v1, :cond_3

    .line 893
    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictBackData:Landroid/preference/SwitchPreference;

    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousDataRestriction:I

    if-eq v1, v2, :cond_9

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 894
    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    if-ne v1, v2, :cond_a

    .line 895
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "low_power_back_data_off"

    .line 896
    iget v5, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousDataRestriction:I

    .line 895
    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 905
    .end local v0    # "curValue":I
    :cond_3
    :goto_4
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictNetworkUsage:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_4

    .line 906
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictNetworkUsage:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x1

    .line 907
    .restart local v0    # "curValue":I
    :goto_5
    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousNetworkRestriction:I

    if-eq v0, v1, :cond_4

    .line 908
    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictNetworkUsage:Landroid/preference/SwitchPreference;

    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousNetworkRestriction:I

    if-ne v1, v2, :cond_c

    move v1, v2

    :goto_6
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 909
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "psm_network_power_saving"

    .line 910
    iget v5, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    iget v6, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousDataRestriction:I

    .line 909
    invoke-static {v1, v4, v7, v5, v6}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    .line 914
    .end local v0    # "curValue":I
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mAlwaysOnDisplay:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isAODServiceEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 915
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mAlwaysOnDisplay:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v0, 0x0

    .line 916
    .restart local v0    # "curValue":I
    :goto_7
    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousAodMode:I

    if-eq v0, v1, :cond_5

    .line 917
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mAlwaysOnDisplay:Landroid/preference/SwitchPreference;

    iget v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousAodMode:I

    if-eq v4, v2, :cond_e

    :goto_8
    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 918
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "psm_always_on_display_mode"

    iget v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    iget v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousAodMode:I

    invoke-static {v1, v2, v7, v3, v4}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    .line 860
    .end local v0    # "curValue":I
    :cond_5
    return-void

    .line 882
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "curValue":I
    goto/16 :goto_0

    :cond_7
    move v1, v3

    .line 884
    goto/16 :goto_1

    .line 891
    .end local v0    # "curValue":I
    :cond_8
    const/4 v0, 0x1

    .restart local v0    # "curValue":I
    goto :goto_2

    :cond_9
    move v1, v3

    .line 893
    goto :goto_3

    .line 898
    :cond_a
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "ultra_power_mode_back_data_off"

    .line 899
    iget v5, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousDataRestriction:I

    .line 898
    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4

    .line 906
    .end local v0    # "curValue":I
    :cond_b
    const/4 v0, 0x0

    .restart local v0    # "curValue":I
    goto :goto_5

    :cond_c
    move v1, v3

    .line 908
    goto :goto_6

    .line 915
    .end local v0    # "curValue":I
    :cond_d
    const/4 v0, 0x1

    .restart local v0    # "curValue":I
    goto :goto_7

    :cond_e
    move v2, v3

    .line 917
    goto :goto_8
.end method

.method private combineResolutionTopText(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 5
    .param p1, "resolution"    # Ljava/lang/String;
    .param p2, "px"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 308
    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 309
    .local v0, "result":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    .line 310
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0527

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 309
    invoke-direct {v1, v2, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 312
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 309
    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 314
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    .line 315
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0526

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 314
    invoke-direct {v1, v2, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 316
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 317
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    .line 314
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 319
    return-object v0
.end method

.method private enableResetButton(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 670
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mResetButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 669
    return-void
.end method

.method private initPreference()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 323
    const-string/jumbo v0, "PowerSavingValueFragment"

    const-string/jumbo v3, "PSM initPreference"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "restricted_device_performance"

    iget v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    invoke-static {v0, v3, v5, v4}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousPerformance:I

    .line 326
    const-string/jumbo v0, "psm_restricted_device"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPsmRestrictedDevice:Landroid/preference/SwitchPreference;

    .line 327
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPsmRestrictedDevice:Landroid/preference/SwitchPreference;

    new-array v3, v1, [Ljava/lang/Object;

    const/16 v4, 0x46

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const v4, 0x7f0b0a3a

    invoke-virtual {p0, v4, v3}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPsmRestrictedDevice:Landroid/preference/SwitchPreference;

    iget v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousPerformance:I

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 329
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPsmRestrictedDevice:Landroid/preference/SwitchPreference;

    new-instance v3, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$5;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$5;-><init>(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)V

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 345
    const-string/jumbo v0, "psm_restricted_bgdata"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictBackData:Landroid/preference/SwitchPreference;

    .line 346
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-nez v0, :cond_4

    .line 347
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictBackData:Landroid/preference/SwitchPreference;

    new-instance v3, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$6;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$6;-><init>(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)V

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 368
    iget v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    if-ne v0, v1, :cond_2

    .line 369
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 370
    const-string/jumbo v3, "low_power_back_data_off"

    .line 369
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousDataRestriction:I

    .line 376
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictBackData:Landroid/preference/SwitchPreference;

    iget v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousDataRestriction:I

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 381
    :goto_3
    const-string/jumbo v0, "psm_restricted_network"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictNetworkUsage:Landroid/preference/SwitchPreference;

    .line 382
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isNetworkPowerSavingEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 383
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictNetworkUsage:Landroid/preference/SwitchPreference;

    new-instance v3, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$7;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$7;-><init>(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)V

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 398
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "psm_network_power_saving"

    iget v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    invoke-static {v0, v3, v5, v4}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousNetworkRestriction:I

    .line 399
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictNetworkUsage:Landroid/preference/SwitchPreference;

    iget v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousNetworkRestriction:I

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 405
    :goto_5
    const-string/jumbo v0, "psm_aod_disable"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mAlwaysOnDisplay:Landroid/preference/SwitchPreference;

    .line 406
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isAODServiceEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 407
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "psm_always_on_display_mode"

    iget v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    invoke-static {v0, v3, v5, v4}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousAodMode:I

    .line 408
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mAlwaysOnDisplay:Landroid/preference/SwitchPreference;

    new-instance v3, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$8;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$8;-><init>(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)V

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 424
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mAlwaysOnDisplay:Landroid/preference/SwitchPreference;

    iget v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousAodMode:I

    if-ne v3, v1, :cond_7

    :goto_6
    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 425
    iget v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    if-ne v0, v5, :cond_0

    .line 426
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mAlwaysOnDisplay:Landroid/preference/SwitchPreference;

    const v1, 0x7f0b0a42

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 322
    :cond_0
    :goto_7
    return-void

    :cond_1
    move v0, v2

    .line 328
    goto/16 :goto_0

    .line 373
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 374
    const-string/jumbo v3, "ultra_power_mode_back_data_off"

    .line 373
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousDataRestriction:I

    goto/16 :goto_1

    :cond_3
    move v0, v2

    .line 376
    goto/16 :goto_2

    .line 378
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictBackData:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    :cond_5
    move v0, v2

    .line 399
    goto :goto_4

    .line 401
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictNetworkUsage:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_5

    :cond_7
    move v2, v1

    .line 424
    goto :goto_6

    .line 429
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mAlwaysOnDisplay:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_7
.end method

.method private onBrightnessSetText(I)V
    .locals 7
    .param p1, "value"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 539
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mDisplayManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v3, :cond_0

    .line 540
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mDisplayManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    mul-int/lit8 v4, p1, 0x5

    add-int/lit8 v4, v4, 0x50

    invoke-virtual {v3, v4}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setScreenBrightnessForPreview(I)V

    .line 541
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBrightnessManager:Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;

    if-eqz v3, :cond_1

    .line 542
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBrightnessManager:Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;

    mul-int/lit8 v4, p1, 0x5

    add-int/lit8 v4, v4, 0x50

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->setScreenBrightnessForPreview(I)V

    .line 545
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    add-int/lit8 v4, p1, 0x7

    invoke-static {v3, v4}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v3

    .line 546
    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-static {v4, v6}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v4

    .line 545
    sub-int v1, v3, v4

    .line 547
    .local v1, "mediumTime":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v1, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeStringWithMark(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v2

    .line 548
    .local v2, "timeString":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 566
    :cond_2
    :pswitch_0
    mul-int/lit8 v3, p1, 0x5

    add-int/lit8 v3, v3, 0x50

    iget v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->delta:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v0

    .line 568
    .local v0, "brightnessTopText":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isHebrewLanguage()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 569
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u200e"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 571
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v3, v5, v5}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->supportMediumText(ZZ)V

    .line 572
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v3, v5, v0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setTopText(ILjava/lang/String;)V

    .line 573
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v3, v5, v2}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setBottomText(ILjava/lang/String;)V

    .line 538
    .end local v0    # "brightnessTopText":Ljava/lang/String;
    :goto_0
    return-void

    .line 550
    :pswitch_1
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v3, v6, v6}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->supportMediumText(ZZ)V

    .line 551
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    const-string/jumbo v4, " "

    invoke-virtual {v3, v5, v4}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setTopText(ILjava/lang/String;)V

    goto :goto_0

    .line 554
    :pswitch_2
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v3, v6, v5}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->supportMediumText(ZZ)V

    .line 555
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    const-string/jumbo v4, " "

    invoke-virtual {v3, v5, v4}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setTopText(ILjava/lang/String;)V

    .line 556
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v3, v5, v2}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setBottomText(ILjava/lang/String;)V

    goto :goto_0

    .line 559
    :pswitch_3
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBoostMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 560
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v3, v6, v5}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->supportMediumText(ZZ)V

    .line 561
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    const-string/jumbo v4, " "

    invoke-virtual {v3, v5, v4}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setTopText(ILjava/lang/String;)V

    .line 562
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v3, v5, v2}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setBottomText(ILjava/lang/String;)V

    goto :goto_0

    .line 548
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onScreenResolutionSetText(I)V
    .locals 6
    .param p1, "value"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 579
    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    add-int/lit8 v3, p1, 0xc

    invoke-static {v2, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v2

    .line 580
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-static {v3, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v3

    .line 579
    sub-int v0, v2, v3

    .line 581
    .local v0, "screenMediumTime":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0, v4}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeStringWithMark(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v1

    .line 582
    .local v1, "screenTimeString":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 587
    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v2, v4, v4}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->supportMediumText(ZZ)V

    .line 588
    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v2, v4, v1}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setBottomText(ILjava/lang/String;)V

    .line 578
    :goto_0
    return-void

    .line 584
    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v2, v4, v5}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->supportMediumText(ZZ)V

    goto :goto_0

    .line 582
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private registerBatteryStatusReceiver()V
    .locals 3

    .prologue
    .line 595
    new-instance v1, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$11;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$11;-><init>(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)V

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBatteryLevelReceiver:Landroid/content/BroadcastReceiver;

    .line 610
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 611
    .local v0, "batteryLevelFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBatteryLevelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 594
    return-void
.end method

.method private resetEditValue()V
    .locals 7

    .prologue
    const/16 v3, 0x50

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 796
    iget v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    if-ne v0, v4, :cond_7

    .line 797
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    if-eqz v0, :cond_0

    .line 798
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBoostMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 799
    invoke-direct {p0, v5}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->onBrightnessSetText(I)V

    .line 800
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v0, v5}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setProgress(I)V

    .line 801
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "limit_brightness_state"

    iget v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    invoke-static {v0, v1, v6, v2, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    .line 808
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    if-eqz v0, :cond_1

    .line 809
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->onScreenResolutionSetText(I)V

    .line 810
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v0, v4}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setProgress(I)V

    .line 811
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "screen_resolution_state"

    iget v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    invoke-static {v0, v1, v6, v2, v4}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    .line 813
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPsmRestrictedDevice:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_2

    .line 814
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPsmRestrictedDevice:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 815
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "restricted_device_performance"

    iget v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    invoke-static {v0, v1, v6, v2, v4}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    .line 817
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictBackData:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_3

    .line 818
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictBackData:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 819
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "low_power_back_data_off"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 821
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictNetworkUsage:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_4

    .line 822
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictNetworkUsage:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 823
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "psm_network_power_saving"

    iget v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    invoke-static {v0, v1, v6, v2, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    .line 825
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mAlwaysOnDisplay:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isAODServiceEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 826
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mAlwaysOnDisplay:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 827
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "psm_always_on_display_mode"

    iget v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    invoke-static {v0, v1, v6, v2, v4}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    .line 795
    :cond_5
    :goto_1
    return-void

    .line 803
    :cond_6
    invoke-direct {p0, v6}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->onBrightnessSetText(I)V

    .line 804
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v0, v6}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setProgress(I)V

    .line 805
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "limit_brightness_state"

    iget v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    const/16 v3, 0x5a

    invoke-static {v0, v1, v6, v2, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    goto/16 :goto_0

    .line 831
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    if-eqz v0, :cond_8

    .line 832
    invoke-direct {p0, v5}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->onBrightnessSetText(I)V

    .line 833
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v0, v5}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setProgress(I)V

    .line 834
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "limit_brightness_state"

    iget v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    invoke-static {v0, v1, v6, v2, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    .line 836
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    if-eqz v0, :cond_9

    .line 837
    invoke-direct {p0, v5}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->onScreenResolutionSetText(I)V

    .line 838
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v0, v5}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setProgress(I)V

    .line 839
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "screen_resolution_state"

    iget v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    invoke-static {v0, v1, v6, v2, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    .line 841
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPsmRestrictedDevice:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_a

    .line 842
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPsmRestrictedDevice:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 843
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "restricted_device_performance"

    iget v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    invoke-static {v0, v1, v6, v2, v4}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    .line 845
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictBackData:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_b

    .line 846
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictBackData:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 847
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "ultra_power_mode_back_data_off"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 849
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictNetworkUsage:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_c

    .line 850
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictNetworkUsage:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 851
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "psm_network_power_saving"

    iget v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    invoke-static {v0, v1, v6, v2, v4}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    .line 853
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mAlwaysOnDisplay:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isAODServiceEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 854
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mAlwaysOnDisplay:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 855
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "psm_always_on_display_mode"

    iget v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    invoke-static {v0, v1, v6, v2, v4}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    goto/16 :goto_1
.end method

.method private setBatteryHeaderViewsVisibility()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const-wide/16 v8, 0x1f4

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 631
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    invoke-virtual {v3}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->cancelAnimations()V

    .line 632
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    iget v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBatteryLevel:I

    invoke-virtual {v3, v4, v7, v7}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setScore(IIZ)V

    .line 634
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 635
    .local v0, "fadeIn":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 636
    new-instance v3, Lcom/samsung/android/settings/widget/SineInOut90;

    invoke-direct {v3}, Lcom/samsung/android/settings/widget/SineInOut90;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 638
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v1, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 639
    .local v1, "fixNowFadeIn":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v1, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 640
    new-instance v3, Lcom/samsung/android/settings/widget/SineInOut90;

    invoke-direct {v3}, Lcom/samsung/android/settings/widget/SineInOut90;-><init>()V

    invoke-virtual {v1, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 642
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const v3, 0x3ecccccd    # 0.4f

    invoke-direct {v2, v5, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 643
    .local v2, "fixNowFadeOut":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v2, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 644
    new-instance v3, Lcom/samsung/android/settings/widget/SineInOut90;

    invoke-direct {v3}, Lcom/samsung/android/settings/widget/SineInOut90;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 646
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBatteryPercentInCircleTv:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 647
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mTopDescriptionTv:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 648
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBottomDescriptionTv:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 649
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBatteryPercentInCircleTv:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 650
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mTopDescriptionTv:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 651
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBottomDescriptionTv:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 630
    return-void
.end method

.method private setBatteryStatus()V
    .locals 5

    .prologue
    .line 623
    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    iget v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBatteryLevel:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTIme(Landroid/content/Context;II)I

    move-result v0

    .line 624
    .local v0, "time":I
    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v1

    .line 625
    .local v1, "timeString":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mTopDescriptionTv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0a2a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 626
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->updateEstimatedTimeonHeader()V

    .line 622
    return-void
.end method

.method private setEstimatedTimeTextSize(I)V
    .locals 6
    .param p1, "time"    # I

    .prologue
    .line 924
    new-instance v1, Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBottomDescriptionTv:Landroid/widget/TextView;

    .line 925
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a04c1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 924
    invoke-direct {v1, v2, v3}, Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;-><init>(Landroid/widget/TextView;I)V

    .line 927
    .local v1, "watcher":Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;
    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    .line 928
    const v3, 0x7f0a01f9

    .line 929
    const v4, 0x7f0a01fa

    .line 930
    const/4 v5, -0x1

    .line 927
    invoke-static {v2, p1, v3, v4, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->formatSpannableBatteryTime(Landroid/content/Context;IIII)Landroid/text/SpannableString;

    move-result-object v0

    .line 931
    .local v0, "timeString":Landroid/text/SpannableString;
    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;->setMaxTextSize(Ljava/lang/CharSequence;)V

    .line 932
    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBottomDescriptionTv:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 923
    return-void
.end method

.method private updateBatteryStatus()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 615
    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->setBatteryStatus()V

    .line 616
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    iget v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBatteryLevel:I

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTIme(Landroid/content/Context;II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mAvailableTime:I

    .line 617
    invoke-static {}, Landroid/icu/text/NumberFormat;->getNumberInstance()Landroid/icu/text/NumberFormat;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBatteryLevel:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    .line 618
    .local v0, "percentage":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBatteryPercentInCircleTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 619
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    iget v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBatteryLevel:I

    invoke-virtual {v1, v2, v4, v4}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setScore(IIZ)V

    .line 614
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public initSeekbar()V
    .locals 26

    .prologue
    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getCurrentPowerSavingMode(Landroid/content/Context;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousPowerSavingMode:I

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string/jumbo v23, "limit_brightness_state"

    .line 185
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    move/from16 v24, v0

    const/16 v25, 0x2

    .line 184
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v25

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousBrightnessStatus:I

    .line 186
    const-string/jumbo v22, "secbrightness"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    .line 187
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBoostMode()Z

    move-result v22

    if-eqz v22, :cond_2

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v22, v0

    const v23, 0x7f0b01b2

    invoke-virtual/range {v22 .. v23}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setTitle(I)V

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setMax(I)V

    .line 193
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBoostMode()Z

    move-result v22

    if-eqz v22, :cond_3

    const/16 v11, 0x5a

    .line 194
    .local v11, "maxValue":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousBrightnessStatus:I

    move/from16 v22, v0

    const/16 v23, 0x50

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_0

    .line 195
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousBrightnessStatus:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v0, v11, :cond_5

    .line 196
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousBrightnessStatus:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ne v0, v11, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    invoke-virtual/range {v22 .. v24}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->supportMediumText(ZZ)V

    .line 201
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->delta:I

    move/from16 v22, v0

    rsub-int/lit8 v22, v22, 0x50

    invoke-static/range {v22 .. v22}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v6

    .line 202
    .local v6, "brightnessTopTextMin":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBoostMode()Z

    move-result v22

    if-eqz v22, :cond_6

    .line 203
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->delta:I

    move/from16 v22, v0

    rsub-int/lit8 v22, v22, 0x50

    div-int/lit8 v22, v22, 0x2

    invoke-static/range {v22 .. v22}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v5

    .line 205
    .local v5, "brightnessTopTextMid":Ljava/lang/String;
    :goto_3
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBoostMode()Z

    move-result v22

    if-eqz v22, :cond_7

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f0b084c

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 209
    .local v4, "brightnessTopTextMax":Ljava/lang/String;
    :goto_4
    invoke-static {}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isHebrewLanguage()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 210
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "\u200e"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 211
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "\u200e"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 212
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "\u200e"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 214
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v6}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setTopText(ILjava/lang/String;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v5}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setTopText(ILjava/lang/String;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v4}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setTopText(ILjava/lang/String;)V

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const/16 v23, 0x7

    invoke-static/range {v22 .. v23}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v22

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v23

    .line 217
    sub-int v13, v22, v23

    .line 220
    .local v13, "minTime":I
    if-lez v13, :cond_8

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v0, v13, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeStringWithMark(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v14

    .line 222
    .local v14, "minTimeString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v14}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setBottomText(ILjava/lang/String;)V

    .line 227
    .end local v14    # "minTimeString":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    .line 228
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousBrightnessStatus:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x50

    div-int/lit8 v23, v23, 0x5

    .line 227
    add-int/lit8 v23, v23, 0x7

    .line 226
    invoke-static/range {v22 .. v23}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v22

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v23

    .line 226
    sub-int v12, v22, v23

    .line 230
    .local v12, "mediumTime":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v0, v12, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeStringWithMark(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v18

    .line 231
    .local v18, "timeString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setBottomText(ILjava/lang/String;)V

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousBrightnessStatus:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x50

    div-int/lit8 v23, v23, 0x5

    invoke-virtual/range {v22 .. v23}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setProgress(I)V

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v22, v0

    new-instance v23, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$3;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$3;-><init>(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)V

    invoke-virtual/range {v22 .. v23}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 253
    const-string/jumbo v22, "psm_screen_seekbar"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    .line 254
    const-string/jumbo v22, "WQHD,FHD,HD"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_b

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v22, v0

    if-eqz v22, :cond_b

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string/jumbo v23, "screen_resolution_state"

    .line 257
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    move/from16 v24, v0

    const/16 v25, 0x2

    .line 256
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v25

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousScreenStatus:I

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setMax(I)V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousScreenStatus:I

    move/from16 v22, v0

    if-eqz v22, :cond_9

    const/16 v22, 0x1

    :goto_6
    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->supportMediumText(ZZ)V

    .line 260
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0b0596

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 261
    .local v9, "hd":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0b0599

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 262
    .local v10, "hd_px":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0b0597

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 263
    .local v7, "fhd":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0b059a

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 264
    .local v8, "fhd_px":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0b0598

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 265
    .local v20, "wqhd":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0b059b

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 266
    .local v21, "wqhd_px":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->combineResolutionTopText(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setTopText(ILandroid/text/SpannableString;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->combineResolutionTopText(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v23

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v24

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setTopText(ILandroid/text/SpannableString;)V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->combineResolutionTopText(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v23

    const/16 v24, 0x2

    move-object/from16 v0, v22

    move/from16 v1, v24

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setTopText(ILandroid/text/SpannableString;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const/16 v23, 0xc

    invoke-static/range {v22 .. v23}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v22

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v23

    .line 269
    sub-int v17, v22, v23

    .line 272
    .local v17, "time2":I
    if-lez v17, :cond_a

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v17

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeStringWithMark(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v19

    .line 274
    .local v19, "timeString2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setBottomText(ILjava/lang/String;)V

    .line 279
    .end local v19    # "timeString2":Ljava/lang/String;
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousScreenStatus:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0xc

    invoke-static/range {v22 .. v23}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v22

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v23

    .line 279
    sub-int v15, v22, v23

    .line 281
    .local v15, "screenMediumTime":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v0, v15, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeStringWithMark(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v16

    .line 282
    .local v16, "screenTimeString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setBottomText(ILjava/lang/String;)V

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v22, v0

    const v23, 0x7f0b0a33

    invoke-virtual/range {v22 .. v23}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setSummary(I)V

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousScreenStatus:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setProgress(I)V

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v22, v0

    new-instance v23, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$4;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$4;-><init>(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)V

    invoke-virtual/range {v22 .. v23}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 182
    .end local v7    # "fhd":Ljava/lang/String;
    .end local v8    # "fhd_px":Ljava/lang/String;
    .end local v9    # "hd":Ljava/lang/String;
    .end local v10    # "hd_px":Ljava/lang/String;
    .end local v15    # "screenMediumTime":I
    .end local v16    # "screenTimeString":Ljava/lang/String;
    .end local v17    # "time2":I
    .end local v20    # "wqhd":Ljava/lang/String;
    .end local v21    # "wqhd_px":Ljava/lang/String;
    :goto_8
    return-void

    .line 191
    .end local v4    # "brightnessTopTextMax":Ljava/lang/String;
    .end local v5    # "brightnessTopTextMid":Ljava/lang/String;
    .end local v6    # "brightnessTopTextMin":Ljava/lang/String;
    .end local v11    # "maxValue":I
    .end local v12    # "mediumTime":I
    .end local v13    # "minTime":I
    .end local v18    # "timeString":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v22, v0

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setMax(I)V

    goto/16 :goto_0

    .line 193
    :cond_3
    const/16 v11, 0x64

    .restart local v11    # "maxValue":I
    goto/16 :goto_1

    .line 197
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->supportMediumText(ZZ)V

    goto/16 :goto_2

    .line 199
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const/16 v24, 0x1

    invoke-virtual/range {v22 .. v24}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->supportMediumText(ZZ)V

    goto/16 :goto_2

    .line 204
    .restart local v6    # "brightnessTopTextMin":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousBrightnessStatus:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->delta:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    invoke-static/range {v22 .. v22}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "brightnessTopTextMid":Ljava/lang/String;
    goto/16 :goto_3

    .line 207
    :cond_7
    const/16 v22, 0x64

    invoke-static/range {v22 .. v22}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "brightnessTopTextMax":Ljava/lang/String;
    goto/16 :goto_4

    .line 224
    .restart local v13    # "minTime":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setBottomText(ILjava/lang/String;)V

    goto/16 :goto_5

    .line 259
    .restart local v12    # "mediumTime":I
    .restart local v18    # "timeString":Ljava/lang/String;
    :cond_9
    const/16 v22, 0x0

    goto/16 :goto_6

    .line 277
    .restart local v7    # "fhd":Ljava/lang/String;
    .restart local v8    # "fhd_px":Ljava/lang/String;
    .restart local v9    # "hd":Ljava/lang/String;
    .restart local v10    # "hd_px":Ljava/lang/String;
    .restart local v17    # "time2":I
    .restart local v20    # "wqhd":Ljava/lang/String;
    .restart local v21    # "wqhd_px":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setBottomText(ILjava/lang/String;)V

    goto/16 :goto_7

    .line 303
    .end local v7    # "fhd":Ljava/lang/String;
    .end local v8    # "fhd_px":Ljava/lang/String;
    .end local v9    # "hd":Ljava/lang/String;
    .end local v10    # "hd_px":Ljava/lang/String;
    .end local v17    # "time2":I
    .end local v20    # "wqhd":Ljava/lang/String;
    .end local v21    # "wqhd_px":Ljava/lang/String;
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_8
.end method

.method initswitchBtn()V
    .locals 5

    .prologue
    .line 516
    const-string/jumbo v3, "PowerSavingValueFragment"

    const-string/jumbo v4, "PSM initswitchBtn"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 518
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mActionBar:Landroid/app/ActionBar;

    .line 519
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mActionBar:Landroid/app/ActionBar;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 520
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mActionBar:Landroid/app/ActionBar;

    const v4, 0x7f040097

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 521
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mActionBar:Landroid/app/ActionBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 522
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    .line 523
    .local v1, "customView":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 524
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isSetOpenTheme(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 525
    const v3, 0x7f11021c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 526
    .local v2, "headerBar":Landroid/widget/LinearLayout;
    const v3, 0x7f0200d8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 528
    .end local v2    # "headerBar":Landroid/widget/LinearLayout;
    :cond_0
    const v3, 0x7f11021d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mcancelButton:Landroid/widget/Button;

    .line 529
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mcancelButton:Landroid/widget/Button;

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/Button;)V

    .line 530
    const v3, 0x7f11021e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSaveButton:Landroid/widget/Button;

    .line 531
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSaveButton:Landroid/widget/Button;

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/Button;)V

    .line 532
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSaveButton:Landroid/widget/Button;

    const v4, 0x7f0b042b

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 533
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSaveButtonBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 534
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mcancelButton:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mCancelButtonBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 515
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const v1, 0x7f020508

    .line 783
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isButtonBackground(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mcancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 785
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 786
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mResetButton:Landroid/widget/TextView;

    const v1, 0x7f02050b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 792
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 782
    return-void

    .line 788
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mcancelButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mCancelButtonBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 789
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSaveButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSaveButtonBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 790
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mResetButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mResetButtonBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 148
    const-string/jumbo v1, "PowerSavingValueFragment"

    const-string/jumbo v2, "PSM onCreate"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 150
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    .line 152
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->setHasOptionsMenu(Z)V

    .line 154
    const v1, 0x7f0800bc

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->addPreferencesFromResource(I)V

    .line 156
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 157
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 158
    const-string/jumbo v1, "battery_mode"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    .line 159
    const-string/jumbo v1, "fromWhere"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mFromWhere:Ljava/lang/String;

    .line 160
    const-string/jumbo v1, "PowerSavingValueFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mPowerSavingMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    if-ne v1, v4, :cond_1

    .line 162
    const-string/jumbo v1, "PowerSavingModePopupCustomize"

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBixbyCurrentStateId:Ljava/lang/String;

    .line 168
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->initSeekbar()V

    .line 169
    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->initPreference()V

    .line 171
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBoostMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 172
    new-instance v1, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousPowerSavingMode:I

    iget v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBrightnessManager:Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;

    .line 178
    :goto_1
    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 147
    return-void

    .line 164
    :cond_1
    const-string/jumbo v1, "UltraPowerSavingModePopupCustomize"

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBixbyCurrentStateId:Ljava/lang/String;

    goto :goto_0

    .line 174
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "DisplaySolution"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mDisplayManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const v5, 0x7f020508

    const/4 v4, 0x0

    .line 731
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    .line 732
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 733
    .local v0, "customView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 734
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mcancelButton:Landroid/widget/Button;

    new-instance v2, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$12;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$12;-><init>(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 747
    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isDisableMaxMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 748
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSaveButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 749
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 750
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 773
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isButtonBackground(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 774
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mcancelButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 775
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 730
    .end local v0    # "customView":Landroid/view/View;
    :cond_0
    return-void

    .line 752
    .restart local v0    # "customView":Landroid/view/View;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSaveButton:Landroid/widget/Button;

    new-instance v2, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$13;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$13;-><init>(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 436
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->initswitchBtn()V

    .line 437
    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->registerBatteryStatusReceiver()V

    .line 438
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    .line 439
    .local v2, "rootView":Landroid/view/View;
    const-string/jumbo v4, "PowerSavingValueFragment"

    const-string/jumbo v5, "PSM onCreateView"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 443
    const v5, 0x7f0401c8

    .line 442
    invoke-virtual {v4, v5, v10, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 445
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f11003e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/visualeffect/circle/CircleContainer;

    iput-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    .line 446
    invoke-static {}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isHebrewLanguage()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 447
    const v4, 0x7f11003f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 448
    .local v0, "circleInnerTextContainer":Landroid/view/View;
    invoke-virtual {v0, v9}, Landroid/view/View;->setLayoutDirection(I)V

    .line 451
    .end local v0    # "circleInnerTextContainer":Landroid/view/View;
    :cond_0
    const v4, 0x7f110538

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBatteryPercentInCircleTv:Landroid/widget/TextView;

    .line 453
    const v4, 0x7f110539

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mTopDescriptionTv:Landroid/widget/TextView;

    .line 454
    const v4, 0x7f11053a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBottomDescriptionTv:Landroid/widget/TextView;

    .line 456
    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    .line 457
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0578

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 458
    iget-object v6, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0577

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 456
    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setCircle(II)V

    .line 460
    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    invoke-virtual {v4, v8, v8, v9}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->doRippleAnimation(IZZ)V

    .line 462
    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->setBatteryHeaderViewsVisibility()V

    .line 464
    const v4, 0x7f1100e5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mResetTitle:Landroid/widget/TextView;

    .line 465
    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mResetTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 466
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mResetTitle:Landroid/widget/TextView;

    iget v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    if-ne v4, v8, :cond_3

    .line 467
    const v4, 0x7f0b0a46

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 466
    :goto_0
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mResetTitle:Landroid/widget/TextView;

    invoke-static {v4, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 471
    const v4, 0x7f110195

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mResetButton:Landroid/widget/TextView;

    .line 472
    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mResetButton:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mResetButtonBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 474
    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mResetButton:Landroid/widget/TextView;

    invoke-static {v4, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 475
    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isButtonBackground(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 476
    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mResetButton:Landroid/widget/TextView;

    const v5, 0x7f02050b

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 478
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mResetButton:Landroid/widget/TextView;

    new-instance v5, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$9;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$9;-><init>(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 486
    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    invoke-static {v4, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isChangedValue(Landroid/content/Context;I)Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->enableResetButton(Z)V

    .line 489
    invoke-virtual {v3, v8}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 490
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 491
    new-instance v4, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$10;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$10;-><init>(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 504
    const v4, 0x102000a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 505
    .local v1, "list":Landroid/widget/ListView;
    if-eqz v1, :cond_2

    .line 506
    invoke-virtual {v1, v3, v10, v8}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 507
    invoke-virtual {v1, v9}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 508
    invoke-virtual {v1, v8}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 511
    :cond_2
    return-object v2

    .line 468
    .end local v1    # "list":Landroid/widget/ListView;
    :cond_3
    const v4, 0x7f0b0a47

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 690
    const-string/jumbo v0, "PowerSavingValueFragment"

    const-string/jumbo v1, "PSM onDestroy()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBatteryLevelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 692
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroy()V

    .line 689
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 712
    const-string/jumbo v0, "PowerSavingValueFragment"

    const-string/jumbo v1, "PSM onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mDisplayManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mDisplayManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {v0, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setScreenBrightnessForPreview(I)V

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBrightnessManager:Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;

    if-eqz v0, :cond_1

    .line 718
    const-string/jumbo v0, "PowerSavingValueFragment"

    const-string/jumbo v1, "PSM onPause - brightness rollback"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBrightnessManager:Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->setScreenBrightnessForPreview(I)V

    .line 721
    :cond_1
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 724
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBixbyCurrentStateId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 711
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 675
    const-string/jumbo v0, "PowerSavingValueFragment"

    const-string/jumbo v1, "PSM onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mDisplayManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mDisplayManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 678
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "limit_brightness_state"

    iget v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    invoke-static {v1, v2, v4, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    .line 677
    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setScreenBrightnessForPreview(I)V

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBrightnessManager:Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;

    if-eqz v0, :cond_1

    .line 681
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBrightnessManager:Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;

    .line 682
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "limit_brightness_state"

    iget v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    invoke-static {v1, v2, v4, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    .line 681
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->setScreenBrightnessForPreview(I)V

    .line 685
    :cond_1
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 674
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 697
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onStart()V

    .line 698
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.samsung.android.sm.BOOST_MODE_START"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 699
    .local v0, "filterBoostStart":Landroid/content/IntentFilter;
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.samsung.android.sm.POWER_MODE_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 700
    .local v1, "filterPowerChange":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 701
    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 696
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 706
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onStop()V

    .line 707
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 705
    return-void
.end method

.method public updateEstimatedTimeonHeader()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 657
    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    iget v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBatteryLevel:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTIme(Landroid/content/Context;II)I

    move-result v0

    .line 658
    .local v0, "time":I
    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v1

    .line 659
    .local v1, "timeString":Ljava/lang/String;
    if-gtz v0, :cond_0

    .line 660
    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBottomDescriptionTv:Landroid/widget/TextView;

    .line 661
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 662
    const v4, 0x7f0a01fc

    .line 661
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    .line 660
    invoke-virtual {v2, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 663
    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBottomDescriptionTv:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 654
    :goto_0
    return-void

    .line 665
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->setEstimatedTimeTextSize(I)V

    goto :goto_0
.end method
