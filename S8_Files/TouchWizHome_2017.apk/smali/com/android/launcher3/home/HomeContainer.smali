.class public Lcom/android/launcher3/home/HomeContainer;
.super Landroid/widget/FrameLayout;
.source "HomeContainer.java"


# static fields
.field private static final FACTOR_INTERVAL:I = 0x2

.field private static final FACTOR_VALID_DECIMAL_PLACE:I = 0x2

.field private static final MAX_SWIPE_ANGLE:F = 1.2252212f

.field private static final SFINDER_CLS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyfinder.GalaxyFinderActivity"

.field private static final SFINDER_PKG_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyfinder"

.field private static final TAG:Ljava/lang/String; = "HomeContainer"

.field private static final THRESHOLD_DIST_START_SFINDER:I = 0xc8

.field private static final TOUCH_STATE_CONSUME:I = 0x1

.field private static final TOUCH_STATE_REST:I


# instance fields
.field private mActivateTouchSFinder:Z

.field private mController:Lcom/android/launcher3/home/HomeController;

.field private mDownwardFadeOutEnd:I

.field private mDownwardFadeOutStart:I

.field private mExternalPageIndicator:Landroid/view/View;

.field private mFadeOutRange:F

.field private mFirstDownX:F

.field private mFirstDownY:F

.field private mHomeAlphaRatio:F

.field private mHomeShrinkFactor:F

.field private mIsInstalledSFinder:Z

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mMultiTouch:Z

.field private mOverlayEnd:I

.field private mOverlayStart:I

.field private mPageIndicatorScaleRatio:F

.field private mPageIndicatorShrinkFactor:F

.field private mPinchDelta:I

.field private mStartedSFinder:Z

.field private mTouchPointDistance:I

.field private mTouchState:I

.field private mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

.field private mUpwardFadeOutEnd:I

.field private mUpwardFadeOutStart:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/home/HomeContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/home/HomeContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 91
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    iput-boolean v2, p0, Lcom/android/launcher3/home/HomeContainer;->mMultiTouch:Z

    .line 50
    iput v2, p0, Lcom/android/launcher3/home/HomeContainer;->mTouchPointDistance:I

    .line 51
    iput v2, p0, Lcom/android/launcher3/home/HomeContainer;->mPinchDelta:I

    .line 67
    iput v2, p0, Lcom/android/launcher3/home/HomeContainer;->mTouchState:I

    .line 71
    iput-boolean v2, p0, Lcom/android/launcher3/home/HomeContainer;->mIsInstalledSFinder:Z

    .line 72
    iput-boolean v2, p0, Lcom/android/launcher3/home/HomeContainer;->mStartedSFinder:Z

    .line 73
    iput-boolean v2, p0, Lcom/android/launcher3/home/HomeContainer;->mActivateTouchSFinder:Z

    .line 74
    iput v1, p0, Lcom/android/launcher3/home/HomeContainer;->mFirstDownY:F

    iput v1, p0, Lcom/android/launcher3/home/HomeContainer;->mFirstDownX:F

    move-object v1, p1

    .line 93
    check-cast v1, Lcom/android/launcher3/Launcher;

    iput-object v1, p0, Lcom/android/launcher3/home/HomeContainer;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 95
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 96
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0e0008

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/home/HomeContainer;->mHomeShrinkFactor:F

    .line 97
    const v1, 0x7f0e0005

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/home/HomeContainer;->mHomeAlphaRatio:F

    .line 98
    const v1, 0x7f0e0007

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/home/HomeContainer;->mPageIndicatorShrinkFactor:F

    .line 99
    const v1, 0x7f0e0006

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/home/HomeContainer;->mPageIndicatorScaleRatio:F

    .line 100
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    const-string v1, "com.samsung.android.app.galaxyfinder"

    invoke-static {p1, v1}, Lcom/android/launcher3/Utilities;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/home/HomeContainer;->mIsInstalledSFinder:Z

    .line 105
    :cond_0
    const v1, 0x7f090148

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/home/HomeContainer;->mOverlayStart:I

    .line 106
    iput v2, p0, Lcom/android/launcher3/home/HomeContainer;->mOverlayEnd:I

    .line 111
    return-void
.end method

