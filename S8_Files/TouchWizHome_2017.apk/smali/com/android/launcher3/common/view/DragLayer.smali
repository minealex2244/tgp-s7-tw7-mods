.class public Lcom/android/launcher3/common/view/DragLayer;
.super Lcom/android/launcher3/common/base/view/InsettableFrameLayout;
.source "DragLayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/view/DragLayer$TouchCompleteListener;,
        Lcom/android/launcher3/common/view/DragLayer$LayoutParams;
    }
.end annotation


# static fields
.field public static final ANIMATION_END_DISAPPEAR:I = 0x0

.field public static final ANIMATION_END_REMAIN_VISIBLE:I = 0x2

.field public static final ICON_FLICKING_DURATION:I = 0x1e0

.field private static final SCRIM_COLOR:I


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private mAnchorViewInitialRect:Landroid/graphics/Rect;

.field private mAnchorViewInitialScrollX:I

.field private mBackgroundAlpha:F

.field private mBackgroundImage:Landroid/widget/ImageView;

.field private mBackgroundImageAlpha:F

.field private mChildCountOnLastUpdate:I

.field private final mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

.field private mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

.field private mDropAnim:Landroid/animation/ValueAnimator;

.field private mDropView:Lcom/android/launcher3/common/drag/DragView;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mResizeFrame:Lcom/android/launcher3/home/AppWidgetResizeFrame;

.field private final mTmpXY:[I

.field private mTopViewIndex:I

.field private mTouchCompleteListener:Lcom/android/launcher3/common/view/DragLayer$TouchCompleteListener;

.field private mXDown:I

.field private mYDown:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/base/view/InsettableFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mTmpXY:[I

    .line 79
    iput-object v2, p0, Lcom/android/launcher3/common/view/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    .line 80
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    .line 81
    iput-object v2, p0, Lcom/android/launcher3/common/view/DragLayer;->mDropView:Lcom/android/launcher3/common/drag/DragView;

    .line 82
    iput-object v2, p0, Lcom/android/launcher3/common/view/DragLayer;->mAnchorViewInitialRect:Landroid/graphics/Rect;

    .line 83
    iput v3, p0, Lcom/android/launcher3/common/view/DragLayer;->mAnchorViewInitialScrollX:I

    .line 84
    iput-object v2, p0, Lcom/android/launcher3/common/view/DragLayer;->mAnchorView:Landroid/view/View;

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mChildCountOnLastUpdate:I

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mBackgroundAlpha:F

    .line 95
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mBackgroundImageAlpha:F

    .line 107
    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/view/DragLayer;->setMotionEventSplittingEnabled(Z)V

    .line 108
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/view/DragLayer;->setChildrenDrawingOrderEnabled(Z)V

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/common/view/DragLayer;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/view/DragLayer;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mAnchorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/common/view/DragLayer;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/view/DragLayer;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mAnchorViewInitialRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/launcher3/common/view/DragLayer;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/view/DragLayer;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/launcher3/common/view/DragLayer;->mAnchorViewInitialRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/launcher3/common/view/DragLayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/view/DragLayer;

    .prologue
    .line 58
    iget v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mAnchorViewInitialScrollX:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/launcher3/common/view/DragLayer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/view/DragLayer;
    .param p1, "x1"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/android/launcher3/common/view/DragLayer;->mAnchorViewInitialScrollX:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/launcher3/common/view/DragLayer;)Lcom/android/launcher3/common/drag/DragView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/view/DragLayer;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mDropView:Lcom/android/launcher3/common/drag/DragView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/common/view/DragLayer;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/view/DragLayer;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/launcher3/common/view/DragLayer;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/view/DragLayer;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/launcher3/common/view/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/launcher3/common/view/DragLayer;)Lcom/android/launcher3/common/drag/DragManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/view/DragLayer;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    return-object v0
.end method

