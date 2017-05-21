.class public Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;
.super Landroid/widget/LinearLayout;
.source "KeyguardDualClockView.java"

# interfaces
.implements Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;


# instance fields
.field private mCacheKey:Ljava/lang/String;

.field private mFontScale:F

.field private mHomecityAmpmView:Lcom/android/keyguard/KeyguardTextClock;

.field private mHomecityDateView:Lcom/android/keyguard/KeyguardTextClock;

.field private mHomecityLocaleView:Lcom/android/keyguard/KeyguardTextView;

.field private mHomecityTimeView:Lcom/android/keyguard/KeyguardTextClock;

.field private mRoamingAmpmView:Lcom/android/keyguard/KeyguardTextClock;

.field private mRoamingDateView:Lcom/android/keyguard/KeyguardTextClock;

.field private mRoamingLocaleView:Lcom/android/keyguard/KeyguardTextView;

.field private mRoamingTimeView:Lcom/android/keyguard/KeyguardTextClock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mFontScale:F

    .line 71
    return-void
.end method

.method private setHomeIcon(F)V
    .locals 11
    .param p1, "fontScale"    # F

    .prologue
    const/4 v10, 0x0

    .line 187
    iget-object v6, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v6

    sget v7, Lcom/android/keyguard/R$drawable;->lock_roaming_ic_home_mtrl:I

    .line 188
    sget v8, Lcom/android/keyguard/R$drawable;->lock_roaming_whitebg_ic_home_mtrl:I

    const/4 v9, 0x1

    .line 187
    invoke-virtual {v6, v7, v8, v9}, Lcom/android/keyguard/util/ViewStyleUtils;->updateImageStyle(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 191
    .local v1, "dwHomeIcon":Landroid/graphics/drawable/Drawable;
    iget-object v6, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/keyguard/R$dimen;->keyguard_dual_home_icon_size:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v3, v6

    .line 192
    .local v3, "homeIconSize":I
    invoke-virtual {v1, v10, v10, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 193
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {p1, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-eqz v6, :cond_0

    .line 194
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "dwHomeIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 195
    .local v0, "btHomeIcon":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 196
    .local v4, "sizeX":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 197
    .local v5, "sizeY":I
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v0, v4, v5, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 202
    .end local v0    # "btHomeIcon":Landroid/graphics/Bitmap;
    .end local v4    # "sizeX":I
    .end local v5    # "sizeY":I
    .restart local v1    # "dwHomeIcon":Landroid/graphics/drawable/Drawable;
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mHomecityLocaleView:Lcom/android/keyguard/KeyguardTextView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v1, v7, v8, v9}, Lcom/android/keyguard/KeyguardTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v2

    .line 204
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "KeyguardDualClockView"

    const-string/jumbo v7, "Exception at adding home icon!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public changeHourFormat()V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 180
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/util/SettingsHelper;->is24HourModeEnabled()Z

    move-result v0

    .line 181
    .local v0, "is24Format":Z
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mRoamingAmpmView:Lcom/android/keyguard/KeyguardTextClock;

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    .line 182
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mHomecityAmpmView:Lcom/android/keyguard/KeyguardTextClock;

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    .line 179
    return-void

    :cond_0
    move v1, v3

    .line 181
    goto :goto_0

    :cond_1
    move v2, v3

    .line 182
    goto :goto_1
.end method

.method public getClockCacheKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mCacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public hangBackgroudImageOnTheClock()V
    .locals 4

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 173
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->theme_dual_textclock_bg_image_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 174
    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$drawable;->dualclock_background_image:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 171
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 125
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v1}, Lcom/android/keyguard/KeyguardTextView;->getFontScaleInKeyguardBoundary(F)F

    move-result v0

    .line 126
    .local v0, "newKeyguardFontScale":F
    iget v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mFontScale:F

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    iput v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mFontScale:F

    .line 128
    invoke-direct {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->setHomeIcon(F)V

    .line 123
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 77
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 78
    sget v1, Lcom/android/keyguard/R$id;->keyguard_roaming_locale_view:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardTextView;

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mRoamingLocaleView:Lcom/android/keyguard/KeyguardTextView;

    .line 79
    sget v1, Lcom/android/keyguard/R$id;->keyguard_roaming_time_view:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardTextClock;

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mRoamingTimeView:Lcom/android/keyguard/KeyguardTextClock;

    .line 80
    sget v1, Lcom/android/keyguard/R$id;->keyguard_roaming_ampm_view:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardTextClock;

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mRoamingAmpmView:Lcom/android/keyguard/KeyguardTextClock;

    .line 81
    sget v1, Lcom/android/keyguard/R$id;->keyguard_roaming_date_view:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardTextClock;

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mRoamingDateView:Lcom/android/keyguard/KeyguardTextClock;

    .line 83
    sget v1, Lcom/android/keyguard/R$id;->keyguard_homecity_locale_view:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardTextView;

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mHomecityLocaleView:Lcom/android/keyguard/KeyguardTextView;

    .line 84
    sget v1, Lcom/android/keyguard/R$id;->keyguard_homecity_time_view:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardTextClock;

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mHomecityTimeView:Lcom/android/keyguard/KeyguardTextClock;

    .line 85
    sget v1, Lcom/android/keyguard/R$id;->keyguard_homecity_ampm_view:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardTextClock;

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mHomecityAmpmView:Lcom/android/keyguard/KeyguardTextClock;

    .line 86
    sget v1, Lcom/android/keyguard/R$id;->keyguard_homecity_date_view:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardTextClock;

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mHomecityDateView:Lcom/android/keyguard/KeyguardTextClock;

    .line 89
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mRoamingTimeView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardTextClock;->setElegantTextHeight(Z)V

    .line 90
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mRoamingTimeView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v1, v3}, Lcom/android/keyguard/KeyguardTextClock;->setShowCurrentUserTime(Z)V

    .line 91
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mHomecityTimeView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardTextClock;->setElegantTextHeight(Z)V

    .line 92
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mHomecityTimeView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v1, v3}, Lcom/android/keyguard/KeyguardTextClock;->setShowCurrentUserTime(Z)V

    .line 95
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/util/SettingsHelper;->getHomeTimeZone()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "autoHomeTimeZoneId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mHomecityTimeView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardTextClock;->setTimeZone(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mHomecityAmpmView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardTextClock;->setTimeZone(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mHomecityDateView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardTextClock;->setTimeZone(Ljava/lang/String;)V

    .line 103
    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardRune;->shouldAddTimeTextForRoamingTime()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 104
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mRoamingLocaleView:Lcom/android/keyguard/KeyguardTextView;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$string;->keyguard_dualclock_locale_view_korea:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardTextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/keyguard/KeyguardRune;->shouldShowSeoulTextForHomeTime()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "Asia/Seoul"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 112
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mHomecityLocaleView:Lcom/android/keyguard/KeyguardTextView;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$string;->keyguard_dualclock_locale_view_seoul:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardTextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    :goto_1
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v1}, Lcom/android/keyguard/KeyguardTextView;->getFontScaleInKeyguardBoundary(F)F

    move-result v1

    iput v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mFontScale:F

    .line 119
    iget v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mFontScale:F

    invoke-direct {p0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->setHomeIcon(F)V

    .line 76
    return-void

    .line 105
    :cond_2
    sget-boolean v1, Lcom/android/keyguard/KeyguardRune;->HIDE_ROAMING_TEXT_ON_DUAL_CLOCK:Z

    if-nez v1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mRoamingLocaleView:Lcom/android/keyguard/KeyguardTextView;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$string;->keyguard_dualclock_locale_view_roaming:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 114
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mHomecityLocaleView:Lcom/android/keyguard/KeyguardTextView;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$string;->keyguard_dualclock_locale_view_home:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public refreshTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "clock12"    # Ljava/lang/String;
    .param p2, "clock24"    # Ljava/lang/String;
    .param p3, "date"    # Ljava/lang/String;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mRoamingTimeView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardTextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mRoamingTimeView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardTextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mRoamingDateView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, p3}, Lcom/android/keyguard/KeyguardTextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mRoamingDateView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, p3}, Lcom/android/keyguard/KeyguardTextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mHomecityTimeView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardTextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mHomecityTimeView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardTextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mHomecityDateView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, p3}, Lcom/android/keyguard/KeyguardTextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mHomecityDateView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, p3}, Lcom/android/keyguard/KeyguardTextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 143
    return-void
.end method

.method public setClockCacheKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mCacheKey:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setCoverState(Z)V
    .locals 1
    .param p1, "isCovered"    # Z

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mRoamingLocaleView:Lcom/android/keyguard/KeyguardTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTextView;->updateFontSizeInKeyguardBoundary()V

    .line 221
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mRoamingTimeView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTextClock;->updateFontSizeInKeyguardBoundary()V

    .line 222
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mRoamingAmpmView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTextClock;->updateFontSizeInKeyguardBoundary()V

    .line 223
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mRoamingDateView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTextClock;->updateFontSizeInKeyguardBoundary()V

    .line 225
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mHomecityLocaleView:Lcom/android/keyguard/KeyguardTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTextView;->updateFontSizeInKeyguardBoundary()V

    .line 226
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mHomecityTimeView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTextClock;->updateFontSizeInKeyguardBoundary()V

    .line 227
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mHomecityAmpmView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTextClock;->updateFontSizeInKeyguardBoundary()V

    .line 228
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mHomecityDateView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTextClock;->updateFontSizeInKeyguardBoundary()V

    .line 219
    return-void
.end method

.method public setDateVisibility(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mRoamingDateView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mHomecityDateView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    .line 213
    return-void
.end method

.method public updateChildViewsLook()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 159
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mRoamingLocaleView:Lcom/android/keyguard/KeyguardTextView;

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    .line 160
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mHomecityLocaleView:Lcom/android/keyguard/KeyguardTextView;

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    .line 161
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mRoamingTimeView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, v1, v3}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    .line 162
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mHomecityTimeView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, v1, v3}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    .line 163
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mRoamingAmpmView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    .line 164
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mHomecityAmpmView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    .line 165
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mRoamingDateView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    .line 166
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mHomecityDateView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    .line 167
    iget v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->mFontScale:F

    invoke-direct {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualClockView;->setHomeIcon(F)V

    .line 158
    return-void
.end method
