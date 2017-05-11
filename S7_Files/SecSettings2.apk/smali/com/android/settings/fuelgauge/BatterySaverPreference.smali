.class public Lcom/android/settings/fuelgauge/BatterySaverPreference;
.super Landroid/preference/Preference;
.source "BatterySaverPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/BatterySaverPreference$1;
    }
.end annotation


# instance fields
.field private final mObserver:Landroid/database/ContentObserver;

.field private mPowerManager:Landroid/os/PowerManager;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/fuelgauge/BatterySaverPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatterySaverPreference;->updateSwitch()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    new-instance v0, Lcom/android/settings/fuelgauge/BatterySaverPreference$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fuelgauge/BatterySaverPreference$1;-><init>(Lcom/android/settings/fuelgauge/BatterySaverPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverPreference;->mObserver:Landroid/database/ContentObserver;

    .line 36
    new-instance v0, Lcom/android/settings/fuelgauge/BatterySaverPreference$2;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/BatterySaverPreference$2;-><init>(Lcom/android/settings/fuelgauge/BatterySaverPreference;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/BatterySaverPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 34
    return-void
.end method

.method private updateSwitch()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatterySaverPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 65
    .local v0, "context":Landroid/content/Context;
    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatterySaverPreference;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v5}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v2

    .line 66
    .local v2, "mode":Z
    if-eqz v2, :cond_0

    const v1, 0x7f0b1b11

    .line 68
    .local v1, "format":I
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 69
    const-string/jumbo v6, "low_power_trigger_level"

    .line 68
    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 70
    .local v3, "percent":I
    if-lez v3, :cond_1

    const v4, 0x7f0b1b14

    .line 72
    .local v4, "percentFormat":I
    :goto_1
    new-array v5, v7, [Ljava/lang/Object;

    new-array v6, v7, [Ljava/lang/Object;

    .line 73
    invoke-static {v3}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    .line 72
    invoke-virtual {v0, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/fuelgauge/BatterySaverPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 63
    return-void

    .line 67
    .end local v1    # "format":I
    .end local v3    # "percent":I
    .end local v4    # "percentFormat":I
    :cond_0
    const v1, 0x7f0b1b12

    .restart local v1    # "format":I
    goto :goto_0

    .line 71
    .restart local v3    # "percent":I
    :cond_1
    const v4, 0x7f0b1b13

    .restart local v4    # "percentFormat":I
    goto :goto_1
.end method


# virtual methods
.method public onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V
    .locals 4
    .param p1, "preferenceManager"    # Landroid/preference/PreferenceManager;

    .prologue
    const/4 v3, 0x1

    .line 48
    invoke-super {p0, p1}, Landroid/preference/Preference;->onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatterySaverPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverPreference;->mPowerManager:Landroid/os/PowerManager;

    .line 50
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverPreference;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatterySaverPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 52
    const-string/jumbo v1, "low_power_trigger_level"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatterySaverPreference;->mObserver:Landroid/database/ContentObserver;

    .line 51
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatterySaverPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 54
    const-string/jumbo v1, "low_power"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatterySaverPreference;->mObserver:Landroid/database/ContentObserver;

    .line 53
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 47
    return-void
.end method

.method protected onPrepareForRemoval()V
    .locals 2

    .prologue
    .line 59
    invoke-super {p0}, Landroid/preference/Preference;->onPrepareForRemoval()V

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatterySaverPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySaverPreference;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 58
    return-void
.end method