.method private animateExtraDragView(Lcom/android/launcher3/common/drag/DragView;Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "view"    # Lcom/android/launcher3/common/drag/DragView;
    .param p2, "updateCb"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/animation/TimeInterpolator;
    .param p5, "onCompleteRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 766
    invoke-virtual {p1}, Lcom/android/launcher3/common/drag/DragView;->cancelAnimation()V

    .line 767
    invoke-virtual {p1}, Lcom/android/launcher3/common/drag/DragView;->resetLayoutParams()V

    .line 770
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 771
    .local v0, "dropAnim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 772
    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 773
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 774
    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 775
    new-instance v1, Lcom/android/launcher3/common/view/DragLayer$5;

    invoke-direct {v1, p0, p5, p1}, Lcom/android/launcher3/common/view/DragLayer$5;-><init>(Lcom/android/launcher3/common/view/DragLayer;Ljava/lang/Runnable;Lcom/android/launcher3/common/drag/DragView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 786
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 787
    return-void

    .line 773
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private handleTouchDown(Landroid/view/MotionEvent;Z)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "intercept"    # Z

    .prologue
    const/4 v3, 0x1

    .line 124
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 125
    .local v0, "hitRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v1, v4

    .line 126
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v2, v4

    .line 128
    .local v2, "y":I
    iget-object v4, p0, Lcom/android/launcher3/common/view/DragLayer;->mResizeFrame:Lcom/android/launcher3/home/AppWidgetResizeFrame;

    if-eqz v4, :cond_1

    .line 129
    iget-object v4, p0, Lcom/android/launcher3/common/view/DragLayer;->mResizeFrame:Lcom/android/launcher3/home/AppWidgetResizeFrame;

    invoke-virtual {v4, v0}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->getHitRect(Landroid/graphics/Rect;)V

    .line 130
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 131
    iget-object v4, p0, Lcom/android/launcher3/common/view/DragLayer;->mResizeFrame:Lcom/android/launcher3/home/AppWidgetResizeFrame;

    iget-object v5, p0, Lcom/android/launcher3/common/view/DragLayer;->mResizeFrame:Lcom/android/launcher3/home/AppWidgetResizeFrame;

    invoke-virtual {v5}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->getLeft()I

    move-result v5

    sub-int v5, v1, v5

    iget-object v6, p0, Lcom/android/launcher3/common/view/DragLayer;->mResizeFrame:Lcom/android/launcher3/home/AppWidgetResizeFrame;

    .line 132
    invoke-virtual {v6}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->getTop()I

    move-result v6

    sub-int v6, v2, v6

    .line 131
    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->beginResizeIfPointInRegion(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 133
    iget-object v4, p0, Lcom/android/launcher3/common/view/DragLayer;->mResizeFrame:Lcom/android/launcher3/home/AppWidgetResizeFrame;

    invoke-virtual {v4}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->onTouchDown()V

    .line 134
    iput v1, p0, Lcom/android/launcher3/common/view/DragLayer;->mXDown:I

    .line 135
    iput v2, p0, Lcom/android/launcher3/common/view/DragLayer;->mYDown:I

    .line 136
    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/view/DragLayer;->requestDisallowInterceptTouchEvent(Z)V

    .line 147
    :cond_0
    :goto_0
    return v3

    .line 142
    :cond_1
    if-nez p2, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/common/view/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->finishStageOnTouchOutSide()Z

    move-result v4

    if-nez v4, :cond_0

    .line 147
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private updateChildIndices()V
    .locals 3

    .prologue
    .line 835
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/launcher3/common/view/DragLayer;->mTopViewIndex:I

    .line 836
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/DragLayer;->getChildCount()I

    move-result v0

    .line 837
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 838
    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/view/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/common/drag/DragView;

    if-eqz v2, :cond_0

    .line 839
    iput v1, p0, Lcom/android/launcher3/common/view/DragLayer;->mTopViewIndex:I

    .line 837
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 842
    :cond_1
    iput v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mChildCountOnLastUpdate:I

    .line 843
    return-void
.end method


# virtual methods
.method public addResizeFrame(Lcom/android/launcher3/common/drag/DragState;Lcom/android/launcher3/home/LauncherAppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 8
    .param p1, "dragState"    # Lcom/android/launcher3/common/drag/DragState;
    .param p2, "widget"    # Lcom/android/launcher3/home/LauncherAppWidgetHostView;
    .param p3, "cellLayout"    # Lcom/android/launcher3/common/base/view/CellLayout;

    .prologue
    const/4 v7, -0x1

    .line 399
    iget-object v1, p0, Lcom/android/launcher3/common/view/DragLayer;->mResizeFrame:Lcom/android/launcher3/home/AppWidgetResizeFrame;

    if-eqz v1, :cond_0

    .line 400
    iget-object v1, p0, Lcom/android/launcher3/common/view/DragLayer;->mResizeFrame:Lcom/android/launcher3/home/AppWidgetResizeFrame;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    .line 401
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/common/view/DragLayer;->mResizeFrame:Lcom/android/launcher3/home/AppWidgetResizeFrame;

    .line 404
    :cond_0
    new-instance v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/home/AppWidgetResizeFrame;-><init>(Landroid/content/Context;Lcom/android/launcher3/common/drag/DragState;Lcom/android/launcher3/home/LauncherAppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/view/DragLayer;)V

    .line 407
    .local v0, "resizeFrame":Lcom/android/launcher3/home/AppWidgetResizeFrame;
    new-instance v6, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    invoke-direct {v6, v7, v7}, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;-><init>(II)V

    .line 408
    .local v6, "lp":Lcom/android/launcher3/common/view/DragLayer$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v6, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->customPosition:Z

    .line 410
    invoke-virtual {p0, v0, v6}, Lcom/android/launcher3/common/view/DragLayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 411
    iput-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mResizeFrame:Lcom/android/launcher3/home/AppWidgetResizeFrame;

    .line 412
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->snapToWidget(Z)V

    .line 413
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 414
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertEnterResizeWidgetLog(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 416
    :cond_1
    return-void
.end method

.method public animateView(Lcom/android/launcher3/common/drag/DragView;Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;ILandroid/view/View;)V
    .locals 4
    .param p1, "view"    # Lcom/android/launcher3/common/drag/DragView;
    .param p2, "updateCb"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/animation/TimeInterpolator;
    .param p5, "onCompleteRunnable"    # Ljava/lang/Runnable;
    .param p6, "animationEndStyle"    # I
    .param p7, "anchorView"    # Landroid/view/View;

    .prologue
    .line 708
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 711
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/common/view/DragLayer;->mDropView:Lcom/android/launcher3/common/drag/DragView;

    .line 712
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mDropView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragView;->cancelAnimation()V

    .line 713
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mDropView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragView;->resetLayoutParams()V

    .line 716
    iput-object p7, p0, Lcom/android/launcher3/common/view/DragLayer;->mAnchorView:Landroid/view/View;

    .line 717
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mAnchorViewInitialRect:Landroid/graphics/Rect;

    .line 720
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    .line 721
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 722
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 723
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 724
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 725
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher3/common/view/DragLayer$4;

    invoke-direct {v1, p0, p5, p6}, Lcom/android/launcher3/common/view/DragLayer$4;-><init>(Lcom/android/launcher3/common/view/DragLayer;Ljava/lang/Runnable;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 760
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 761
    return-void

    .line 723
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public animateView(Lcom/android/launcher3/common/drag/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V
    .locals 33
    .param p1, "view"    # Lcom/android/launcher3/common/drag/DragView;
    .param p2, "from"    # Landroid/graphics/Rect;
    .param p3, "to"    # Landroid/graphics/Rect;
    .param p4, "finalAlpha"    # F
    .param p5, "initScaleX"    # F
    .param p6, "initScaleY"    # F
    .param p7, "finalScaleX"    # F
    .param p8, "finalScaleY"    # F
    .param p9, "duration"    # I
    .param p10, "motionInterpolator"    # Landroid/view/animation/Interpolator;
    .param p11, "alphaInterpolator"    # Landroid/view/animation/Interpolator;
    .param p12, "onCompleteRunnable"    # Ljava/lang/Runnable;
    .param p13, "animationEndStyle"    # I
    .param p14, "anchorView"    # Landroid/view/View;

    .prologue
    .line 565
    move-object/from16 v0, p3

    iget v5, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    int-to-double v6, v5

    move-object/from16 v0, p3

    iget v5, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v8

    int-to-double v8, v5

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v0, v6

    move/from16 v30, v0

    .line 566
    .local v30, "dist":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/view/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    .line 567
    .local v32, "res":Landroid/content/res/Resources;
    const v5, 0x7f0b0018

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v0, v5

    move/from16 v31, v0

    .line 570
    .local v31, "maxDist":F
    if-gez p9, :cond_1

    .line 571
    const v5, 0x7f0b0019

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p9

    .line 572
    cmpg-float v5, v30, v31

    if-gez v5, :cond_0

    .line 573
    move/from16 v0, p9

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/common/view/DragLayer;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    div-float v7, v30, v31

    invoke-interface {v6, v7}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v0, v5

    move/from16 p9, v0

    .line 575
    :cond_0
    const v5, 0x7f0b001a

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    move/from16 v0, p9

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result p9

    .line 579
    :cond_1
    const/16 v25, 0x0

    .line 580
    .local v25, "interpolator":Landroid/animation/TimeInterpolator;
    if-eqz p11, :cond_2

    if-nez p10, :cond_3

    .line 581
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/view/DragLayer;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    move-object/from16 v25, v0

    .line 585
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/drag/DragView;->isExtraDragView()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 586
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/drag/DragView;->getAlpha()F

    move-result v15

    .line 587
    .local v15, "initAlpha":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/drag/DragView;->getScaleX()F

    move-result v10

    .line 590
    .local v10, "dropViewScale":F
    if-eqz p14, :cond_4

    .line 591
    new-instance v29, Landroid/graphics/Rect;

    invoke-direct/range {v29 .. v29}, Landroid/graphics/Rect;-><init>()V

    .line 592
    .local v29, "anchorViewRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, p14

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/view/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 593
    move-object/from16 v19, v29

    .line 594
    .local v19, "anchorViewInitialRect":Landroid/graphics/Rect;
    invoke-virtual/range {p14 .. p14}, Landroid/view/View;->getScrollX()I

    move-result v20

    .line 599
    .end local v29    # "anchorViewRect":Landroid/graphics/Rect;
    .local v20, "anchorViewInitialScrollX":I
    :goto_0
    new-instance v4, Lcom/android/launcher3/common/view/DragLayer$2;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p11

    move-object/from16 v8, p10

    move/from16 v9, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p4

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p14

    invoke-direct/range {v4 .. v20}, Lcom/android/launcher3/common/view/DragLayer$2;-><init>(Lcom/android/launcher3/common/view/DragLayer;Lcom/android/launcher3/common/drag/DragView;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;FFFFFFFLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;Landroid/graphics/Rect;I)V

    .local v4, "updateCb":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    move-object/from16 v21, p0

    move-object/from16 v22, p1

    move-object/from16 v23, v4

    move/from16 v24, p9

    move-object/from16 v26, p12

    .line 647
    invoke-direct/range {v21 .. v26}, Lcom/android/launcher3/common/view/DragLayer;->animateExtraDragView(Lcom/android/launcher3/common/drag/DragView;Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;)V

    .line 702
    .end local v19    # "anchorViewInitialRect":Landroid/graphics/Rect;
    .end local v20    # "anchorViewInitialScrollX":I
    :goto_1
    return-void

    .line 596
    .end local v4    # "updateCb":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    :cond_4
    const/16 v19, 0x0

    .line 597
    .restart local v19    # "anchorViewInitialRect":Landroid/graphics/Rect;
    const/16 v20, 0x0

    .restart local v20    # "anchorViewInitialScrollX":I
    goto :goto_0

    .line 649
    .end local v10    # "dropViewScale":F
    .end local v15    # "initAlpha":F
    .end local v19    # "anchorViewInitialRect":Landroid/graphics/Rect;
    .end local v20    # "anchorViewInitialScrollX":I
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/drag/DragView;->getAlpha()F

    move-result v15

    .line 650
    .restart local v15    # "initAlpha":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/drag/DragView;->getScaleX()F

    move-result v10

    .line 651
    .restart local v10    # "dropViewScale":F
    new-instance v4, Lcom/android/launcher3/common/view/DragLayer$3;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p11

    move-object/from16 v8, p10

    move/from16 v9, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p4

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    invoke-direct/range {v4 .. v17}, Lcom/android/launcher3/common/view/DragLayer$3;-><init>(Lcom/android/launcher3/common/view/DragLayer;Lcom/android/launcher3/common/drag/DragView;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;FFFFFFFLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .restart local v4    # "updateCb":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    move-object/from16 v21, p0

    move-object/from16 v22, p1

    move-object/from16 v23, v4

    move/from16 v24, p9

    move-object/from16 v26, p12

    move/from16 v27, p13

    move-object/from16 v28, p14

    .line 699
    invoke-virtual/range {v21 .. v28}, Lcom/android/launcher3/common/view/DragLayer;->animateView(Lcom/android/launcher3/common/drag/DragView;Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    goto :goto_1
.end method

.method public animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V
    .locals 17
    .param p1, "view"    # Lcom/android/launcher3/common/drag/DragView;
    .param p2, "fromX"    # I
    .param p3, "fromY"    # I
    .param p4, "toX"    # I
    .param p5, "toY"    # I
    .param p6, "finalAlpha"    # F
    .param p7, "initScaleX"    # F
    .param p8, "initScaleY"    # F
    .param p9, "finalScaleX"    # F
    .param p10, "finalScaleY"    # F
    .param p11, "onCompleteRunnable"    # Ljava/lang/Runnable;
    .param p12, "animationEndStyle"    # I
    .param p13, "duration"    # I
    .param p14, "anchorView"    # Landroid/view/View;

    .prologue
    .line 533
    new-instance v4, Landroid/graphics/Rect;

    .line 534
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/drag/DragView;->getMeasuredWidth()I

    move-result v2

    add-int v2, v2, p2

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/drag/DragView;->getMeasuredHeight()I

    move-result v3

    add-int v3, v3, p3

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 535
    .local v4, "from":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/drag/DragView;->getMeasuredWidth()I

    move-result v2

    add-int v2, v2, p4

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/drag/DragView;->getMeasuredHeight()I

    move-result v3

    add-int v3, v3, p5

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-direct {v5, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 536
    .local v5, "to":Landroid/graphics/Rect;
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p13

    move-object/from16 v14, p11

    move/from16 v15, p12

    move-object/from16 v16, p14

    invoke-virtual/range {v2 .. v16}, Lcom/android/launcher3/common/view/DragLayer;->animateView(Lcom/android/launcher3/common/drag/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    .line 538
    return-void
.end method

.method public animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V
    .locals 7
    .param p1, "dragView"    # Lcom/android/launcher3/common/drag/DragView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "duration"    # I
    .param p4, "onFinishAnimationRunnable"    # Ljava/lang/Runnable;
    .param p5, "anchorView"    # Landroid/view/View;

    .prologue
    .line 452
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;I)V

    .line 453
    return-void
.end method

.method public animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;I)V
    .locals 28
    .param p1, "dragView"    # Lcom/android/launcher3/common/drag/DragView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "duration"    # I
    .param p4, "onFinishAnimationRunnable"    # Ljava/lang/Runnable;
    .param p5, "anchorView"    # Landroid/view/View;
    .param p6, "translatedX"    # I

    .prologue
    .line 458
    new-instance v25, Landroid/graphics/Rect;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Rect;-><init>()V

    .line 459
    .local v25, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/view/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 461
    const/4 v3, 0x2

    new-array v0, v3, [I

    move-object/from16 v19, v0

    .line 462
    .local v19, "coord":[I
    const/high16 v18, 0x3f800000    # 1.0f

    .line 464
    .local v18, "childScale":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    if-eqz v3, :cond_0

    .line 465
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v24

    check-cast v24, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    .line 466
    .local v24, "parentChildren":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    .line 467
    .local v23, "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    .line 469
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScaleX()F

    move-result v18

    .line 470
    const/4 v3, 0x0

    move-object/from16 v0, v23

    iget v4, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->x:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v9, v9, v18

    mul-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v4, v8

    aput v4, v19, v3

    .line 471
    const/4 v3, 0x1

    move-object/from16 v0, v23

    iget v4, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->y:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v9, v9, v18

    mul-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v4, v8

    aput v4, v19, v3

    .line 476
    .end local v23    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    .end local v24    # "parentChildren":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Lcom/android/launcher3/common/view/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v26

    .line 479
    .local v26, "scale":F
    mul-float v26, v26, v18

    .line 480
    const/4 v3, 0x0

    aget v3, v19, v3

    add-int v7, v3, p6

    .line 481
    .local v7, "toX":I
    const/4 v3, 0x1

    aget v27, v19, v3

    .line 482
    .local v27, "toY":I
    move/from16 v12, v26

    .line 483
    .local v12, "toScale":F
    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/android/launcher3/common/view/IconView;

    if-eqz v3, :cond_4

    move-object/from16 v22, p2

    .line 484
    check-cast v22, Lcom/android/launcher3/common/view/IconView;

    .line 485
    .local v22, "iconView":Lcom/android/launcher3/common/view/IconView;
    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/common/view/IconView;->getIconVew()Landroid/widget/ImageView;

    move-result-object v21

    .line 486
    .local v21, "icon":Landroid/widget/ImageView;
    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Landroid/widget/FrameLayout$LayoutParams;

    .line 487
    .local v20, "frameLp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/drag/DragView;->isExtraDragView()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 493
    :goto_0
    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/common/view/IconView;->getPaddingTop()I

    move-result v3

    move-object/from16 v0, v20

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v3

    .line 494
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/drag/DragView;->isExtraDragView()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/drag/DragView;->getTopDelta()I

    move-result v3

    :goto_1
    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v12

    .line 493
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int v27, v27, v3

    .line 495
    move/from16 v0, v27

    int-to-float v3, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/drag/DragView;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v12

    mul-float/2addr v4, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v4, v8

    sub-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v27, v0

    .line 496
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/drag/DragView;->getDragVisualizeOffset()Landroid/graphics/Point;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 497
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/drag/DragView;->getDragVisualizeOffset()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    mul-float/2addr v3, v12

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int v27, v27, v3

    .line 500
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/drag/DragView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v26

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v7, v3

    .line 507
    .end local v20    # "frameLp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v21    # "icon":Landroid/widget/ImageView;
    .end local v22    # "iconView":Lcom/android/launcher3/common/view/IconView;
    :goto_2
    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->left:I

    .line 508
    .local v5, "fromX":I
    move-object/from16 v0, v25

    iget v6, v0, Landroid/graphics/Rect;->top:I

    .line 509
    .local v6, "fromY":I
    const/4 v3, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 510
    new-instance v14, Lcom/android/launcher3/common/view/DragLayer$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v14, v0, v1, v2}, Lcom/android/launcher3/common/view/DragLayer$1;-><init>(Lcom/android/launcher3/common/view/DragLayer;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 525
    .local v14, "onCompleteRunnable":Ljava/lang/Runnable;
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/drag/DragView;->getTopDelta()I

    move-result v3

    sub-int v8, v27, v3

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move v13, v12

    move/from16 v16, p3

    move-object/from16 v17, p5

    invoke-virtual/range {v3 .. v17}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V

    .line 527
    return-void

    .line 488
    .end local v5    # "fromX":I
    .end local v6    # "fromY":I
    .end local v14    # "onCompleteRunnable":Ljava/lang/Runnable;
    .restart local v20    # "frameLp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v21    # "icon":Landroid/widget/ImageView;
    .restart local v22    # "iconView":Lcom/android/launcher3/common/view/IconView;
    :cond_2
    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/common/view/IconView;->getIconSize()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/drag/DragView;->getIntrinsicIconSize()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float v12, v26, v3

    goto/16 :goto_0

    .line 494
    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 502
    .end local v20    # "frameLp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v21    # "icon":Landroid/widget/ImageView;
    .end local v22    # "iconView":Lcom/android/launcher3/common/view/IconView;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/drag/DragView;->getHeight()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, v26

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v27, v27, v3

    .line 503
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/drag/DragView;->getMeasuredWidth()I

    move-result v3

    .line 504
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, v26

    .line 503
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v7, v3

    goto :goto_2
.end method

.method public animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 7
    .param p1, "dragView"    # Lcom/android/launcher3/common/drag/DragView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "onFinishAnimationRunnable"    # Ljava/lang/Runnable;
    .param p4, "anchorView"    # Landroid/view/View;

    .prologue
    .line 447
    const/4 v3, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;I)V

    .line 448
    return-void
.end method

.method public animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;[IFFFILjava/lang/Runnable;I)V
    .locals 19
    .param p1, "dragView"    # Lcom/android/launcher3/common/drag/DragView;
    .param p2, "pos"    # [I
    .param p3, "alpha"    # F
    .param p4, "scaleX"    # F
    .param p5, "scaleY"    # F
    .param p6, "animationEndStyle"    # I
    .param p7, "onFinishRunnable"    # Ljava/lang/Runnable;
    .param p8, "duration"    # I

    .prologue
    .line 436
    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    .line 437
    .local v18, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/view/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 438
    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->left:I

    .line 439
    .local v5, "fromX":I
    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/Rect;->top:I

    .line 441
    .local v6, "fromY":I
    const/4 v3, 0x0

    aget v7, p2, v3

    const/4 v3, 0x1

    aget v8, p2, v3

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v9, p3

    move/from16 v12, p4

    move/from16 v13, p5

    move-object/from16 v14, p7

    move/from16 v15, p6

    move/from16 v16, p8

    invoke-virtual/range {v3 .. v17}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V

    .line 443
    return-void
.end method

.method public bringChildToFront(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 830
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/InsettableFrameLayout;->bringChildToFront(Landroid/view/View;)V

    .line 831
    invoke-direct {p0}, Lcom/android/launcher3/common/view/DragLayer;->updateChildIndices()V

    .line 832
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 314
    instance-of v0, p1, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    return v0
.end method

.method public clearAllResizeFrames()Z
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mResizeFrame:Lcom/android/launcher3/home/AppWidgetResizeFrame;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mResizeFrame:Lcom/android/launcher3/home/AppWidgetResizeFrame;

    invoke-virtual {v0}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->commitResize()V

    .line 389
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mResizeFrame:Lcom/android/launcher3/home/AppWidgetResizeFrame;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    .line 390
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mResizeFrame:Lcom/android/launcher3/home/AppWidgetResizeFrame;

    .line 391
    const/4 v0, 0x1

    .line 394
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearAnimatedView()V
    .locals 2

    .prologue
    .line 803
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 804
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 806
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mDropView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v0, :cond_1

    .line 807
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v1, p0, Lcom/android/launcher3/common/view/DragLayer;->mDropView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/drag/DragManager;->onDeferredEndDrag(Lcom/android/launcher3/common/drag/DragView;)V

    .line 809
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mDropView:Lcom/android/launcher3/common/drag/DragView;

    .line 810
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/DragLayer;->invalidate()V

    .line 811
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 874
    iget v1, p0, Lcom/android/launcher3/common/view/DragLayer;->mBackgroundAlpha:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 875
    iget v1, p0, Lcom/android/launcher3/common/view/DragLayer;->mBackgroundAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 876
    .local v0, "alpha":I
    shl-int/lit8 v1, v0, 0x18

    or-int/lit8 v1, v1, 0x0

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 879
    .end local v0    # "alpha":I
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/InsettableFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 880
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/drag/DragManager;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/InsettableFrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 152
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/common/view/DragLayer;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v3}, Lcom/android/launcher3/common/drag/DragManager;->isQuickOptionShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 153
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 154
    .local v0, "hitRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 155
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 156
    .local v2, "y":I
    iget-object v3, p0, Lcom/android/launcher3/common/view/DragLayer;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v3}, Lcom/android/launcher3/common/drag/DragManager;->getQuickOptionView()Lcom/android/launcher3/common/quickoption/QuickOptionView;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->getHitRect(Landroid/graphics/Rect;)V

    .line 157
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 158
    iget-object v3, p0, Lcom/android/launcher3/common/view/DragLayer;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    const-string v4, "2"

    invoke-virtual {v3, v4}, Lcom/android/launcher3/common/drag/DragManager;->removeQuickOptionView(Ljava/lang/String;)V

    .line 159
    iget-object v3, p0, Lcom/android/launcher3/common/view/DragLayer;->mResizeFrame:Lcom/android/launcher3/home/AppWidgetResizeFrame;

    if-nez v3, :cond_0

    .line 160
    const/4 v3, 0x1

    .line 164
    .end local v0    # "hitRect":Landroid/graphics/Rect;
    .end local v1    # "x":I
    .end local v2    # "y":I
    :goto_0
    return v3

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/InsettableFrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/common/drag/DragManager;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/DragLayer;->generateDefaultLayoutParams()Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/DragLayer;->generateDefaultLayoutParams()Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Lcom/android/launcher3/common/base/view/InsettableFrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/DragLayer;->generateDefaultLayoutParams()Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/launcher3/common/view/DragLayer$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 308
    new-instance v0, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/view/DragLayer;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/view/DragLayer;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/view/DragLayer;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/common/base/view/InsettableFrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/view/DragLayer;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/launcher3/common/base/view/InsettableFrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/view/DragLayer;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/common/view/DragLayer$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 303
    new-instance v0, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/launcher3/common/view/DragLayer$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 319
    new-instance v0, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getAnimatedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mDropView:Lcom/android/launcher3/common/drag/DragView;

    return-object v0
.end method

.method public getBackgroundAlpha()F
    .locals 1

    .prologue
    .line 890
    iget v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mBackgroundAlpha:F

    return v0
.end method

.method public getBackgroundImageAlpha()F
    .locals 1

    .prologue
    .line 910
    iget v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mBackgroundImageAlpha:F

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 847
    iget v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mChildCountOnLastUpdate:I

    if-eq v0, p1, :cond_0

    .line 852
    invoke-direct {p0}, Lcom/android/launcher3/common/view/DragLayer;->updateChildIndices()V

    .line 856
    :cond_0
    iget v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mTopViewIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 867
    .end local p2    # "i":I
    :cond_1
    :goto_0
    return p2

    .line 859
    .restart local p2    # "i":I
    :cond_2
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_3

    .line 861
    iget p2, p0, Lcom/android/launcher3/common/view/DragLayer;->mTopViewIndex:I

    goto :goto_0

    .line 862
    :cond_3
    iget v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mTopViewIndex:I

    if-lt p2, v0, :cond_1

    .line 867
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F
    .locals 1
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "coord"    # [I

    .prologue
    .line 253
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/common/view/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[IZ)F

    move-result v0

    return v0
.end method

.method public getDescendantCoordRelativeToSelf(Landroid/view/View;[IZ)F
    .locals 1
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "coord"    # [I
    .param p3, "includeRootScroll"    # Z

    .prologue
    .line 270
    invoke-static {p1, p0, p2, p3}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToParent(Landroid/view/View;Landroid/view/View;[IZ)F

    move-result v0

    return v0
.end method

.method public getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F
    .locals 6
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "r"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 236
    iget-object v1, p0, Lcom/android/launcher3/common/view/DragLayer;->mTmpXY:[I

    aput v4, v1, v4

    .line 237
    iget-object v1, p0, Lcom/android/launcher3/common/view/DragLayer;->mTmpXY:[I

    aput v4, v1, v5

    .line 238
    iget-object v1, p0, Lcom/android/launcher3/common/view/DragLayer;->mTmpXY:[I

    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/common/view/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v0

    .line 240
    .local v0, "scale":F
    iget-object v1, p0, Lcom/android/launcher3/common/view/DragLayer;->mTmpXY:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/android/launcher3/common/view/DragLayer;->mTmpXY:[I

    aget v2, v2, v5

    iget-object v3, p0, Lcom/android/launcher3/common/view/DragLayer;->mTmpXY:[I

    aget v3, v3, v4

    int-to-float v3, v3

    .line 241
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/launcher3/common/view/DragLayer;->mTmpXY:[I

    aget v4, v4, v5

    int-to-float v4, v4

    .line 242
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 240
    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 243
    return v0
.end method

.method public getLocationInDragLayer(Landroid/view/View;[I)F
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "loc"    # [I

    .prologue
    const/4 v1, 0x0

    .line 247
    aput v1, p2, v1

    .line 248
    const/4 v0, 0x1

    aput v1, p2, v0

    .line 249
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/common/view/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v0

    return v0
.end method

.method public getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "r"    # Landroid/graphics/Rect;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 282
    const/4 v7, 0x2

    new-array v1, v7, [I

    .line 283
    .local v1, "loc":[I
    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/view/DragLayer;->getLocationInWindow([I)V

    .line 284
    aget v5, v1, v8

    .line 285
    .local v5, "x":I
    aget v6, v1, v9

    .line 287
    .local v6, "y":I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 288
    aget v3, v1, v8

    .line 289
    .local v3, "vX":I
    aget v4, v1, v9

    .line 291
    .local v4, "vY":I
    sub-int v0, v3, v5

    .line 292
    .local v0, "left":I
    sub-int v2, v4, v6

    .line 293
    .local v2, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {p2, v0, v2, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 294
    return-void
.end method

.method public isResizeFrameArea(FF)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 419
    iget-object v1, p0, Lcom/android/launcher3/common/view/DragLayer;->mResizeFrame:Lcom/android/launcher3/home/AppWidgetResizeFrame;

    if-eqz v1, :cond_0

    .line 420
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 421
    .local v0, "hitRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/launcher3/common/view/DragLayer;->mResizeFrame:Lcom/android/launcher3/home/AppWidgetResizeFrame;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->getHitRect(Landroid/graphics/Rect;)V

    .line 422
    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 423
    iget-object v1, p0, Lcom/android/launcher3/common/view/DragLayer;->mResizeFrame:Lcom/android/launcher3/home/AppWidgetResizeFrame;

    float-to-int v2, p1

    iget-object v3, p0, Lcom/android/launcher3/common/view/DragLayer;->mResizeFrame:Lcom/android/launcher3/home/AppWidgetResizeFrame;

    invoke-virtual {v3}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    float-to-int v3, p2

    iget-object v4, p0, Lcom/android/launcher3/common/view/DragLayer;->mResizeFrame:Lcom/android/launcher3/home/AppWidgetResizeFrame;

    .line 424
    invoke-virtual {v4}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    .line 423
    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->beginResizeIfPointInRegion(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 425
    const/4 v1, 0x1

    .line 430
    .end local v0    # "hitRect":Landroid/graphics/Rect;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mapCoordInSelfToDescendent(Landroid/view/View;[I)F
    .locals 1
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "coord"    # [I

    .prologue
    .line 278
    invoke-static {p1, p0, p2}, Lcom/android/launcher3/Utilities;->mapCoordInSelfToDescendent(Landroid/view/View;Landroid/view/View;[I)F

    move-result v0

    return v0
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 819
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/view/InsettableFrameLayout;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 820
    invoke-direct {p0}, Lcom/android/launcher3/common/view/DragLayer;->updateChildIndices()V

    .line 821
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 825
    invoke-direct {p0}, Lcom/android/launcher3/common/view/DragLayer;->updateChildIndices()V

    .line 826
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 169
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 171
    .local v0, "action":I
    if-nez v0, :cond_0

    .line 172
    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/common/view/DragLayer;->handleTouchDown(Landroid/view/MotionEvent;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 182
    :goto_0
    return v1

    .line 175
    :cond_0
    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 176
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/common/view/DragLayer;->mTouchCompleteListener:Lcom/android/launcher3/common/view/DragLayer$TouchCompleteListener;

    if-eqz v1, :cond_2

    .line 177
    iget-object v1, p0, Lcom/android/launcher3/common/view/DragLayer;->mTouchCompleteListener:Lcom/android/launcher3/common/view/DragLayer$TouchCompleteListener;

    invoke-interface {v1}, Lcom/android/launcher3/common/view/DragLayer$TouchCompleteListener;->onTouchComplete()V

    .line 179
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/common/view/DragLayer;->mTouchCompleteListener:Lcom/android/launcher3/common/view/DragLayer$TouchCompleteListener;

    .line 182
    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/common/view/DragLayer;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/common/drag/DragManager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 372
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/common/base/view/InsettableFrameLayout;->onLayout(ZIIII)V

    .line 373
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/DragLayer;->getChildCount()I

    move-result v1

    .line 374
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 375
    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/view/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 376
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 377
    .local v2, "flp":Landroid/widget/FrameLayout$LayoutParams;
    instance-of v5, v2, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    if-eqz v5, :cond_0

    move-object v4, v2

    .line 378
    check-cast v4, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    .line 379
    .local v4, "lp":Lcom/android/launcher3/common/view/DragLayer$LayoutParams;
    iget-boolean v5, v4, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->customPosition:Z

    if-eqz v5, :cond_0

    .line 380
    iget v5, v4, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->x:I

    iget v6, v4, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->y:I

    iget v7, v4, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->x:I

    iget v8, v4, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->width:I

    add-int/2addr v7, v8

    iget v8, v4, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->y:I

    iget v9, v4, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->height:I

    add-int/2addr v8, v9

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 374
    .end local v4    # "lp":Lcom/android/launcher3/common/view/DragLayer$LayoutParams;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 384
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "flp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 194
    const/4 v1, 0x0

    .line 195
    .local v1, "handled":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 197
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v2, v5

    .line 198
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v3, v5

    .line 200
    .local v3, "y":I
    if-nez v0, :cond_1

    .line 201
    const/4 v5, 0x0

    invoke-direct {p0, p1, v5}, Lcom/android/launcher3/common/view/DragLayer;->handleTouchDown(Landroid/view/MotionEvent;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 225
    :cond_0
    :goto_0
    return v4

    .line 204
    :cond_1
    if-eq v0, v4, :cond_2

    const/4 v5, 0x3

    if-ne v0, v5, :cond_4

    .line 205
    :cond_2
    iget-object v5, p0, Lcom/android/launcher3/common/view/DragLayer;->mTouchCompleteListener:Lcom/android/launcher3/common/view/DragLayer$TouchCompleteListener;

    if-eqz v5, :cond_3

    .line 206
    iget-object v5, p0, Lcom/android/launcher3/common/view/DragLayer;->mTouchCompleteListener:Lcom/android/launcher3/common/view/DragLayer$TouchCompleteListener;

    invoke-interface {v5}, Lcom/android/launcher3/common/view/DragLayer$TouchCompleteListener;->onTouchComplete()V

    .line 208
    :cond_3
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/launcher3/common/view/DragLayer;->mTouchCompleteListener:Lcom/android/launcher3/common/view/DragLayer$TouchCompleteListener;

    .line 211
    :cond_4
    iget-object v5, p0, Lcom/android/launcher3/common/view/DragLayer;->mResizeFrame:Lcom/android/launcher3/home/AppWidgetResizeFrame;

    if-eqz v5, :cond_5

    .line 212
    const/4 v1, 0x1

    .line 213
    packed-switch v0, :pswitch_data_0

    .line 224
    :cond_5
    :goto_1
    if-nez v1, :cond_0

    .line 225
    iget-object v4, p0, Lcom/android/launcher3/common/view/DragLayer;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v4, p1}, Lcom/android/launcher3/common/drag/DragManager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0

    .line 215
    :pswitch_0
    iget-object v5, p0, Lcom/android/launcher3/common/view/DragLayer;->mResizeFrame:Lcom/android/launcher3/home/AppWidgetResizeFrame;

    iget v6, p0, Lcom/android/launcher3/common/view/DragLayer;->mXDown:I

    sub-int v6, v2, v6

    iget v7, p0, Lcom/android/launcher3/common/view/DragLayer;->mYDown:I

    sub-int v7, v3, v7

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->visualizeResizeForDelta(II)V

    goto :goto_1

    .line 219
    :pswitch_1
    iget-object v5, p0, Lcom/android/launcher3/common/view/DragLayer;->mResizeFrame:Lcom/android/launcher3/home/AppWidgetResizeFrame;

    iget v6, p0, Lcom/android/launcher3/common/view/DragLayer;->mXDown:I

    sub-int v6, v2, v6

    iget v7, p0, Lcom/android/launcher3/common/view/DragLayer;->mYDown:I

    sub-int v7, v3, v7

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->visualizeResizeForDelta(II)V

    .line 220
    iget-object v5, p0, Lcom/android/launcher3/common/view/DragLayer;->mResizeFrame:Lcom/android/launcher3/home/AppWidgetResizeFrame;

    invoke-virtual {v5}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->onTouchUp()V

    goto :goto_1

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removeAnimation(Lcom/android/launcher3/common/drag/DragView;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "view"    # Lcom/android/launcher3/common/drag/DragView;
    .param p2, "onCompleteRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 791
    iput-object p1, p0, Lcom/android/launcher3/common/view/DragLayer;->mDropView:Lcom/android/launcher3/common/drag/DragView;

    .line 792
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mDropView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragView;->cancelAnimation()V

    .line 793
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mDropView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragView;->resetLayoutParams()V

    .line 795
    if-eqz p2, :cond_0

    .line 796
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 799
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/DragLayer;->clearAnimatedView()V

    .line 800
    return-void
.end method

.method public setBackgroundAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 883
    iget v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mBackgroundAlpha:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 884
    iput p1, p0, Lcom/android/launcher3/common/view/DragLayer;->mBackgroundAlpha:F

    .line 885
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/DragLayer;->invalidate()V

    .line 887
    :cond_0
    return-void
.end method

.method public setBackgroundImage(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 894
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mBackgroundImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    .line 895
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mBackgroundImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 896
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mBackgroundImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mBackgroundImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 900
    :cond_0
    return-void
.end method

.method public setBackgroundImageAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 903
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mBackgroundImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mBackgroundImageAlpha:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 904
    iput p1, p0, Lcom/android/launcher3/common/view/DragLayer;->mBackgroundImageAlpha:F

    .line 905
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mBackgroundImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 907
    :cond_0
    return-void
.end method

.method public setTouchCompleteListener(Lcom/android/launcher3/common/view/DragLayer$TouchCompleteListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/launcher3/common/view/DragLayer$TouchCompleteListener;

    .prologue
    .line 914
    iput-object p1, p0, Lcom/android/launcher3/common/view/DragLayer;->mTouchCompleteListener:Lcom/android/launcher3/common/view/DragLayer$TouchCompleteListener;

    .line 915
    return-void
.end method

.method public setup(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/common/drag/DragManager;)V
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "dragMgr"    # Lcom/android/launcher3/common/drag/DragManager;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/launcher3/common/view/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 113
    iput-object p2, p0, Lcom/android/launcher3/common/view/DragLayer;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    .line 114
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/common/drag/DragManager;->setScrollView(Landroid/view/View;)V

    .line 115
    const v0, 0x7f0f0093

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/view/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mBackgroundImage:Landroid/widget/ImageView;

    .line 116
    return-void
.end method
