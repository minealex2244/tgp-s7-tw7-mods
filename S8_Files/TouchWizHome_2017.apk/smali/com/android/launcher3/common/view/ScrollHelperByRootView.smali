.class Lcom/android/launcher3/common/view/ScrollHelperByRootView;
.super Ljava/lang/Object;
.source "ScrollHelperByRootView.java"


# static fields
.field private static final X:I = 0x0

.field private static final Y:I = 0x1


# instance fields
.field private mDistanceFromPress:[F

.field private mGradientCount:I

.field private mLastGradient:F

.field private mPressed:Z

.field private mPressedXY:[F

.field private mSumOfAccelaration:F

.field private mTouch:[F

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mLastGradient:F

    .line 11
    iput v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mSumOfAccelaration:F

    .line 12
    iput v2, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mGradientCount:I

    .line 14
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mPressedXY:[F

    .line 15
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mTouch:[F

    .line 16
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mDistanceFromPress:[F

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 19
    iput-boolean v2, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mPressed:Z

    return-void
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 30
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 33
    return-void
.end method

.method private getDistanceFromPress()[F
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 107
    iget-object v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mDistanceFromPress:[F

    iget-object v1, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mTouch:[F

    aget v1, v1, v3

    iget-object v2, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mPressedXY:[F

    aget v2, v2, v3

    sub-float/2addr v1, v2

    aput v1, v0, v3

    .line 108
    iget-object v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mDistanceFromPress:[F

    iget-object v1, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mTouch:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mPressedXY:[F

    aget v2, v2, v4

    sub-float/2addr v1, v2

    aput v1, v0, v4

    .line 109
    iget-object v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mDistanceFromPress:[F

    return-object v0
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 26
    :cond_0
    return-void
.end method

.method private reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    iput v1, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mSumOfAccelaration:F

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mGradientCount:I

    .line 84
    iput v1, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mLastGradient:F

    .line 86
    return-void
.end method

.method private setMove()V
    .locals 5

    .prologue
    .line 65
    const/16 v0, 0x10

    .line 66
    .local v0, "UNIT_PIXEL":I
    iget-object v3, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 67
    iget-object v3, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 68
    iget-object v3, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    .line 69
    .local v1, "velocityX":F
    iget-object v3, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    .line 70
    .local v2, "velocityY":F
    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->setMove(FF)V

    .line 72
    .end local v1    # "velocityX":F
    .end local v2    # "velocityY":F
    :cond_0
    return-void
.end method

.method private setMove(FF)V
    .locals 3
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .prologue
    .line 75
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    move v0, p2

    .line 76
    .local v0, "gradient":F
    :goto_0
    iget v1, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mSumOfAccelaration:F

    iget v2, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mLastGradient:F

    sub-float v2, v0, v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mSumOfAccelaration:F

    .line 77
    iget v1, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mGradientCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mGradientCount:I

    .line 78
    iput v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mLastGradient:F

    .line 79
    return-void

    .line 75
    .end local v0    # "gradient":F
    :cond_0
    div-float v0, p2, p1

    goto :goto_0
.end method

.method private setTouch([FFF)V
    .locals 1
    .param p1, "touch"    # [F
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 127
    if-eqz p1, :cond_0

    .line 128
    const/4 v0, 0x0

    aput p2, p1, v0

    .line 129
    const/4 v0, 0x1

    aput p3, p1, v0

    .line 131
    :cond_0
    return-void
.end method


# virtual methods
.method public getAverageAccelaration()F
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 98
    const v2, 0x3fcccccd    # 1.6f

    .line 99
    .local v2, "kI":F
    const v3, 0x3f4ccccd    # 0.8f

    .line 100
    .local v3, "kP":F
    iget v5, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mGradientCount:I

    if-nez v5, :cond_0

    iget v1, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mSumOfAccelaration:F

    .line 101
    .local v1, "id":F
    :goto_0
    invoke-direct {p0}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->getDistanceFromPress()[F

    move-result-object v0

    .line 102
    .local v0, "diff":[F
    aget v5, v0, v7

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1

    aget v4, v0, v8

    .line 103
    .local v4, "p":F
    :goto_1
    mul-float v5, v3, v4

    mul-float v6, v2, v1

    add-float/2addr v5, v6

    return v5

    .line 100
    .end local v0    # "diff":[F
    .end local v1    # "id":F
    .end local v4    # "p":F
    :cond_0
    iget v5, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mSumOfAccelaration:F

    iget v6, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mGradientCount:I

    int-to-float v6, v6

    div-float v1, v5, v6

    goto :goto_0

    .line 102
    .restart local v0    # "diff":[F
    .restart local v1    # "id":F
    :cond_1
    aget v5, v0, v8

    aget v6, v0, v7

    div-float v4, v5, v6

    goto :goto_1
.end method

.method public getCount()F
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mGradientCount:I

    int-to-float v0, v0

    return v0
.end method

.method public getXDistanceFromPress()F
    .locals 2

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->getDistanceFromPress()[F

    move-result-object v0

    .line 114
    .local v0, "diff":[F
    const/4 v1, 0x0

    aget v1, v0, v1

    return v1
.end method

.method public getYDistanceFromPress()F
    .locals 2

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->getDistanceFromPress()[F

    move-result-object v0

    .line 119
    .local v0, "diff":[F
    const/4 v1, 0x1

    aget v1, v0, v1

    return v1
.end method

.method public requestPress()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->releaseVelocityTracker()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mPressed:Z

    .line 38
    return-void
.end method

.method public setTouchEvent(Landroid/view/MotionEvent;)I
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 41
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 43
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 44
    .local v1, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    packed-switch v3, :pswitch_data_0

    .line 58
    :pswitch_0
    invoke-direct {p0}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->releaseVelocityTracker()V

    .line 59
    iput-boolean v2, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mPressed:Z

    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    :goto_0
    return v2

    .line 46
    :pswitch_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mPressed:Z

    .line 47
    invoke-direct {p0}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->reset()V

    .line 48
    iget-object v3, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mPressedXY:[F

    invoke-direct {p0, v3, v0, v1}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->setTouch([FFF)V

    .line 49
    iget-object v3, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mTouch:[F

    invoke-direct {p0, v3, v0, v1}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->setTouch([FFF)V

    goto :goto_0

    .line 52
    :pswitch_2
    iget-boolean v2, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mPressed:Z

    if-eqz v2, :cond_0

    .line 53
    iget-object v2, p0, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->mTouch:[F

    invoke-direct {p0, v2, v0, v1}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->setTouch([FFF)V

    .line 54
    invoke-direct {p0}, Lcom/android/launcher3/common/view/ScrollHelperByRootView;->setMove()V

    .line 56
    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