.method private launchSfinder(Ljava/lang/String;Z)V
    .locals 9
    .param p1, "extra"    # Ljava/lang/String;
    .param p2, "isSwipeUp"    # Z

    .prologue
    const/4 v7, 0x1

    .line 370
    iget-object v6, p0, Lcom/android/launcher3/home/HomeContainer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/android/launcher3/util/BlurUtils;->blurByWindowManager(ZLandroid/view/Window;)V

    .line 371
    iput-boolean v7, p0, Lcom/android/launcher3/home/HomeContainer;->mStartedSFinder:Z

    .line 375
    if-eqz p2, :cond_0

    .line 376
    const v4, 0x7f040005

    .line 377
    .local v4, "swipeEnterAnimResId":I
    const v5, 0x7f040007

    .line 383
    .local v5, "swipeExitAnimResId":I
    :goto_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 384
    .local v2, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.samsung.android.app.galaxyfinder"

    const-string v7, "com.samsung.android.app.galaxyfinder.GalaxyFinderActivity"

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    .local v0, "compName":Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 386
    const-string v6, "launch_mode"

    invoke-virtual {v2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    const v6, 0x10008000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 388
    iget-object v6, p0, Lcom/android/launcher3/home/HomeContainer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v6, v4, v5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v6

    .line 389
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 392
    .local v3, "optBundle":Landroid/os/Bundle;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeContainer;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 401
    :goto_1
    return-void

    .line 379
    .end local v0    # "compName":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "optBundle":Landroid/os/Bundle;
    .end local v4    # "swipeEnterAnimResId":I
    .end local v5    # "swipeExitAnimResId":I
    :cond_0
    const v4, 0x7f040004

    .line 380
    .restart local v4    # "swipeEnterAnimResId":I
    const v5, 0x7f040006

    .restart local v5    # "swipeExitAnimResId":I
    goto :goto_0

    .line 393
    .restart local v0    # "compName":Landroid/content/ComponentName;
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "optBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 394
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v6, "HomeContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to launch. tag= intent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 395
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v1

    .line 396
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v6, "HomeContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Launcher does not have the permission to launch "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "or use the exported attribute for this activity. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "tag="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " intent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private updateScaleAndAlphaByTranslationY(F)V
    .locals 13
    .param p1, "translationY"    # F

    .prologue
    const/4 v9, 0x2

    const/4 v12, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    .line 325
    cmpl-float v7, p1, v12

    if-lez v7, :cond_3

    .line 326
    move v6, p1

    .line 327
    .local v6, "topOfHome":F
    iget v7, p0, Lcom/android/launcher3/home/HomeContainer;->mDownwardFadeOutStart:I

    int-to-float v7, v7

    cmpg-float v7, v6, v7

    if-gez v7, :cond_1

    .line 328
    const/high16 v2, 0x3f800000    # 1.0f

    .line 345
    .end local v6    # "topOfHome":F
    .local v2, "factor":F
    :goto_0
    invoke-static {v2, v9, v9}, Lcom/android/launcher3/Utilities;->simplifyDecimalFraction(FII)F

    .line 348
    sub-float v7, v11, v2

    iget v8, p0, Lcom/android/launcher3/home/HomeContainer;->mHomeAlphaRatio:F

    mul-float/2addr v7, v8

    sub-float v7, v11, v7

    invoke-static {v12, v7}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 349
    .local v0, "alpha":F
    iget v7, p0, Lcom/android/launcher3/home/HomeContainer;->mHomeShrinkFactor:F

    iget v8, p0, Lcom/android/launcher3/home/HomeContainer;->mHomeShrinkFactor:F

    sub-float v8, v11, v8

    mul-float/2addr v8, v2

    add-float v5, v7, v8

    .line 350
    .local v5, "scale":F
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeContainer;->setAlpha(F)V

    .line 351
    invoke-virtual {p0, v5}, Lcom/android/launcher3/home/HomeContainer;->setScaleX(F)V

    .line 352
    invoke-virtual {p0, v5}, Lcom/android/launcher3/home/HomeContainer;->setScaleY(F)V

    .line 353
    iget-object v7, p0, Lcom/android/launcher3/home/HomeContainer;->mExternalPageIndicator:Landroid/view/View;

    if-eqz v7, :cond_0

    .line 354
    iget v7, p0, Lcom/android/launcher3/home/HomeContainer;->mPageIndicatorShrinkFactor:F

    iget v8, p0, Lcom/android/launcher3/home/HomeContainer;->mPageIndicatorShrinkFactor:F

    sub-float v8, v11, v8

    sub-float v9, v11, v2

    iget v10, p0, Lcom/android/launcher3/home/HomeContainer;->mPageIndicatorScaleRatio:F

    mul-float/2addr v9, v10

    sub-float v9, v11, v9

    .line 355
    invoke-static {v12, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    mul-float/2addr v8, v9

    add-float v4, v7, v8

    .line 356
    .local v4, "indicatorScale":F
    iget-object v7, p0, Lcom/android/launcher3/home/HomeContainer;->mExternalPageIndicator:Landroid/view/View;

    invoke-virtual {v7, v4}, Landroid/view/View;->setScaleX(F)V

    .line 357
    iget-object v7, p0, Lcom/android/launcher3/home/HomeContainer;->mExternalPageIndicator:Landroid/view/View;

    invoke-virtual {v7, v4}, Landroid/view/View;->setScaleY(F)V

    .line 363
    .end local v4    # "indicatorScale":F
    :cond_0
    return-void

    .line 329
    .end local v0    # "alpha":F
    .end local v2    # "factor":F
    .end local v5    # "scale":F
    .restart local v6    # "topOfHome":F
    :cond_1
    iget v7, p0, Lcom/android/launcher3/home/HomeContainer;->mDownwardFadeOutEnd:I

    int-to-float v7, v7

    cmpg-float v7, v6, v7

    if-gez v7, :cond_2

    .line 330
    iget v7, p0, Lcom/android/launcher3/home/HomeContainer;->mDownwardFadeOutEnd:I

    int-to-float v7, v7

    sub-float/2addr v7, v6

    iget v8, p0, Lcom/android/launcher3/home/HomeContainer;->mFadeOutRange:F

    div-float/2addr v7, v8

    invoke-static {v11, v7}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .restart local v2    # "factor":F
    goto :goto_0

    .line 332
    .end local v2    # "factor":F
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "factor":F
    goto :goto_0

    .line 335
    .end local v2    # "factor":F
    .end local v6    # "topOfHome":F
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeContainer;->getHeight()I

    move-result v3

    .line 336
    .local v3, "height":I
    int-to-float v7, v3

    add-float v1, p1, v7

    .line 337
    .local v1, "bottomOfHome":F
    iget v7, p0, Lcom/android/launcher3/home/HomeContainer;->mUpwardFadeOutStart:I

    int-to-float v7, v7

    cmpl-float v7, v1, v7

    if-lez v7, :cond_4

    .line 338
    const/high16 v2, 0x3f800000    # 1.0f

    .restart local v2    # "factor":F
    goto :goto_0

    .line 339
    .end local v2    # "factor":F
    :cond_4
    iget v7, p0, Lcom/android/launcher3/home/HomeContainer;->mUpwardFadeOutEnd:I

    int-to-float v7, v7

    cmpl-float v7, v1, v7

    if-lez v7, :cond_5

    .line 340
    iget v7, p0, Lcom/android/launcher3/home/HomeContainer;->mUpwardFadeOutEnd:I

    int-to-float v7, v7

    sub-float v7, v1, v7

    iget v8, p0, Lcom/android/launcher3/home/HomeContainer;->mFadeOutRange:F

    div-float/2addr v7, v8

    invoke-static {v11, v7}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .restart local v2    # "factor":F
    goto :goto_0

    .line 342
    .end local v2    # "factor":F
    :cond_5
    cmpl-float v7, p1, v12

    if-nez v7, :cond_6

    const/4 v7, 0x1

    :goto_1
    int-to-float v2, v7

    .restart local v2    # "factor":F
    goto/16 :goto_0

    .end local v2    # "factor":F
    :cond_6
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private willStartSFinder(FF)Z
    .locals 10
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .prologue
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 412
    float-to-double v4, p2

    float-to-double v6, p1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    double-to-float v2, v4

    .line 413
    .local v2, "theta":F
    float-to-double v4, p1

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    float-to-double v6, p2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 414
    .local v0, "dist":D
    const v3, 0x3f9cd40c

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    const-wide/high16 v4, 0x4069000000000000L    # 200.0

    cmpl-double v3, v0, v4

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method bindController(Lcom/android/launcher3/common/base/controller/ControllerBase;)V
    .locals 1
    .param p1, "controller"    # Lcom/android/launcher3/common/base/controller/ControllerBase;

    .prologue
    .line 165
    instance-of v0, p1, Lcom/android/launcher3/home/HomeController;

    if-eqz v0, :cond_0

    .line 166
    check-cast p1, Lcom/android/launcher3/home/HomeController;

    .end local p1    # "controller":Lcom/android/launcher3/common/base/controller/ControllerBase;
    iput-object p1, p0, Lcom/android/launcher3/home/HomeContainer;->mController:Lcom/android/launcher3/home/HomeController;

    .line 168
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 176
    iget v2, p0, Lcom/android/launcher3/home/HomeContainer;->mTouchState:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/home/HomeContainer;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 178
    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/home/HomeContainer;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/home/HomeContainer;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    .line 179
    invoke-virtual {v2}, Lcom/android/launcher3/common/tray/TrayManager;->isMoving()Z

    move-result v2

    if-nez v2, :cond_1

    .line 180
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeContainer;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeContainer;->getAlpha()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 195
    :cond_0
    :goto_0
    return v1

    .line 184
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 185
    .local v0, "action":I
    and-int/lit16 v2, v0, 0xff

    packed-switch v2, :pswitch_data_0

    .line 195
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 187
    :pswitch_1
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/launcher3/home/HomeContainer;->mTouchState:I

    goto :goto_1

    .line 192
    :pswitch_2
    iput v1, p0, Lcom/android/launcher3/home/HomeContainer;->mTouchState:I

    goto :goto_1

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method getPinchDelta()I
    .locals 1

    .prologue
    .line 320
    iget v0, p0, Lcom/android/launcher3/home/HomeContainer;->mPinchDelta:I

    return v0
.end method

.method hasStartedSFinder()Z
    .locals 1

    .prologue
    .line 404
    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeContainer;->mStartedSFinder:Z

    return v0
.end method

.method isMultiTouch()Z
    .locals 1

    .prologue
    .line 316
    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeContainer;->mMultiTouch:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x0

    const/4 v7, 0x1

    .line 200
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    and-int/lit16 v8, v8, 0xff

    packed-switch v8, :pswitch_data_0

    .line 230
    :cond_0
    :goto_0
    :pswitch_0
    iget-boolean v8, p0, Lcom/android/launcher3/home/HomeContainer;->mMultiTouch:Z

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/android/launcher3/home/HomeContainer;->mController:Lcom/android/launcher3/home/HomeController;

    if-eqz v8, :cond_2

    iget v8, p0, Lcom/android/launcher3/home/HomeContainer;->mTouchState:I

    if-ne v8, v7, :cond_2

    iget-object v8, p0, Lcom/android/launcher3/home/HomeContainer;->mController:Lcom/android/launcher3/home/HomeController;

    .line 231
    invoke-virtual {v8}, Lcom/android/launcher3/home/HomeController;->canMoveHometray()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 232
    iget-object v8, p0, Lcom/android/launcher3/home/HomeContainer;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v8, :cond_1

    .line 233
    iget-object v7, p0, Lcom/android/launcher3/home/HomeContainer;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    iget-object v8, p0, Lcom/android/launcher3/home/HomeContainer;->mController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v7, v8, p1}, Lcom/android/launcher3/common/tray/TrayManager;->onInterceptTouchEvent(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;Landroid/view/MotionEvent;)Z

    move-result v7

    .line 263
    :goto_1
    return v7

    .line 202
    :pswitch_1
    iput-boolean v12, p0, Lcom/android/launcher3/home/HomeContainer;->mMultiTouch:Z

    goto :goto_0

    .line 206
    :pswitch_2
    iget-boolean v8, p0, Lcom/android/launcher3/home/HomeContainer;->mMultiTouch:Z

    if-eqz v8, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    if-le v8, v7, :cond_0

    .line 207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    sub-float/2addr v8, v9

    float-to-int v4, v8

    .line 208
    .local v4, "dy":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    sub-float/2addr v8, v9

    float-to-int v3, v8

    .line 209
    .local v3, "dx":I
    iget v8, p0, Lcom/android/launcher3/home/HomeContainer;->mTouchPointDistance:I

    mul-int v9, v4, v4

    mul-int v10, v3, v3

    add-int/2addr v9, v10

    int-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-int v9, v10

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/android/launcher3/home/HomeContainer;->mPinchDelta:I

    goto :goto_0

    .line 216
    .end local v3    # "dx":I
    .end local v4    # "dy":I
    :pswitch_3
    iput-boolean v12, p0, Lcom/android/launcher3/home/HomeContainer;->mActivateTouchSFinder:Z

    .line 217
    iput-boolean v12, p0, Lcom/android/launcher3/home/HomeContainer;->mMultiTouch:Z

    goto :goto_0

    .line 221
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 222
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    sub-float/2addr v8, v9

    float-to-int v4, v8

    .line 223
    .restart local v4    # "dy":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    sub-float/2addr v8, v9

    float-to-int v3, v8

    .line 224
    .restart local v3    # "dx":I
    mul-int v8, v4, v4

    mul-int v9, v3, v3

    add-int/2addr v8, v9

    int-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-int v8, v8

    iput v8, p0, Lcom/android/launcher3/home/HomeContainer;->mTouchPointDistance:I

    .line 225
    iput-boolean v7, p0, Lcom/android/launcher3/home/HomeContainer;->mMultiTouch:Z

    goto/16 :goto_0

    .line 234
    .end local v3    # "dx":I
    .end local v4    # "dy":I
    :cond_1
    iget-boolean v8, p0, Lcom/android/launcher3/home/HomeContainer;->mIsInstalledSFinder:Z

    if-eqz v8, :cond_2

    .line 235
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    .line 236
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    .line 237
    .local v6, "y":F
    iget v8, p0, Lcom/android/launcher3/home/HomeContainer;->mFirstDownX:F

    sub-float v8, v5, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 238
    .local v0, "deltaX":F
    iget v8, p0, Lcom/android/launcher3/home/HomeContainer;->mFirstDownY:F

    sub-float v8, v6, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 239
    .local v1, "deltaY":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    and-int/lit16 v8, v8, 0xff

    packed-switch v8, :pswitch_data_1

    .line 263
    .end local v0    # "deltaX":F
    .end local v1    # "deltaY":F
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_2
    :goto_2
    :pswitch_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    goto/16 :goto_1

    .line 241
    .restart local v0    # "deltaX":F
    .restart local v1    # "deltaY":F
    .restart local v5    # "x":F
    .restart local v6    # "y":F
    :pswitch_6
    iput-boolean v7, p0, Lcom/android/launcher3/home/HomeContainer;->mActivateTouchSFinder:Z

    .line 242
    iput v5, p0, Lcom/android/launcher3/home/HomeContainer;->mFirstDownX:F

    .line 243
    iput v6, p0, Lcom/android/launcher3/home/HomeContainer;->mFirstDownY:F

    .line 244
    iget-object v7, p0, Lcom/android/launcher3/home/HomeContainer;->mController:Lcom/android/launcher3/home/HomeController;

    invoke-static {v7, v5, v6}, Lcom/android/launcher3/util/event/ScrollDetector;->setBlockArea(Lcom/android/launcher3/home/HomeController;FF)Z

    .line 245
    iget-object v7, p0, Lcom/android/launcher3/home/HomeContainer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v7}, Lcom/android/launcher3/util/event/ScrollDetector;->setTalkBackEnabled(Landroid/content/Context;)Z

    goto :goto_2

    .line 248
    :pswitch_7
    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/home/HomeContainer;->willStartSFinder(FF)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-boolean v8, p0, Lcom/android/launcher3/home/HomeContainer;->mStartedSFinder:Z

    if-nez v8, :cond_2

    iget-boolean v8, p0, Lcom/android/launcher3/home/HomeContainer;->mActivateTouchSFinder:Z

    if-eqz v8, :cond_2

    .line 250
    invoke-static {}, Lcom/android/launcher3/util/event/ScrollDetector;->isMovingOnBlock()Z

    move-result v8

    if-nez v8, :cond_2

    .line 251
    iget v8, p0, Lcom/android/launcher3/home/HomeContainer;->mFirstDownY:F

    sub-float v8, v6, v8

    float-to-int v2, v8

    .line 252
    .local v2, "direction":I
    if-gez v2, :cond_3

    .line 253
    const-string v8, "swype_up"

    invoke-direct {p0, v8, v7}, Lcom/android/launcher3/home/HomeContainer;->launchSfinder(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 255
    :cond_3
    const-string v8, "swype_down"

    invoke-direct {p0, v8, v12}, Lcom/android/launcher3/home/HomeContainer;->launchSfinder(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 200
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 239
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 303
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 304
    iget-object v0, p0, Lcom/android/launcher3/home/HomeContainer;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v0, :cond_0

    .line 305
    iget v0, p0, Lcom/android/launcher3/home/HomeContainer;->mUpwardFadeOutStart:I

    sub-int v1, p5, p3

    iget v2, p0, Lcom/android/launcher3/home/HomeContainer;->mOverlayStart:I

    sub-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    .line 306
    const-string v0, "HomeContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "height is change !! mUpwardFadeOutStart : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/home/HomeContainer;->mUpwardFadeOutStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mOverlayStart : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/home/HomeContainer;->mOverlayStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " top : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bottom : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    sub-int v0, p5, p3

    iget v1, p0, Lcom/android/launcher3/home/HomeContainer;->mOverlayStart:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/home/HomeContainer;->mUpwardFadeOutStart:I

    .line 309
    sub-int v0, p5, p3

    iget v1, p0, Lcom/android/launcher3/home/HomeContainer;->mOverlayEnd:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/home/HomeContainer;->mUpwardFadeOutEnd:I

    .line 310
    iget v0, p0, Lcom/android/launcher3/home/HomeContainer;->mUpwardFadeOutStart:I

    iget v1, p0, Lcom/android/launcher3/home/HomeContainer;->mUpwardFadeOutEnd:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/home/HomeContainer;->mFadeOutRange:F

    .line 313
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 115
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 117
    iget-object v1, p0, Lcom/android/launcher3/home/HomeContainer;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/android/launcher3/home/HomeContainer;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/tray/TrayManager;->getTrayMovingRange()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/home/HomeContainer;->mOverlayEnd:I

    .line 121
    iget v1, p0, Lcom/android/launcher3/home/HomeContainer;->mOverlayStart:I

    iput v1, p0, Lcom/android/launcher3/home/HomeContainer;->mDownwardFadeOutStart:I

    .line 122
    iget v1, p0, Lcom/android/launcher3/home/HomeContainer;->mOverlayEnd:I

    iput v1, p0, Lcom/android/launcher3/home/HomeContainer;->mDownwardFadeOutEnd:I

    .line 123
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeContainer;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/home/HomeContainer;->mOverlayStart:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/home/HomeContainer;->mUpwardFadeOutStart:I

    .line 124
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeContainer;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/home/HomeContainer;->mOverlayEnd:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/home/HomeContainer;->mUpwardFadeOutEnd:I

    .line 125
    iget v1, p0, Lcom/android/launcher3/home/HomeContainer;->mUpwardFadeOutStart:I

    iget v2, p0, Lcom/android/launcher3/home/HomeContainer;->mUpwardFadeOutEnd:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/launcher3/home/HomeContainer;->mFadeOutRange:F

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/HomeContainer;->mExternalPageIndicator:Landroid/view/View;

    if-nez v1, :cond_1

    .line 130
    iget-object v1, p0, Lcom/android/launcher3/home/HomeContainer;->mController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getHomePageIndicatorView()Landroid/view/View;

    move-result-object v0

    .line 131
    .local v0, "pageIndicator":Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 132
    iput-object v0, p0, Lcom/android/launcher3/home/HomeContainer;->mExternalPageIndicator:Landroid/view/View;

    .line 135
    .end local v0    # "pageIndicator":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/launcher3/home/HomeContainer;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeContainer;->mController:Lcom/android/launcher3/home/HomeController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeContainer;->mController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->canMoveHometray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/launcher3/home/HomeContainer;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeContainer;->mController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/common/tray/TrayManager;->onTouchEvent(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 272
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method resetStartedSFinder()V
    .locals 1

    .prologue
    .line 408
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/home/HomeContainer;->mStartedSFinder:Z

    .line 409
    return-void
.end method

.method resetTouchState()V
    .locals 1

    .prologue
    .line 366
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/home/HomeContainer;->mTouchState:I

    .line 367
    return-void
.end method

.method public setAlpha(F)V
    .locals 5
    .param p1, "alpha"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 155
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 156
    const-string v1, "HomeContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAlpha : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v1, p0, Lcom/android/launcher3/home/HomeContainer;->mExternalPageIndicator:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 159
    const/4 v1, 0x0

    sub-float v2, v4, p1

    iget v3, p0, Lcom/android/launcher3/home/HomeContainer;->mPageIndicatorScaleRatio:F

    mul-float/2addr v2, v3

    sub-float v2, v4, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 160
    .local v0, "indicatorAlpha":F
    iget-object v1, p0, Lcom/android/launcher3/home/HomeContainer;->mExternalPageIndicator:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 162
    .end local v0    # "indicatorAlpha":F
    :cond_0
    return-void
.end method

.method public setTranslationY(F)V
    .locals 7
    .param p1, "translationY"    # F

    .prologue
    .line 277
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 278
    iget-object v4, p0, Lcom/android/launcher3/home/HomeContainer;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/home/HomeContainer;->mController:Lcom/android/launcher3/home/HomeController;

    if-eqz v4, :cond_0

    .line 279
    iget-object v4, p0, Lcom/android/launcher3/home/HomeContainer;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    iget-object v5, p0, Lcom/android/launcher3/home/HomeContainer;->mController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeContainer;->getHeight()I

    move-result v6

    invoke-virtual {v4, v5, p1, v6}, Lcom/android/launcher3/common/tray/TrayManager;->onChangeTrayTranslationY(Lcom/android/launcher3/common/tray/TrayManager$TrayInteractionListener;FI)V

    .line 283
    :cond_0
    iget-object v4, p0, Lcom/android/launcher3/home/HomeContainer;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    if-eqz v4, :cond_3

    .line 284
    iget-object v4, p0, Lcom/android/launcher3/home/HomeContainer;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-virtual {v4}, Lcom/android/launcher3/common/tray/TrayManager;->getTrayMovingRange()I

    move-result v0

    .line 288
    .local v0, "range":I
    :goto_0
    neg-int v3, v0

    .line 289
    .local v3, "visibleTopLimit":I
    move v2, v0

    .line 290
    .local v2, "visibleBottomLimit":I
    const/4 v4, 0x0

    cmpl-float v4, p1, v4

    if-eqz v4, :cond_4

    int-to-float v4, v3

    cmpg-float v4, p1, v4

    if-lez v4, :cond_1

    int-to-float v4, v2

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_4

    :cond_1
    const/16 v1, 0x8

    .line 292
    .local v1, "visible":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeContainer;->getVisibility()I

    move-result v4

    if-eq v4, v1, :cond_2

    .line 293
    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/HomeContainer;->setVisibility(I)V

    .line 297
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HomeContainer;->updateScaleAndAlphaByTranslationY(F)V

    .line 299
    return-void

    .line 286
    .end local v0    # "range":I
    .end local v1    # "visible":I
    .end local v2    # "visibleBottomLimit":I
    .end local v3    # "visibleTopLimit":I
    :cond_3
    iget-object v4, p0, Lcom/android/launcher3/home/HomeContainer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v4}, Lcom/android/launcher3/Utilities;->getFullScreenHeight(Landroid/app/Activity;)I

    move-result v0

    .restart local v0    # "range":I
    goto :goto_0

    .line 290
    .restart local v2    # "visibleBottomLimit":I
    .restart local v3    # "visibleTopLimit":I
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method setTrayManager(Lcom/android/launcher3/common/tray/TrayManager;)V
    .locals 0
    .param p1, "trayManager"    # Lcom/android/launcher3/common/tray/TrayManager;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/launcher3/home/HomeContainer;->mTrayManager:Lcom/android/launcher3/common/tray/TrayManager;

    .line 172
    return-void
.end method

.method public setVisibility(I)V
    .locals 4
    .param p1, "visibility"    # I

    .prologue
    .line 139
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 140
    const-string v1, "HomeContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVisibility : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v1, p0, Lcom/android/launcher3/home/HomeContainer;->mExternalPageIndicator:Landroid/view/View;

    if-nez v1, :cond_1

    .line 143
    iget-object v1, p0, Lcom/android/launcher3/home/HomeContainer;->mController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getHomePageIndicatorView()Landroid/view/View;

    move-result-object v0

    .line 144
    .local v0, "pageIndicator":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 145
    iput-object v0, p0, Lcom/android/launcher3/home/HomeContainer;->mExternalPageIndicator:Landroid/view/View;

    .line 146
    iget-object v1, p0, Lcom/android/launcher3/home/HomeContainer;->mExternalPageIndicator:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 151
    .end local v0    # "pageIndicator":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/HomeContainer;->mExternalPageIndicator:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
