.class public Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LauncherSettingsFragment"
.end annotation


# static fields
.field private static final EASY_MODE:I = 0x0

.field private static final HOME_SETTING_SHOW_EASY_MODE_TIPS:Ljava/lang/String; = "home_setting_show_easy_mode_tips"

.field private static final STANDARD_MODE:I = 0x1


# instance fields
.field private mEasyModeDeleteButton:Landroid/widget/ImageView;

.field private mEasyModeSettingButton:Landroid/widget/TextView;

.field private mIsEasyMode:Z

.field private mPreAppsButtonSetting:Landroid/preference/Preference;

.field private mPreAppsScreenGrid:Landroid/preference/Preference;

.field private mPreDayLiteSetting:Landroid/preference/Preference;

.field private mPreScreenGrid:Landroid/preference/Preference;

.field private mPreWidget:Landroid/preference/Preference;

.field private mPrefHomeScreenMode:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private setAppsButtonSetting()V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreAppsButtonSetting:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreAppsButtonSetting:Landroid/preference/Preference;

    new-instance v1, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$5;

    invoke-direct {v1, p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$5;-><init>(Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;)V

    .line 424
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 444
    :cond_0
    return-void
.end method

.method private setAppsScreenMode(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    .line 354
    const/4 v5, 0x2

    new-array v4, v5, [I

    .line 356
    .local v4, "xy":[I
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/android/launcher3/util/ScreenGridUtilities;->loadCurrentAppsGridSize(Landroid/content/Context;[I)V

    .line 357
    const/4 v5, 0x0

    aget v0, v4, v5

    .line 358
    .local v0, "columns":I
    aget v2, v4, v7

    .line 360
    .local v2, "rows":I
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher3/Utilities;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 362
    .local v1, "currentLanguage":Ljava/lang/String;
    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    if-nez v2, :cond_1

    .line 363
    const-string v5, "apps_screen_grid_summary"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 373
    .local v3, "summary":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreAppsScreenGrid:Landroid/preference/Preference;

    if-eqz v5, :cond_0

    .line 374
    iget-object v5, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreAppsScreenGrid:Landroid/preference/Preference;

    invoke-virtual {v5, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 375
    iget-object v5, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreAppsScreenGrid:Landroid/preference/Preference;

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 376
    iget-object v5, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreAppsScreenGrid:Landroid/preference/Preference;

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 377
    iget-object v5, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreAppsScreenGrid:Landroid/preference/Preference;

    new-instance v6, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$3;

    invoke-direct {v6, p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$3;-><init>(Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;)V

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 395
    :cond_0
    return-void

    .line 365
    .end local v3    # "summary":Ljava/lang/String;
    :cond_1
    const-string v5, "ar"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "fa"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 366
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/android/launcher3/Utilities;->toArabicDigits(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "X"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 367
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/android/launcher3/Utilities;->toArabicDigits(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "summary":Ljava/lang/String;
    goto :goto_0

    .line 369
    .end local v3    # "summary":Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "X"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "summary":Ljava/lang/String;
    goto :goto_0
.end method

.method private setBadgeManager()V
    .locals 3

    .prologue
    .line 299
    const-string v2, "badge_manager"

    invoke-virtual {p0, v2}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 300
    .local v0, "mBadgeManage":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 301
    new-instance v2, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$1;-><init>(Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 313
    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isSupportBadgeManage()Z

    move-result v2

    if-nez v2, :cond_1

    .line 314
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 315
    .local v1, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v1, :cond_1

    .line 316
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 318
    .end local v1    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    :cond_1
    return-void
.end method

.method private setDayLiteSetting()V
    .locals 6

    .prologue
    .line 466
    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreDayLiteSetting:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 467
    const v1, 0x7f0800a0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 468
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.samsung.android.app.spage"

    invoke-static {v4, v5}, Lcom/android/launcher3/Utilities;->getAppLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 467
    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 469
    .local v0, "title":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreDayLiteSetting:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 470
    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreDayLiteSetting:Landroid/preference/Preference;

    new-instance v2, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$7;

    invoke-direct {v2, p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$7;-><init>(Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 487
    .end local v0    # "title":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setEasyModeSetting(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "easyModeSettingLayout"    # Landroid/view/View;

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mEasyModeDeleteButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mEasyModeDeleteButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$8;-><init>(Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mEasyModeSettingButton:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 502
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mEasyModeSettingButton:Landroid/widget/TextView;

    new-instance v1, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$9;-><init>(Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 523
    :cond_1
    return-void
.end method

.method private setHideApps()V
    .locals 2

    .prologue
    .line 398
    const-string v1, "pref_hide_apps"

    invoke-virtual {p0, v1}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 399
    .local v0, "prefHideApps":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 400
    new-instance v1, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$4;

    invoke-direct {v1, p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$4;-><init>(Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 419
    :cond_0
    return-void
.end method

.method private setHomeScreenGrid(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    .line 539
    const/4 v5, 0x2

    new-array v4, v5, [I

    .line 541
    .local v4, "xy":[I
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/android/launcher3/Utilities;->loadCurrentGridSize(Landroid/content/Context;[I)V

    .line 542
    const/4 v5, 0x0

    aget v0, v4, v5

    .line 543
    .local v0, "columns":I
    aget v2, v4, v7

    .line 545
    .local v2, "rows":I
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher3/Utilities;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 547
    .local v1, "currentLanguage":Ljava/lang/String;
    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    if-nez v2, :cond_1

    .line 548
    const-string v5, "screen_grid_summary"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 558
    .local v3, "summary":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreScreenGrid:Landroid/preference/Preference;

    if-eqz v5, :cond_0

    .line 559
    iget-object v5, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreScreenGrid:Landroid/preference/Preference;

    invoke-virtual {v5, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 560
    iget-object v5, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreScreenGrid:Landroid/preference/Preference;

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 561
    iget-object v5, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreScreenGrid:Landroid/preference/Preference;

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 562
    iget-object v5, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreScreenGrid:Landroid/preference/Preference;

    new-instance v6, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$10;

    invoke-direct {v6, p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$10;-><init>(Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;)V

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 580
    :cond_0
    return-void

    .line 550
    .end local v3    # "summary":Ljava/lang/String;
    :cond_1
    const-string v5, "ar"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "fa"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 551
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/android/launcher3/Utilities;->toArabicDigits(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "X"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 552
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/android/launcher3/Utilities;->toArabicDigits(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "summary":Ljava/lang/String;
    goto :goto_0

    .line 554
    .end local v3    # "summary":Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "X"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "summary":Ljava/lang/String;
    goto :goto_0
.end method

.method private setHomeScreenMode()V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPrefHomeScreenMode:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPrefHomeScreenMode:Landroid/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 323
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPrefHomeScreenMode:Landroid/preference/Preference;

    const v1, 0x7f080042

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 329
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPrefHomeScreenMode:Landroid/preference/Preference;

    new-instance v1, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$2;-><init>(Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;)V

    .line 330
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 350
    :cond_0
    return-void

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPrefHomeScreenMode:Landroid/preference/Preference;

    const v1, 0x7f08003c

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method private setWidgetsButtonSetting()V
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreWidget:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreWidget:Landroid/preference/Preference;

    new-instance v1, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$6;

    invoke-direct {v1, p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment$6;-><init>(Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 463
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    .line 228
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 229
    const v1, 0x7f07000d

    invoke-virtual {p0, v1}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->addPreferencesFromResource(I)V

    .line 230
    const-string v1, "pref_screen_grid"

    invoke-virtual {p0, v1}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreScreenGrid:Landroid/preference/Preference;

    .line 231
    const-string v1, "pref_apps_button_setting"

    invoke-virtual {p0, v1}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreAppsButtonSetting:Landroid/preference/Preference;

    .line 232
    const-string v1, "pref_home_screen_mode"

    invoke-virtual {p0, v1}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPrefHomeScreenMode:Landroid/preference/Preference;

    .line 233
    const-string v1, "pref_hide_widgets"

    invoke-virtual {p0, v1}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreWidget:Landroid/preference/Preference;

    .line 234
    const-string v1, "pref_daylite_setting"

    invoke-virtual {p0, v1}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreDayLiteSetting:Landroid/preference/Preference;

    .line 235
    const-string v1, "pref_apps_screen_grid"

    invoke-virtual {p0, v1}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreAppsScreenGrid:Landroid/preference/Preference;

    .line 237
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "easy_mode_switch"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mIsEasyMode:Z

    .line 239
    iget-boolean v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mIsEasyMode:Z

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 240
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 285
    :goto_1
    return-void

    .line 237
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 244
    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFlexibleGrid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 245
    invoke-direct {p0, p1}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->setHomeScreenGrid(Landroid/os/Bundle;)V

    .line 250
    :goto_2
    invoke-direct {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->setHomeScreenMode()V

    .line 251
    invoke-direct {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->setBadgeManager()V

    .line 252
    invoke-direct {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->setHideApps()V

    .line 253
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 254
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreAppsButtonSetting:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 259
    :goto_3
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportEasyModeChange()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mIsEasyMode:Z

    if-eqz v0, :cond_2

    .line 260
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreScreenGrid:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 261
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPrefHomeScreenMode:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 262
    invoke-direct {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->setAppsButtonSetting()V

    .line 265
    :cond_2
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportWidgetSetting()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 266
    invoke-direct {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->setWidgetsButtonSetting()V

    .line 271
    :goto_4
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportZeroPageSetting()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 272
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.samsung.android.app.spage"

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 273
    invoke-direct {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->setDayLiteSetting()V

    .line 278
    :goto_5
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFlexibleGrid()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 279
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 280
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportEasyModeChange()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mIsEasyMode:Z

    if-nez v0, :cond_7

    .line 281
    invoke-direct {p0, p1}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->setAppsScreenMode(Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 247
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreScreenGrid:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 256
    :cond_4
    invoke-direct {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->setAppsButtonSetting()V

    goto :goto_3

    .line 268
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreWidget:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 275
    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreDayLiteSetting:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_5

    .line 283
    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreAppsScreenGrid:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 207
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 209
    .local v2, "root":Landroid/view/ViewGroup;
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportEasyModeChange()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mIsEasyMode:Z

    if-eqz v3, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 211
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v4

    .line 210
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 212
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "home_setting_show_easy_mode_tips"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 213
    const v3, 0x7f030028

    .line 214
    invoke-virtual {p1, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 215
    .local v0, "easyModeSettingLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v2, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 217
    const v3, 0x7f0f0088

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mEasyModeDeleteButton:Landroid/widget/ImageView;

    .line 218
    const v3, 0x7f0f0089

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mEasyModeSettingButton:Landroid/widget/TextView;

    .line 220
    invoke-direct {p0, v2, v0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->setEasyModeSetting(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 223
    .end local v0    # "easyModeSettingLayout":Landroid/widget/LinearLayout;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    return-object v2
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 289
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 290
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "value"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 291
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/common/model/LauncherSettings$Settings;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "set_boolean_setting"

    .line 294
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 291
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 295
    const/4 v1, 0x1

    return v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreScreenGrid:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 528
    const-string v1, "screen_grid_summary"

    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreScreenGrid:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreAppsScreenGrid:Landroid/preference/Preference;

    if-eqz v0, :cond_1

    .line 532
    const-string v1, "apps_screen_grid_summary"

    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mPreAppsScreenGrid:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    :cond_1
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 535
    return-void
.end method
