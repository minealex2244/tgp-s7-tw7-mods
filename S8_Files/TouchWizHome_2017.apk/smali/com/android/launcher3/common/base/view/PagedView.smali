.class public abstract Lcom/android/launcher3/common/base/view/PagedView;
.super Landroid/view/ViewGroup;
.source "PagedView.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/base/view/PagedView$SavedState;,
        Lcom/android/launcher3/common/base/view/PagedView$ScrollInterpolator;,
        Lcom/android/launcher3/common/base/view/PagedView$LayoutParams;,
        Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;,
        Lcom/android/launcher3/common/base/view/PagedView$PageSwitchListener;
    }
.end annotation


# static fields
.field private static final ANIM_TAG_KEY:I = 0x64

.field private static final DEBUG:Z = false

.field public static final EXTRA_EMPTY_SCREEN_ID:J = -0xc9L

.field protected static final EXTRA_TOUCH_SLOP_SCALE_RATIO:F = 2.5f

.field private static final FLING_THRESHOLD_VELOCITY:I = 0x1f4

.field private static HINT_PAGE_ANIMATION_DURATION:I = 0x0

.field protected static final INVALID_PAGE:I = -0x1

.field protected static final INVALID_POINTER:I = -0x1

.field public static final INVALID_RESTORE_PAGE:I = -0x3e9

.field private static final MAX_SCROLL_PROGRESS:F = 1.0f

.field private static final MIN_FLING_VELOCITY:I = 0xfa

.field private static final MIN_LENGTH_FOR_FLING:I = 0x19

.field private static final MIN_SNAP_VELOCITY:I = 0x5dc

.field private static final NUM_ANIMATIONS_RUNNING_BEFORE_ZOOM_OUT:I = 0x2

.field private static final OVERSCROLL_DAMP_FACTOR:F = 0.32f

.field public static final PAGE_SNAP_ANIMATION_DURATION:I

.field private static final REORDERING_DROP_REPOSITION_DURATION:I = 0xc8

.field private static final REORDERING_REORDER_REPOSITION_DURATION:I = 0x12c

.field private static final REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I = 0x50

.field private static final RETURN_TO_ORIGINAL_PAGE_THRESHOLD:F = 0.33f

.field private static final SIGNIFICANT_MOVE_THRESHOLD:F = 0.4f

.field public static final SLOW_PAGE_SNAP_ANIMATION_DURATION:I = 0x3b6

.field private static final TAG:Ljava/lang/String; = "PagedView"

.field protected static final TOUCH_STATE_PINCH_ZOOM:I = 0x3

.field protected static final TOUCH_STATE_REORDERING:I = 0x2

.field protected static final TOUCH_STATE_REST:I = 0x0

.field protected static final TOUCH_STATE_SCROLLING:I = 0x1

.field private static final TRANSITION_BOUNCE_MIN_ALPHA:F = 0.7f

.field private static final TRANSITION_BOUNCE_MIN_SCALE:F = 0.96f

.field private static final sTmpIntPoint:[I

.field private static final sTmpInvMatrix:Landroid/graphics/Matrix;

.field private static final sTmpPoint:[F

.field private static final sTmpRect:Landroid/graphics/Rect;


# instance fields
.field private final SCROLL_DONE:I

.field private final SCROLL_NONE:I

.field private final SCROLL_READY_TO_PULLING:I

.field private final SCROLL_READY_TO_RETURN:I

.field private final SCROLL_START_PULLING:I

.field private final SCROLL_START_RETURN:I

.field private mActivePages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mActivePointerId:I

.field private mCancelTap:Z

.field protected mCenterPagesVertically:Z

.field protected mChildCountOnLastLayout:I

.field private mContinuallyScroll:Z

.field protected mCurrentPage:I

.field private mDefaultInterpolator:Landroid/view/animation/Interpolator;

.field private mDeferLoadAssociatedPagesUntilScrollCompletes:Z

.field private mDirtyPageContent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDownMotionX:F

.field private mDownMotionY:F

.field private mDownScrollX:F

.field protected mDragView:Landroid/view/View;

.field private mDragViewBaselineLeft:F

.field private mEnablePageIndicatorAnim:Z

.field protected mFadeInAdjacentScreens:Z

.field protected mFirstLayout:Z

.field protected mFlingThresholdVelocity:I

.field protected mForceDrawAllChildrenNextFrame:Z

.field protected mForceScreenScrolled:Z

.field protected mHintPageLeftZone:I

.field protected mHintPageRightZone:I

.field protected mHintPageWidth:I

.field protected final mInsets:Landroid/graphics/Rect;

.field private mIsDataReady:Z

.field public mIsPageMoving:Z

.field private mIsReordering:Z

.field private mIsShowingHintPages:Z

.field protected mLastMotionX:F

.field protected mLastMotionY:F

.field private mLastScreenCenter:I

.field protected mLongClickListener:Landroid/view/View$OnLongClickListener;

.field protected mMaxScrollX:I

.field private mMaximumVelocity:I

.field protected mMinFlingVelocity:I

.field private mMinScale:F

.field protected mMinSnapVelocity:I

.field protected mNextPage:I

.field private mNormalChildHeight:I

.field protected mPageBackgroundAlpha:F

.field private mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

.field private mPageIndicatorViewId:I

.field protected mPageLayoutHeightGap:I

.field protected mPageLayoutWidthGap:I

.field private mPageScrollListener:Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;

.field private mPageScrolls:[I

.field protected mPageSpacing:I

.field private mPageSwitchListener:Lcom/android/launcher3/common/base/view/PagedView$PageSwitchListener;

.field private mParentDownMotionX:F

.field private mParentDownMotionY:F

.field private mPostReorderingPreZoomInRemainingAnimationCount:I

.field private mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

.field private mPullingPagesAnim:Landroid/animation/ObjectAnimator;

.field private mReorderingStarted:Z

.field protected mRestorePage:I

.field private mScrollState:I

.field protected mScroller:Lcom/android/launcher3/common/base/PageScroller;

.field private mSidePageHoverIndex:I

.field private mSidePageHoverRunnable:Ljava/lang/Runnable;

.field protected mTempVisiblePagesRange:[I

.field protected mTotalMotionX:F

.field protected mTouchSlop:I

.field protected mTouchState:I

.field private mTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

.field private mTranslateAllPages:F

.field protected mTranslatePagesOffset:F

.field protected mUnboundedScrollX:I

.field private mUseMinScale:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewport:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 83
    sget-boolean v0, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x190

    :goto_0
    sput v0, Lcom/android/launcher3/common/base/view/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    .line 198
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/base/view/PagedView;->sTmpInvMatrix:Landroid/graphics/Matrix;

    .line 199
    new-array v0, v1, [F

    sput-object v0, Lcom/android/launcher3/common/base/view/PagedView;->sTmpPoint:[F

    .line 200
    new-array v0, v1, [I

    sput-object v0, Lcom/android/launcher3/common/base/view/PagedView;->sTmpIntPoint:[I

    .line 201
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/base/view/PagedView;->sTmpRect:Landroid/graphics/Rect;

    .line 221
    const/16 v0, 0xc8

    sput v0, Lcom/android/launcher3/common/base/view/PagedView;->HINT_PAGE_ANIMATION_DURATION:I

    return-void

    .line 83
    :cond_0
    const/16 v0, 0x2ee

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 236
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/common/base/view/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 237
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 240
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/common/base/view/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 241
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 244
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    iput-boolean v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->mFirstLayout:Z

    .line 110
    const/16 v1, -0x3e9

    iput v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mRestorePage:I

    .line 113
    iput v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mNextPage:I

    .line 115
    iput v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageSpacing:I

    .line 131
    iput v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mLastScreenCenter:I

    .line 142
    iput v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    .line 143
    iput-boolean v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mForceScreenScrolled:Z

    .line 152
    new-array v1, v5, [I

    iput-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTempVisiblePagesRange:[I

    .line 157
    iput v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mActivePointerId:I

    .line 162
    iput-boolean v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mFadeInAdjacentScreens:Z

    .line 164
    iput-boolean v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsPageMoving:Z

    .line 173
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mViewport:Landroid/graphics/Rect;

    .line 182
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mMinScale:F

    .line 183
    iput-boolean v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mUseMinScale:Z

    .line 186
    iput v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mSidePageHoverIndex:I

    .line 188
    iput-boolean v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mReorderingStarted:Z

    .line 203
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mInsets:Landroid/graphics/Rect;

    .line 212
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mActivePages:Ljava/util/ArrayList;

    .line 213
    iput-boolean v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsDataReady:Z

    .line 216
    iput v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTranslateAllPages:F

    .line 217
    iput v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTranslatePagesOffset:F

    .line 218
    iput v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mHintPageLeftZone:I

    .line 219
    iput v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mHintPageRightZone:I

    .line 220
    iput v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mHintPageWidth:I

    .line 914
    new-instance v1, Lcom/android/launcher3/common/base/view/PagedView$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/common/base/view/PagedView$2;-><init>(Lcom/android/launcher3/common/base/view/PagedView;)V

    iput-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    .line 2694
    iput v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->SCROLL_NONE:I

    .line 2695
    iput v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->SCROLL_READY_TO_PULLING:I

    .line 2696
    iput v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->SCROLL_READY_TO_RETURN:I

    .line 2697
    iput v5, p0, Lcom/android/launcher3/common/base/view/PagedView;->SCROLL_START_PULLING:I

    .line 2698
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->SCROLL_START_RETURN:I

    .line 2699
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->SCROLL_DONE:I

    .line 2701
    iput v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I

    .line 2702
    iput-boolean v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsShowingHintPages:Z

    .line 2703
    iput-boolean v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mContinuallyScroll:Z

    .line 246
    sget-object v1, Lcom/sec/android/app/launcher/R$styleable;->PagedView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 249
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageLayoutWidthGap:I

    .line 251
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageLayoutHeightGap:I

    .line 253
    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicatorViewId:I

    .line 254
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 256
    invoke-virtual {p0, v2}, Lcom/android/launcher3/common/base/view/PagedView;->setHapticFeedbackEnabled(Z)V

    .line 257
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->init()V

    .line 258
    return-void
.end method

.method private abortScrollerAnimation(Z)V
    .locals 1
    .param p1, "resetNextPage"    # Z

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/PageScroller;->abortAnimation()V

    .line 468
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->isContentsRefreshable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    if-eqz v0, :cond_0

    .line 469
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->computeScroll()V

    .line 473
    :cond_0
    if-eqz p1, :cond_1

    .line 474
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mNextPage:I

    .line 476
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/common/base/view/PagedView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/base/view/PagedView;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->updateMaxScrollX()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/launcher3/common/base/view/PagedView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/base/view/PagedView;
    .param p1, "x1"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mSidePageHoverIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/launcher3/common/base/view/PagedView;)Lcom/android/launcher3/common/view/PageIndicator;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/base/view/PagedView;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/common/base/view/PagedView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/base/view/PagedView;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onPostReorderingAnimationCompleted()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/launcher3/common/base/view/PagedView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/base/view/PagedView;

    .prologue
    .line 75
    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/launcher3/common/base/view/PagedView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/base/view/PagedView;
    .param p1, "x1"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I

    return p1
.end method

.method static synthetic access$602(Lcom/android/launcher3/common/base/view/PagedView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/base/view/PagedView;
    .param p1, "x1"    # F

    .prologue
    .line 75
    iput p1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTranslateAllPages:F

    return p1
.end method

.method static synthetic access$702(Lcom/android/launcher3/common/base/view/PagedView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/base/view/PagedView;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mContinuallyScroll:Z

    return p1
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1942
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1943
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1945
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1946
    return-void
.end method

.method private animateDragViewToOriginalPosition()V
    .locals 9

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2204
    iget-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2205
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2206
    .local v0, "anim":Landroid/animation/AnimatorSet;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2207
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    const-string v3, "translationX"

    new-array v4, v7, [F

    aput v5, v4, v6

    .line 2208
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    const-string v3, "translationY"

    new-array v4, v7, [F

    aput v5, v4, v6

    .line 2209
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    const-string v4, "scaleX"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 2210
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    const-string v4, "scaleY"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 2211
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2207
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2212
    new-instance v1, Lcom/android/launcher3/common/base/view/PagedView$4;

    invoke-direct {v1, p0}, Lcom/android/launcher3/common/base/view/PagedView$4;-><init>(Lcom/android/launcher3/common/base/view/PagedView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2218
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2220
    .end local v0    # "anim":Landroid/animation/AnimatorSet;
    :cond_0
    return-void
.end method

.method private animatePullingPages()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 2781
    const-string v0, "PagedView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animatePullingPages() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getTranslationX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2782
    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I

    if-ne v0, v3, :cond_1

    .line 2783
    const-string v0, "translationX"

    new-array v1, v3, [F

    aput v4, v1, v5

    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTranslateAllPages:F

    aput v2, v1, v6

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPullingPagesAnim:Landroid/animation/ObjectAnimator;

    .line 2788
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPullingPagesAnim:Landroid/animation/ObjectAnimator;

    sget v1, Lcom/android/launcher3/common/base/view/PagedView;->HINT_PAGE_ANIMATION_DURATION:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2789
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPullingPagesAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2790
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPullingPagesAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 2791
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPullingPagesAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/launcher3/common/base/view/PagedView$7;

    invoke-direct {v1, p0}, Lcom/android/launcher3/common/base/view/PagedView$7;-><init>(Lcom/android/launcher3/common/base/view/PagedView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2804
    return-void

    .line 2784
    :cond_1
    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2785
    const-string v0, "translationX"

    new-array v1, v3, [F

    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTranslateAllPages:F

    aput v2, v1, v5

    aput v4, v1, v6

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPullingPagesAnim:Landroid/animation/ObjectAnimator;

    goto :goto_0
.end method

.method private animateTranslationPage(Landroid/view/View;FF)V
    .locals 4
    .param p1, "page"    # Landroid/view/View;
    .param p2, "from"    # F
    .param p3, "to"    # F

    .prologue
    .line 2670
    const-string v1, "translationX"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    const/4 v3, 0x1

    aput p3, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2671
    .local v0, "pageViewAnim":Landroid/animation/ObjectAnimator;
    sget v1, Lcom/android/launcher3/common/base/view/PagedView;->HINT_PAGE_ANIMATION_DURATION:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2672
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 2673
    return-void
.end method

.method private dampedOverScroll(F)V
    .locals 6
    .param p1, "amount"    # F

    .prologue
    const/4 v5, 0x0

    .line 1210
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getMeasuredWidth()I

    move-result v2

    .line 1211
    .local v2, "screenSize":I
    int-to-float v3, v2

    div-float v0, p1, v3

    .line 1213
    .local v0, "f":F
    cmpl-float v3, v0, v5

    if-nez v3, :cond_0

    .line 1229
    :goto_0
    return-void

    .line 1217
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float v3, v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/launcher3/common/base/view/PagedView;->overScrollInfluenceCurve(F)F

    move-result v4

    mul-float v0, v3, v4

    .line 1218
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 1219
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v0, v3

    .line 1222
    :cond_1
    const v3, 0x3ea3d70a    # 0.32f

    mul-float/2addr v3, v0

    int-to-float v4, v2

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1223
    .local v1, "overScrollAmount":I
    cmpg-float v3, p1, v5

    if-gez v3, :cond_2

    .line 1224
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollY()I

    move-result v3

    invoke-super {p0, v1, v3}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 1228
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->invalidate()V

    goto :goto_0

    .line 1226
    :cond_2
    iget v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mMaxScrollX:I

    add-int/2addr v3, v1

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_1
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 2021
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 2022
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 2023
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private forceFinishScroller()V
    .locals 2

    .prologue
    .line 479
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/PageScroller;->forceFinished(Z)V

    .line 482
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mNextPage:I

    .line 483
    return-void
.end method

.method private getHintCenterPage()I
    .locals 2

    .prologue
    .line 2750
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->isPageMoving()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mNextPage:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    goto :goto_0
.end method

.method private hideHintPages(I)V
    .locals 6
    .param p1, "dropScreen"    # I

    .prologue
    const/4 v5, 0x0

    .line 2640
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v2

    .line 2642
    .local v2, "pageCount":I
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I

    .line 2643
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsShowingHintPages:Z

    .line 2645
    sget-boolean v3, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mHintPageWidth:I

    neg-int v3, v3

    int-to-float v1, v3

    .line 2648
    .local v1, "from":F
    :goto_0
    if-lez p1, :cond_0

    .line 2649
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, v1, v5}, Lcom/android/launcher3/common/base/view/PagedView;->animateTranslationPage(Landroid/view/View;FF)V

    .line 2653
    :cond_0
    if-ge p1, v2, :cond_1

    .line 2654
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    neg-float v4, v1

    invoke-direct {p0, v3, v4, v5}, Lcom/android/launcher3/common/base/view/PagedView;->animateTranslationPage(Landroid/view/View;FF)V

    .line 2657
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 2658
    .local v0, "dropScreenView":Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v3

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_2

    .line 2659
    invoke-virtual {v0, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 2662
    :cond_2
    iget v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTranslateAllPages:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getTranslationX()F

    move-result v3

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_4

    .line 2663
    :cond_3
    const-string v3, "PagedView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resetPulledPages called from hideHintPage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTranslateAllPages:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2664
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getTranslationX()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2663
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2665
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->resetPulledPages()V

    .line 2667
    :cond_4
    return-void

    .line 2645
    .end local v0    # "dropScreenView":Landroid/view/View;
    .end local v1    # "from":F
    :cond_5
    iget v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mHintPageWidth:I

    int-to-float v1, v3

    goto :goto_0
.end method

.method private invalidatePageData(IZ)V
    .locals 5
    .param p1, "page"    # I
    .param p2, "immediateAndOnly"    # Z

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 2390
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->isContentsRefreshable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->isDataReady()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2416
    :cond_0
    :goto_0
    return-void

    .line 2393
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2396
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->syncPages()V

    .line 2400
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 2401
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 2400
    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/common/base/view/PagedView;->measure(II)V

    .line 2403
    const/4 v2, -0x1

    if-le p1, v2, :cond_2

    .line 2404
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/common/base/view/PagedView;->setCurrentPage(I)V

    .line 2408
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v0

    .line 2409
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 2410
    iget-object v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2409
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2414
    :cond_3
    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    invoke-direct {p0, v2, p2}, Lcom/android/launcher3/common/base/view/PagedView;->loadAssociatedPages(IZ)V

    .line 2415
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->requestLayout()V

    goto :goto_0
.end method

.method private isActivePage(I)Z
    .locals 2
    .param p1, "page"    # I

    .prologue
    .line 2442
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mActivePages:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isPullingPageTouchArea(F)Z
    .locals 1
    .param p1, "touchX"    # F

    .prologue
    .line 2754
    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mHintPageRightZone:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mHintPageLeftZone:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTouchPointInViewportWithBuffer(II)Z
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1422
    sget-object v0, Lcom/android/launcher3/common/base/view/PagedView;->sTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->mViewport:Landroid/graphics/Rect;

    .line 1423
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 1422
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1424
    sget-object v0, Lcom/android/launcher3/common/base/view/PagedView;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method private loadAssociatedPages(IZ)V
    .locals 6
    .param p1, "page"    # I
    .param p2, "immediateAndOnly"    # Z

    .prologue
    const/4 v5, 0x1

    .line 2450
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->isContentsRefreshable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2481
    :cond_0
    return-void

    .line 2453
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v0

    .line 2454
    .local v0, "count":I
    iget-object v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 2455
    iget-object v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2454
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2458
    :cond_2
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 2459
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->setActivePages(I)V

    .line 2461
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/base/view/PagedView;->syncPageItemsInternal(IZ)V

    .line 2464
    if-nez p2, :cond_0

    .line 2466
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_0

    .line 2467
    if-ne p1, v1, :cond_3

    .line 2466
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2469
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->isActivePage(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2470
    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/view/Page;

    .line 2471
    .local v2, "pageLayout":Lcom/android/launcher3/common/base/view/Page;
    invoke-interface {v2}, Lcom/android/launcher3/common/base/view/Page;->getPageItemCount()I

    move-result v3

    if-lez v3, :cond_4

    .line 2472
    invoke-interface {v2}, Lcom/android/launcher3/common/base/view/Page;->removeAllViewsOnPage()V

    .line 2474
    :cond_4
    iget-object v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2475
    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 2477
    .end local v2    # "pageLayout":Lcom/android/launcher3/common/base/view/Page;
    :cond_5
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/launcher3/common/base/view/PagedView;->syncPageItemsInternal(IZ)V

    goto :goto_2
.end method

.method private mapPointFromParentToView(Landroid/view/View;FF)[F
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 349
    sget-object v0, Lcom/android/launcher3/common/base/view/PagedView;->sTmpPoint:[F

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p2, v2

    aput v2, v0, v1

    .line 350
    sget-object v0, Lcom/android/launcher3/common/base/view/PagedView;->sTmpPoint:[F

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p3, v2

    aput v2, v0, v1

    .line 351
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/common/base/view/PagedView;->sTmpInvMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 352
    sget-object v0, Lcom/android/launcher3/common/base/view/PagedView;->sTmpInvMatrix:Landroid/graphics/Matrix;

    sget-object v1, Lcom/android/launcher3/common/base/view/PagedView;->sTmpPoint:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 353
    sget-object v0, Lcom/android/launcher3/common/base/view/PagedView;->sTmpPoint:[F

    return-object v0
.end method

.method private mapPointFromViewToParent(Landroid/view/View;FF)[F
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 340
    sget-object v0, Lcom/android/launcher3/common/base/view/PagedView;->sTmpPoint:[F

    aput p2, v0, v3

    .line 341
    sget-object v0, Lcom/android/launcher3/common/base/view/PagedView;->sTmpPoint:[F

    aput p3, v0, v4

    .line 342
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/common/base/view/PagedView;->sTmpPoint:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 343
    sget-object v0, Lcom/android/launcher3/common/base/view/PagedView;->sTmpPoint:[F

    aget v1, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, v0, v3

    .line 344
    sget-object v0, Lcom/android/launcher3/common/base/view/PagedView;->sTmpPoint:[F

    aget v1, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, v0, v4

    .line 345
    sget-object v0, Lcom/android/launcher3/common/base/view/PagedView;->sTmpPoint:[F

    return-object v0
.end method

.method private maxOverScroll()F
    .locals 3

    .prologue
    .line 1199
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1200
    .local v0, "f":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float v1, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/launcher3/common/base/view/PagedView;->overScrollInfluenceCurve(F)F

    move-result v2

    mul-float v0, v1, v2

    .line 1201
    const v1, 0x3ea3d70a    # 0.32f

    mul-float/2addr v1, v0

    return v1
.end method

.method private onPostReorderingAnimationCompleted()V
    .locals 1

    .prologue
    .line 2237
    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    .line 2238
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    if-nez v0, :cond_0

    .line 2240
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2241
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    .line 2243
    :cond_0
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1957
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 1959
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1960
    .local v1, "pointerId":I
    iget v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 1964
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 1965
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDownMotionX:F

    iput v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionX:F

    .line 1966
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionY:F

    .line 1967
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mActivePointerId:I

    .line 1968
    iget-object v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 1969
    iget-object v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1972
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 1964
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private overScrollInfluenceCurve(F)F
    .locals 2
    .param p1, "f"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1205
    sub-float/2addr p1, v1

    .line 1206
    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private overscrollEffect(Landroid/view/View;FI)V
    .locals 8
    .param p1, "page"    # Landroid/view/View;
    .param p2, "scrollProgress"    # F
    .param p3, "pageCount"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 1275
    const/16 v4, 0x21

    invoke-static {v4}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v0

    .line 1276
    .local v0, "ip":Landroid/view/animation/PathInterpolator;
    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x40400000    # 3.0f

    div-float v5, p2, v5

    .line 1277
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-virtual {v0, v5}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v5

    mul-float/2addr v4, v5

    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->maxOverScroll()F

    move-result v5

    div-float/2addr v4, v5

    sub-float v2, v6, v4

    .line 1278
    .local v2, "scaleFactor":F
    const v4, 0x3f75c28f    # 0.96f

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1280
    sget-boolean v4, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v4, :cond_0

    add-int/lit8 v1, p3, -0x1

    .line 1281
    .local v1, "overScrollLeftIndex":I
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/launcher3/common/base/view/PagedView;->indexToPage(I)I

    move-result v4

    if-ne v4, v1, :cond_1

    const/4 v4, 0x0

    cmpg-float v4, p2, v4

    if-gez v4, :cond_1

    .line 1282
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollX()I

    move-result v4

    int-to-float v3, v4

    .line 1287
    .local v3, "translationX":F
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v7

    invoke-virtual {p1, v4}, Landroid/view/View;->setPivotX(F)V

    .line 1288
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v7

    invoke-virtual {p1, v4}, Landroid/view/View;->setPivotY(F)V

    .line 1289
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 1290
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 1291
    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 1292
    div-float v4, p2, v7

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v4, v6, v4

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const v5, 0x3f333333    # 0.7f

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1294
    return-void

    .line 1280
    .end local v1    # "overScrollLeftIndex":I
    .end local v3    # "translationX":F
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1284
    .restart local v1    # "overScrollLeftIndex":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollX()I

    move-result v4

    iget v5, p0, Lcom/android/launcher3/common/base/view/PagedView;->mMaxScrollX:I

    sub-int/2addr v4, v5

    int-to-float v3, v4

    .restart local v3    # "translationX":F
    goto :goto_1
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .prologue
    .line 1949
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1950
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 1951
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1952
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1954
    :cond_0
    return-void
.end method

.method private resetTouchState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1890
    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->releaseVelocityTracker()V

    .line 1891
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->endReordering()V

    .line 1892
    iput-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCancelTap:Z

    .line 1893
    iput v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    .line 1894
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mActivePointerId:I

    .line 1895
    return-void
.end method

.method private scrollPageOnMoveEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    .line 1868
    iget v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 1870
    .local v1, "pointerIndex":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 1886
    :goto_0
    return v5

    .line 1872
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v2, v3

    .line 1873
    .local v2, "x":I
    iget v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionX:F

    float-to-int v3, v3

    sub-int v0, v3, v2

    .line 1875
    .local v0, "deltaX":I
    iget v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTotalMotionX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTotalMotionX:F

    .line 1880
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 1881
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/launcher3/common/base/view/PagedView;->scrollBy(II)V

    .line 1882
    int-to-float v3, v2

    iput v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionX:F

    goto :goto_0

    .line 1884
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->awakenScrollBars()Z

    goto :goto_0
.end method

.method private sendScrollAccessibilityEvent()V
    .locals 3

    .prologue
    .line 622
    sget-object v1, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v1}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 623
    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getNextPage()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 624
    const/16 v1, 0x1000

    .line 625
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 626
    .local v0, "ev":Landroid/view/accessibility/AccessibilityEvent;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 627
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 628
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollY()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 629
    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mMaxScrollX:I

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    .line 630
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 632
    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 635
    .end local v0    # "ev":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method

.method private setHintPageTranslation()V
    .locals 7

    .prologue
    .line 2676
    iget v5, p0, Lcom/android/launcher3/common/base/view/PagedView;->mNextPage:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2677
    .local v1, "leftPage":I
    iget v5, p0, Lcom/android/launcher3/common/base/view/PagedView;->mNextPage:I

    add-int/lit8 v5, v5, 0x1

    iget v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2679
    .local v3, "rightPage":I
    sget-boolean v5, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/android/launcher3/common/base/view/PagedView;->mHintPageWidth:I

    neg-int v5, v5

    int-to-float v4, v5

    .line 2680
    .local v4, "translationX":F
    :goto_0
    move v0, v1

    .local v0, "i":I
    :goto_1
    if-gt v0, v3, :cond_4

    .line 2681
    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2682
    .local v2, "page":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 2683
    iget v5, p0, Lcom/android/launcher3/common/base/view/PagedView;->mNextPage:I

    add-int/lit8 v5, v5, -0x1

    if-ne v0, v5, :cond_2

    .line 2684
    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v5, v4

    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 2680
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2679
    .end local v0    # "i":I
    .end local v2    # "page":Landroid/view/View;
    .end local v4    # "translationX":F
    :cond_1
    iget v5, p0, Lcom/android/launcher3/common/base/view/PagedView;->mHintPageWidth:I

    int-to-float v4, v5

    goto :goto_0

    .line 2685
    .restart local v0    # "i":I
    .restart local v2    # "page":Landroid/view/View;
    .restart local v4    # "translationX":F
    :cond_2
    iget v5, p0, Lcom/android/launcher3/common/base/view/PagedView;->mNextPage:I

    add-int/lit8 v5, v5, 0x1

    if-ne v0, v5, :cond_3

    .line 2686
    neg-float v5, v4

    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_2

    .line 2688
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_2

    .line 2692
    .end local v2    # "page":Landroid/view/View;
    :cond_4
    return-void
.end method

.method private syncPageItemsInternal(IZ)V
    .locals 2
    .param p1, "page"    # I
    .param p2, "immediateAndOnly"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2529
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2530
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/common/base/view/PagedView;->syncPageItems(IZ)V

    .line 2539
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2540
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2542
    :cond_0
    return-void
.end method

.method private updateDragViewTranslationDuringDrag()V
    .locals 5

    .prologue
    .line 357
    iget-object v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 358
    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionX:F

    iget v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDownMotionX:F

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDownScrollX:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragViewBaselineLeft:F

    iget-object v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    .line 359
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    add-float v0, v2, v3

    .line 360
    .local v0, "x":F
    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionY:F

    iget v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDownMotionY:F

    sub-float v1, v2, v3

    .line 361
    .local v1, "y":F
    iget-object v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 362
    iget-object v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 367
    .end local v0    # "x":F
    .end local v1    # "y":F
    :cond_0
    return-void
.end method

.method private updateMaxScrollX()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 938
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v0

    .line 939
    .local v0, "childCount":I
    if-lez v0, :cond_1

    .line 940
    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_0

    .line 941
    .local v1, "index":I
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollForPage(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mMaxScrollX:I

    .line 945
    .end local v1    # "index":I
    :goto_1
    return-void

    .line 940
    :cond_0
    add-int/lit8 v1, v0, -0x1

    goto :goto_0

    .line 943
    :cond_1
    iput v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mMaxScrollX:I

    goto :goto_1
.end method

.method private updatePageIndicator()V
    .locals 2

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    if-eqz v0, :cond_0

    .line 1021
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageIndicatorDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/PageIndicator;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1022
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->isReordering(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1023
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getNextPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/PageIndicator;->setActiveMarker(I)V

    .line 1026
    :cond_0
    return-void
.end method

.method private validateNewPage(I)I
    .locals 3
    .param p1, "newPage"    # I

    .prologue
    .line 486
    move v0, p1

    .line 488
    .local v0, "validatedPage":I
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 489
    return v0
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 3
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1350
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 1353
    .local v0, "focusablePage":Landroid/view/View;
    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1354
    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1356
    :cond_0
    const/16 v1, 0x11

    if-ne p2, v1, :cond_3

    .line 1357
    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    if-lez v1, :cond_1

    .line 1358
    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1366
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 1367
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1369
    :cond_2
    return-void

    .line 1360
    :cond_3
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 1361
    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 1362
    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public addMarkerForView(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 986
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->isReordering(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 987
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageIndicatorMarker(I)Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mEnablePageIndicatorAnim:Z

    invoke-virtual {v0, p1, v1, v2, p0}, Lcom/android/launcher3/common/view/PageIndicator;->addMarker(ILcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;ZLcom/android/launcher3/common/base/view/PagedView;)V

    .line 988
    :cond_0
    return-void
.end method

.method public canDragScroll()Z
    .locals 2

    .prologue
    .line 2807
    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mContinuallyScroll:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected canOverScroll()Z
    .locals 1

    .prologue
    .line 1232
    const/4 v0, 0x1

    return v0
.end method

.method protected cancelCurrentPageLongPress()V
    .locals 2

    .prologue
    .line 1572
    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1573
    .local v0, "currentPage":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1574
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 1576
    :cond_0
    return-void
.end method

.method protected cancelScroll()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 2815
    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    if-ne v0, v2, :cond_2

    .line 2816
    :cond_0
    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    if-ne v0, v2, :cond_1

    .line 2817
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->endReordering()V

    .line 2819
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->snapToDestination()V

    .line 2821
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    .line 2822
    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->releaseVelocityTracker()V

    .line 2823
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 727
    instance-of v0, p1, Lcom/android/launcher3/common/base/view/PagedView$LayoutParams;

    return v0
.end method

.method public computeScroll()V
    .locals 0

    .prologue
    .line 690
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->computeScrollHelper()Z

    .line 691
    return-void
.end method

.method protected computeScrollHelper()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, -0x1

    .line 639
    iget-object v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    invoke-virtual {v6}, Lcom/android/launcher3/common/base/PageScroller;->computeScrollOffset()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 641
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollX()I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    invoke-virtual {v6}, Lcom/android/launcher3/common/base/PageScroller;->getCurrX()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 642
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollY()I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    invoke-virtual {v6}, Lcom/android/launcher3/common/base/PageScroller;->getCurrY()I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 643
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 644
    .local v2, "scaleX":F
    iget-object v5, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    invoke-virtual {v5}, Lcom/android/launcher3/common/base/PageScroller;->getCurrX()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    div-float/2addr v6, v2

    mul-float/2addr v5, v6

    float-to-int v3, v5

    .line 645
    .local v3, "scrollX":I
    iget-object v5, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    invoke-virtual {v5}, Lcom/android/launcher3/common/base/PageScroller;->getCurrY()I

    move-result v5

    invoke-virtual {p0, v3, v5}, Lcom/android/launcher3/common/base/view/PagedView;->scrollTo(II)V

    .line 647
    .end local v2    # "scaleX":F
    .end local v3    # "scrollX":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->invalidate()V

    .line 685
    :cond_2
    :goto_0
    return v4

    .line 649
    :cond_3
    iget v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mNextPage:I

    if-eq v6, v7, :cond_6

    .line 650
    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->sendScrollAccessibilityEvent()V

    .line 652
    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    .line 653
    .local v0, "oldPage":I
    iget v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mNextPage:I

    invoke-direct {p0, v6}, Lcom/android/launcher3/common/base/view/PagedView;->validateNewPage(I)I

    move-result v6

    iput v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    .line 654
    iput v7, p0, Lcom/android/launcher3/common/base/view/PagedView;->mNextPage:I

    .line 655
    iget v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    iget v7, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v7}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollForPage(I)I

    move-result v7

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v8

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/launcher3/common/base/view/PagedView;->notifyPageChange(III)V

    .line 656
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->notifyPageSwitchListener()V

    .line 658
    iget-boolean v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    if-eqz v6, :cond_4

    iget v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    if-eq v6, v0, :cond_4

    .line 659
    iget v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v6}, Lcom/android/launcher3/common/base/view/PagedView;->loadAssociatedPages(I)V

    .line 660
    iput-boolean v5, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    .line 665
    :cond_4
    iget v5, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    if-nez v5, :cond_5

    .line 666
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->pageEndMoving()V

    .line 667
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollX()I

    move-result v5

    iget v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v6}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollForPage(I)I

    move-result v6

    if-eq v5, v6, :cond_5

    .line 668
    new-instance v1, Lcom/android/launcher3/common/base/view/PagedView$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/common/base/view/PagedView$1;-><init>(Lcom/android/launcher3/common/base/view/PagedView;)V

    .line 674
    .local v1, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->post(Ljava/lang/Runnable;)Z

    .line 678
    .end local v1    # "r":Ljava/lang/Runnable;
    :cond_5
    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onPostReorderingAnimationCompleted()V

    .line 679
    sget-object v5, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v5}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    if-eq v0, v5, :cond_2

    .line 681
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/launcher3/common/base/view/PagedView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    .end local v0    # "oldPage":I
    :cond_6
    move v4, v5

    .line 685
    goto :goto_0
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1530
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/common/base/view/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)Z

    move-result v0

    return v0
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;F)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "touchSlopScale"    # F

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1539
    iget v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1540
    .local v0, "pointerIndex":I
    const/4 v8, -0x1

    if-ne v0, v8, :cond_1

    .line 1565
    :cond_0
    :goto_0
    return v6

    .line 1545
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 1546
    .local v2, "x":F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 1547
    .local v5, "y":F
    float-to-int v8, v2

    float-to-int v9, v5

    invoke-direct {p0, v8, v9}, Lcom/android/launcher3/common/base/view/PagedView;->isTouchPointInViewportWithBuffer(II)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1551
    iget v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDownMotionX:F

    sub-float v8, v2, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-int v3, v8

    .line 1553
    .local v3, "xDiff":I
    iget v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchSlop:I

    int-to-float v8, v8

    mul-float/2addr v8, p2

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1554
    .local v1, "touchSlop":I
    if-le v3, v1, :cond_2

    move v4, v7

    .line 1556
    .local v4, "xMoved":Z
    :goto_1
    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/launcher3/util/event/ScrollDetector;->isHorizontalScroll()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1558
    iput v7, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    .line 1559
    iget v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTotalMotionX:F

    iget v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionX:F

    sub-float/2addr v8, v2

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    add-float/2addr v6, v8

    iput v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTotalMotionX:F

    .line 1560
    iput v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionX:F

    .line 1561
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onScrollInteractionBegin()V

    .line 1562
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->pageBeginMoving()V

    move v6, v7

    .line 1563
    goto :goto_0

    .end local v4    # "xMoved":Z
    :cond_2
    move v4, v6

    .line 1554
    goto :goto_1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1123
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v8

    .line 1124
    .local v8, "pageCount":I
    if-lez v8, :cond_e

    .line 1125
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getViewportWidth()I

    move-result v12

    div-int/lit8 v3, v12, 0x2

    .line 1126
    .local v3, "halfScreenSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollX()I

    move-result v12

    add-int v10, v12, v3

    .line 1128
    .local v10, "screenCenter":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/common/base/view/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher3/common/base/view/PagedView;->getVisiblePages([I)V

    .line 1129
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/common/base/view/PagedView;->mTempVisiblePagesRange:[I

    const/4 v13, 0x0

    aget v7, v12, v13

    .line 1130
    .local v7, "leftScreen":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/common/base/view/PagedView;->mTempVisiblePagesRange:[I

    const/4 v13, 0x1

    aget v9, v12, v13

    .line 1131
    .local v9, "rightScreen":I
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/launcher3/common/base/view/PagedView;->mIsShowingHintPages:Z

    if-eqz v12, :cond_5

    .line 1132
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getHintCenterPage()I

    move-result v2

    .line 1133
    .local v2, "currentPage":I
    add-int/lit8 v12, v2, -0x1

    const/4 v13, 0x0

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1134
    add-int/lit8 v12, v2, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1146
    .end local v2    # "currentPage":I
    :cond_0
    :goto_0
    if-gez v7, :cond_1

    .line 1147
    const/4 v7, 0x0

    .line 1150
    :cond_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher3/common/base/view/PagedView;->mLastScreenCenter:I

    if-ne v10, v12, :cond_2

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/launcher3/common/base/view/PagedView;->mForceScreenScrolled:Z

    if-eqz v12, :cond_3

    .line 1153
    :cond_2
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher3/common/base/view/PagedView;->mForceScreenScrolled:Z

    .line 1154
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v7, v9}, Lcom/android/launcher3/common/base/view/PagedView;->screenScrolled(III)V

    .line 1155
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/launcher3/common/base/view/PagedView;->mLastScreenCenter:I

    .line 1158
    :cond_3
    const/4 v12, -0x1

    if-eq v7, v12, :cond_e

    const/4 v12, -0x1

    if-eq v9, v12, :cond_e

    .line 1159
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getDrawingTime()J

    move-result-wide v4

    .line 1161
    .local v4, "drawingTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1162
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollX()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollY()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollX()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getRight()I

    move-result v15

    add-int/2addr v14, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getLeft()I

    move-result v15

    sub-int/2addr v14, v15

    .line 1163
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollY()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getBottom()I

    move-result v16

    add-int v15, v15, v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getTop()I

    move-result v16

    sub-int v15, v15, v16

    .line 1162
    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1166
    add-int/lit8 v6, v8, -0x1

    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_c

    .line 1167
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v11

    .line 1168
    .local v11, "v":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    if-ne v11, v12, :cond_7

    .line 1166
    :cond_4
    :goto_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 1136
    .end local v4    # "drawingTime":J
    .end local v6    # "i":I
    .end local v11    # "v":Landroid/view/View;
    :cond_5
    if-ne v7, v9, :cond_0

    .line 1137
    add-int/lit8 v12, v8, -0x1

    if-ge v9, v12, :cond_6

    .line 1138
    add-int/lit8 v9, v9, 0x1

    .line 1140
    :cond_6
    if-lez v7, :cond_0

    .line 1141
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 1169
    .restart local v4    # "drawingTime":J
    .restart local v6    # "i":I
    .restart local v11    # "v":Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/launcher3/common/base/view/PagedView;->mForceDrawAllChildrenNextFrame:Z

    if-nez v12, :cond_8

    if-gt v7, v6, :cond_b

    if-gt v6, v9, :cond_b

    .line 1170
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher3/common/base/view/PagedView;->shouldDrawChild(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 1171
    :cond_8
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportTransitionEffects()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 1172
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/launcher3/common/base/view/PagedView;->mIsPageMoving:Z

    if-eqz v12, :cond_a

    .line 1173
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v6, v10}, Lcom/android/launcher3/common/base/view/PagedView;->updatePageTransform(Landroid/view/View;II)V

    .line 1178
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11, v4, v5}, Lcom/android/launcher3/common/base/view/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_2

    .line 1175
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher3/common/base/view/PagedView;->resetTransitionEffect(Landroid/view/View;)V

    goto :goto_3

    .line 1180
    :cond_b
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportTransitionEffects()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1181
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher3/common/base/view/PagedView;->resetTransitionEffectForInvisiblePage(Landroid/view/View;)V

    goto :goto_2

    .line 1186
    .end local v11    # "v":Landroid/view/View;
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    if-eqz v12, :cond_d

    .line 1187
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12, v4, v5}, Lcom/android/launcher3/common/base/view/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 1190
    :cond_d
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher3/common/base/view/PagedView;->mForceDrawAllChildrenNextFrame:Z

    .line 1191
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1194
    .end local v3    # "halfScreenSize":I
    .end local v4    # "drawingTime":J
    .end local v6    # "i":I
    .end local v7    # "leftScreen":I
    .end local v9    # "rightScreen":I
    .end local v10    # "screenCenter":I
    :cond_e
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1373
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 4
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    const/16 v3, 0x42

    const/16 v2, 0x11

    const/4 v0, 0x1

    .line 1323
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1345
    :goto_0
    return v0

    .line 1327
    :cond_0
    sget-boolean v1, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v1, :cond_1

    .line 1328
    if-ne p2, v2, :cond_2

    .line 1329
    const/16 p2, 0x42

    .line 1334
    :cond_1
    :goto_1
    if-ne p2, v2, :cond_3

    .line 1335
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v1

    if-ltz v1, :cond_4

    .line 1336
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(I)V

    goto :goto_0

    .line 1330
    :cond_2
    if-ne p2, v3, :cond_1

    .line 1331
    const/16 p2, 0x11

    goto :goto_1

    .line 1339
    :cond_3
    if-ne p2, v3, :cond_4

    .line 1340
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4

    .line 1341
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(I)V

    goto :goto_0

    .line 1345
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dragPullingPages(F)V
    .locals 5
    .param p1, "touchX"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2707
    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    .line 2708
    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTranslateAllPages:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mContinuallyScroll:Z

    if-nez v1, :cond_4

    invoke-direct {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->isPullingPageTouchArea(F)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2709
    iput v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I

    .line 2719
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I

    if-nez v1, :cond_9

    .line 2720
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I

    .line 2721
    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getHintCenterPage()I

    move-result v0

    .line 2723
    .local v0, "currentPage":I
    sget-boolean v1, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-nez v1, :cond_6

    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mHintPageRightZone:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_6

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_6

    .line 2724
    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTranslatePagesOffset:F

    neg-float v1, v1

    iput v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTranslateAllPages:F

    .line 2734
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPullingPagesAnim:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPullingPagesAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2735
    iget-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPullingPagesAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 2737
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->animatePullingPages()V

    .line 2742
    .end local v0    # "currentPage":I
    :cond_3
    :goto_2
    return-void

    .line 2710
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->isPullingPageTouchArea(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2711
    iput-boolean v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mContinuallyScroll:Z

    goto :goto_0

    .line 2713
    :cond_5
    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 2714
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->isPullingPageTouchArea(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2715
    iput v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I

    goto :goto_0

    .line 2725
    .restart local v0    # "currentPage":I
    :cond_6
    sget-boolean v1, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-nez v1, :cond_7

    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mHintPageLeftZone:I

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_7

    if-lez v0, :cond_7

    .line 2726
    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTranslatePagesOffset:F

    iput v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTranslateAllPages:F

    goto :goto_1

    .line 2727
    :cond_7
    sget-boolean v1, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mHintPageRightZone:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_8

    if-lez v0, :cond_8

    .line 2728
    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTranslatePagesOffset:F

    neg-float v1, v1

    iput v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTranslateAllPages:F

    goto :goto_1

    .line 2729
    :cond_8
    sget-boolean v1, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mHintPageLeftZone:I

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    .line 2730
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 2731
    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTranslatePagesOffset:F

    iput v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTranslateAllPages:F

    goto :goto_1

    .line 2738
    .end local v0    # "currentPage":I
    :cond_9
    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I

    if-ne v1, v4, :cond_3

    .line 2739
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I

    .line 2740
    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->animatePullingPages()V

    goto :goto_2
.end method

.method endReordering()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2284
    iget-boolean v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mReorderingStarted:Z

    if-nez v1, :cond_0

    .line 2308
    :goto_0
    return-void

    .line 2285
    :cond_0
    iput-boolean v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mReorderingStarted:Z

    .line 2289
    new-instance v0, Lcom/android/launcher3/common/base/view/PagedView$5;

    invoke-direct {v0, p0}, Lcom/android/launcher3/common/base/view/PagedView$5;-><init>(Lcom/android/launcher3/common/base/view/PagedView;)V

    .line 2296
    .local v0, "onCompleteRunnable":Ljava/lang/Runnable;
    new-instance v1, Lcom/android/launcher3/common/base/view/PagedView$6;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/common/base/view/PagedView$6;-><init>(Lcom/android/launcher3/common/base/view/PagedView;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    .line 2302
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    .line 2305
    iget-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(II)V

    .line 2307
    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->animateDragViewToOriginalPosition()V

    goto :goto_0
.end method

.method public findIconView(Landroid/content/ComponentName;)Lcom/android/launcher3/common/view/IconView;
    .locals 10
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    const/4 v7, 0x0

    .line 2586
    if-nez p1, :cond_0

    move-object v6, v7

    .line 2612
    :goto_0
    return-object v6

    .line 2590
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v8

    if-ge v3, v8, :cond_5

    .line 2591
    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/base/view/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 2592
    .local v0, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v1

    .line 2594
    .local v1, "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v8

    if-ge v5, v8, :cond_4

    .line 2595
    invoke-virtual {v1, v5}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2597
    .local v6, "v":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v8, :cond_1

    .line 2598
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 2599
    .local v4, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    if-nez v4, :cond_2

    .line 2594
    .end local v4    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2602
    .restart local v4    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_2
    iget-object v2, v4, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    .line 2603
    .local v2, "compareCn":Landroid/content/ComponentName;
    if-nez v2, :cond_3

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 2604
    invoke-virtual {v4}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 2606
    :cond_3
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2607
    check-cast v6, Lcom/android/launcher3/common/view/IconView;

    goto :goto_0

    .line 2590
    .end local v2    # "compareCn":Landroid/content/ComponentName;
    .end local v4    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v6    # "v":Landroid/view/View;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v1    # "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    .end local v5    # "j":I
    :cond_5
    move-object v6, v7

    .line 2612
    goto :goto_0
.end method

.method public findIconViews(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .param p1, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/view/IconView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2560
    if-nez p1, :cond_1

    .line 2561
    const/4 v4, 0x0

    .line 2582
    :cond_0
    return-object v4

    .line 2564
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2566
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/view/IconView;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 2567
    invoke-virtual {p0, v2}, Lcom/android/launcher3/common/base/view/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 2568
    .local v0, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v1

    .line 2570
    .local v1, "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 2571
    invoke-virtual {v1, v3}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2573
    .local v5, "v":Landroid/view/View;
    instance-of v6, v5, Lcom/android/launcher3/common/view/IconView;

    if-eqz v6, :cond_2

    .line 2575
    const-string v6, "\\s"

    const-string v7, ""

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v5

    check-cast v6, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v6}, Lcom/android/launcher3/common/view/IconView;->getTitle()Ljava/lang/String;

    move-result-object v6

    const-string v8, "\\s"

    const-string v9, ""

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    .line 2576
    check-cast v5, Lcom/android/launcher3/common/view/IconView;

    .end local v5    # "v":Landroid/view/View;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2570
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2566
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public findPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;
    .locals 3

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 316
    .local v1, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 317
    .local v0, "grandParent":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/common/view/LauncherRootView;

    if-eqz v2, :cond_0

    .line 318
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .end local v0    # "grandParent":Landroid/view/ViewGroup;
    check-cast v0, Landroid/view/ViewGroup;

    .line 320
    .restart local v0    # "grandParent":Landroid/view/ViewGroup;
    :cond_0
    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicatorViewId:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/view/PageIndicator;

    return-object v2
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 4
    .param p1, "focused"    # Landroid/view/View;

    .prologue
    .line 1385
    iget v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1386
    .local v0, "current":Landroid/view/View;
    move-object v2, p1

    .line 1388
    .local v2, "v":Landroid/view/View;
    :goto_0
    if-ne v2, v0, :cond_1

    .line 1389
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 1399
    :cond_0
    return-void

    .line 1392
    :cond_1
    if-eq v2, p0, :cond_0

    .line 1395
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1396
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 1397
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2    # "v":Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .restart local v2    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method public forcelyAnimateReturnPages()V
    .locals 2

    .prologue
    .line 2771
    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTranslateAllPages:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 2772
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPullingPagesAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPullingPagesAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2773
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPullingPagesAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 2775
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I

    .line 2776
    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->animatePullingPages()V

    .line 2778
    :cond_1
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->generateDefaultLayoutParams()Lcom/android/launcher3/common/base/view/PagedView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/launcher3/common/base/view/PagedView$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 717
    new-instance v0, Lcom/android/launcher3/common/base/view/PagedView$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/android/launcher3/common/base/view/PagedView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/common/base/view/PagedView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 722
    new-instance v0, Lcom/android/launcher3/common/base/view/PagedView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/launcher3/common/base/view/PagedView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/common/base/view/PagedView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 712
    new-instance v0, Lcom/android/launcher3/common/base/view/PagedView$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/launcher3/common/base/view/PagedView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected getChildGap()I
    .locals 1

    .prologue
    .line 934
    const/4 v0, 0x0

    return v0
.end method

.method protected getChildOffset(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1064
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 1066
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getViewportOffsetX()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 428
    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    return v0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2372
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08001f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 2373
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getNextPage()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2372
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomPageCount()I
    .locals 1

    .prologue
    .line 2842
    const/4 v0, 0x0

    return v0
.end method

.method public getLayoutTransitionOffsetForPage(I)I
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 1614
    iget-object v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageScrolls:[I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageScrolls:[I

    array-length v3, v3

    if-ge p1, v3, :cond_0

    if-gez p1, :cond_1

    .line 1615
    :cond_0
    const/4 v3, 0x0

    .line 1622
    :goto_0
    return v3

    .line 1617
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1619
    .local v1, "child":Landroid/view/View;
    sget-boolean v3, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPaddingRight()I

    move-result v2

    .line 1621
    .local v2, "scrollOffset":I
    :goto_1
    iget-object v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageScrolls:[I

    aget v3, v3, p1

    add-int/2addr v3, v2

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getViewportOffsetX()I

    move-result v4

    add-int v0, v3, v4

    .line 1622
    .local v0, "baselineX":I
    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v3

    int-to-float v4, v0

    sub-float/2addr v3, v4

    float-to-int v3, v3

    goto :goto_0

    .line 1619
    .end local v0    # "baselineX":I
    .end local v2    # "scrollOffset":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPaddingLeft()I

    move-result v2

    goto :goto_1
.end method

.method public getMaxScrollX()I
    .locals 1

    .prologue
    .line 948
    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mMaxScrollX:I

    return v0
.end method

.method protected getNearestHoverOverPageIndex()I
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, -0x1

    .line 1627
    iget-object v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    if-eqz v6, :cond_4

    .line 1628
    iget v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDownMotionX:F

    iget v7, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDownMotionY:F

    invoke-direct {p0, p0, v6, v7}, Lcom/android/launcher3/common/base/view/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v3

    .line 1629
    .local v3, "pt":[F
    const/4 v6, 0x0

    aget v1, v3, v6

    .line 1631
    .local v1, "downMotionXFromToParent":F
    iget-object v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTranslationX()F

    move-result v6

    add-float/2addr v6, v1

    float-to-int v2, v6

    .line 1632
    .local v2, "dragX":I
    iget-object v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/android/launcher3/common/base/view/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1634
    .local v0, "currentIndex":I
    if-gez v2, :cond_2

    .line 1635
    sget-boolean v6, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v6, :cond_1

    :goto_0
    add-int/2addr v0, v4

    .line 1641
    .end local v0    # "currentIndex":I
    .end local v1    # "downMotionXFromToParent":F
    .end local v2    # "dragX":I
    .end local v3    # "pt":[F
    :cond_0
    :goto_1
    return v0

    .restart local v0    # "currentIndex":I
    .restart local v1    # "downMotionXFromToParent":F
    .restart local v2    # "dragX":I
    .restart local v3    # "pt":[F
    :cond_1
    move v4, v5

    .line 1635
    goto :goto_0

    .line 1636
    :cond_2
    iget-object v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    if-le v2, v6, :cond_0

    .line 1637
    sget-boolean v6, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v6, :cond_3

    :goto_2
    add-int/2addr v0, v5

    goto :goto_1

    :cond_3
    move v5, v4

    goto :goto_2

    .end local v0    # "currentIndex":I
    .end local v1    # "downMotionXFromToParent":F
    .end local v2    # "dragX":I
    .end local v3    # "pt":[F
    :cond_4
    move v0, v5

    .line 1641
    goto :goto_1
.end method

.method public getNextPage()I
    .locals 2

    .prologue
    .line 435
    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mNextPage:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    goto :goto_0
.end method

.method public getNormalChildHeight()I
    .locals 1

    .prologue
    .line 731
    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mNormalChildHeight:I

    return v0
.end method

.method public getPageAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 443
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPageBackgroundAlpha()F
    .locals 1

    .prologue
    .line 2767
    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageBackgroundAlpha:F

    return v0
.end method

.method protected getPageCacheSize()I
    .locals 1

    .prologue
    .line 2438
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPageCount()I
    .locals 1

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPageForView(Landroid/view/View;)I
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2153
    const/4 v2, -0x1

    .line 2154
    .local v2, "result":I
    if-eqz p1, :cond_1

    .line 2155
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 2156
    .local v3, "vp":Landroid/view/ViewParent;
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v0

    .line 2157
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2158
    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 2163
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "vp":Landroid/view/ViewParent;
    :goto_1
    return v1

    .line 2157
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v3    # "vp":Landroid/view/ViewParent;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "vp":Landroid/view/ViewParent;
    :cond_1
    move v1, v2

    .line 2163
    goto :goto_1
.end method

.method public getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    return-object v0
.end method

.method protected getPageIndicatorClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPageIndicatorDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPageIndicatorMarker(I)Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;
    .locals 1
    .param p1, "pageIndex"    # I

    .prologue
    .line 411
    new-instance v0, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    invoke-direct {v0}, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;-><init>()V

    return-object v0
.end method

.method public getPageNearestToCenterOfScreen()I
    .locals 12

    .prologue
    .line 1984
    const v7, 0x7fffffff

    .line 1985
    .local v7, "minDistanceFromScreenCenter":I
    const/4 v8, -0x1

    .line 1986
    .local v8, "minDistanceFromScreenCenterIndex":I
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getViewportOffsetX()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollX()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getViewportWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    add-int v9, v10, v11

    .line 1987
    .local v9, "screenCenter":I
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v1

    .line 1988
    .local v1, "childCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_1

    .line 1989
    invoke-virtual {p0, v5}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    .line 1990
    .local v6, "layout":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1991
    .local v2, "childWidth":I
    div-int/lit8 v4, v2, 0x2

    .line 1992
    .local v4, "halfChildWidth":I
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getViewportOffsetX()I

    move-result v10

    invoke-virtual {p0, v5}, Lcom/android/launcher3/common/base/view/PagedView;->getChildOffset(I)I

    move-result v11

    add-int/2addr v10, v11

    add-int v0, v10, v4

    .line 1993
    .local v0, "childCenter":I
    sub-int v10, v0, v9

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1994
    .local v3, "distanceFromScreenCenter":I
    if-ge v3, v7, :cond_0

    .line 1995
    move v7, v3

    .line 1996
    move v8, v5

    .line 1988
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1999
    .end local v0    # "childCenter":I
    .end local v2    # "childWidth":I
    .end local v3    # "distanceFromScreenCenter":I
    .end local v4    # "halfChildWidth":I
    .end local v6    # "layout":Landroid/view/View;
    :cond_1
    return v8
.end method

.method public getRestorePage()I
    .locals 1

    .prologue
    .line 522
    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mRestorePage:I

    return v0
.end method

.method public getScrollForPage(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1604
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageScrolls:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageScrolls:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 1605
    :cond_0
    const/4 v0, 0x0

    .line 1607
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageScrolls:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method protected getScrollProgress(ILandroid/view/View;I)F
    .locals 9
    .param p1, "screenCenter"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "page"    # I

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 1579
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getViewportWidth()I

    move-result v6

    div-int/lit8 v3, v6, 0x2

    .line 1581
    .local v3, "halfScreenSize":I
    invoke-virtual {p0, p3}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollForPage(I)I

    move-result v6

    add-int/2addr v6, v3

    sub-int v2, p1, v6

    .line 1582
    .local v2, "delta":I
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v1

    .line 1586
    .local v1, "count":I
    add-int/lit8 v0, p3, 0x1

    .line 1587
    .local v0, "adjacentPage":I
    if-gez v2, :cond_0

    sget-boolean v6, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v6, :cond_1

    :cond_0
    if-lez v2, :cond_2

    sget-boolean v6, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v6, :cond_2

    .line 1588
    :cond_1
    add-int/lit8 v0, p3, -0x1

    .line 1591
    :cond_2
    if-ltz v0, :cond_3

    add-int/lit8 v6, v1, -0x1

    if-le v0, v6, :cond_4

    .line 1592
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget v7, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageSpacing:I

    add-int v5, v6, v7

    .line 1597
    .local v5, "totalDistance":I
    :goto_0
    int-to-float v6, v2

    int-to-float v7, v5

    mul-float/2addr v7, v8

    div-float v4, v6, v7

    .line 1598
    .local v4, "scrollProgress":F
    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 1599
    const/high16 v6, -0x40800000    # -1.0f

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 1600
    return v4

    .line 1594
    .end local v4    # "scrollProgress":F
    .end local v5    # "totalDistance":I
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollForPage(I)I

    move-result v6

    invoke-virtual {p0, p3}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollForPage(I)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .restart local v5    # "totalDistance":I
    goto :goto_0
.end method

.method public getSupportCustomPageCount()I
    .locals 1

    .prologue
    .line 2846
    const/4 v0, 0x0

    return v0
.end method

.method public getViewportHeight()I
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getViewportOffsetX()I
    .locals 2

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getViewportWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getViewportOffsetY()I
    .locals 2

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getViewportHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getViewportWidth()I
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method protected getVisiblePages([I)V
    .locals 11
    .param p1, "range"    # [I

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 1070
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v4

    .line 1071
    .local v4, "pageCount":I
    sget-object v6, Lcom/android/launcher3/common/base/view/PagedView;->sTmpIntPoint:[I

    sget-object v7, Lcom/android/launcher3/common/base/view/PagedView;->sTmpIntPoint:[I

    aput v8, v7, v10

    aput v8, v6, v8

    .line 1073
    aput v9, p1, v8

    .line 1074
    aput v9, p1, v10

    .line 1076
    if-lez v4, :cond_4

    .line 1077
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getViewportWidth()I

    move-result v5

    .line 1078
    .local v5, "viewportWidth":I
    const/4 v1, 0x0

    .line 1080
    .local v1, "curScreen":I
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v0

    .line 1081
    .local v0, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 1082
    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    .line 1084
    .local v2, "currPage":Landroid/view/View;
    sget-object v6, Lcom/android/launcher3/common/base/view/PagedView;->sTmpIntPoint:[I

    aput v8, v6, v8

    .line 1085
    sget-object v6, Lcom/android/launcher3/common/base/view/PagedView;->sTmpIntPoint:[I

    invoke-static {v2, p0, v6, v8}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToParent(Landroid/view/View;Landroid/view/View;[IZ)F

    .line 1086
    sget-object v6, Lcom/android/launcher3/common/base/view/PagedView;->sTmpIntPoint:[I

    aget v6, v6, v8

    if-le v6, v5, :cond_1

    .line 1087
    aget v6, p1, v8

    if-ne v6, v9, :cond_2

    .line 1081
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1094
    :cond_1
    sget-object v6, Lcom/android/launcher3/common/base/view/PagedView;->sTmpIntPoint:[I

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    aput v7, v6, v8

    .line 1095
    sget-object v6, Lcom/android/launcher3/common/base/view/PagedView;->sTmpIntPoint:[I

    invoke-static {v2, p0, v6, v8}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToParent(Landroid/view/View;Landroid/view/View;[IZ)F

    .line 1096
    sget-object v6, Lcom/android/launcher3/common/base/view/PagedView;->sTmpIntPoint:[I

    aget v6, v6, v8

    if-gez v6, :cond_3

    .line 1097
    aget v6, p1, v8

    if-eq v6, v9, :cond_0

    .line 1109
    .end local v2    # "currPage":Landroid/view/View;
    :cond_2
    aput v1, p1, v10

    .line 1114
    .end local v0    # "count":I
    .end local v1    # "curScreen":I
    .end local v3    # "i":I
    .end local v5    # "viewportWidth":I
    :goto_2
    return-void

    .line 1103
    .restart local v0    # "count":I
    .restart local v1    # "curScreen":I
    .restart local v2    # "currPage":Landroid/view/View;
    .restart local v3    # "i":I
    .restart local v5    # "viewportWidth":I
    :cond_3
    move v1, v3

    .line 1104
    aget v6, p1, v8

    if-gez v6, :cond_0

    .line 1105
    aput v1, p1, v8

    goto :goto_1

    .line 1111
    .end local v0    # "count":I
    .end local v1    # "curScreen":I
    .end local v2    # "currPage":Landroid/view/View;
    .end local v3    # "i":I
    .end local v5    # "viewportWidth":I
    :cond_4
    aput v9, p1, v8

    .line 1112
    aput v9, p1, v10

    goto :goto_2
.end method

.method public hideHintPages()V
    .locals 1

    .prologue
    .line 2634
    iget-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsShowingHintPages:Z

    if-eqz v0, :cond_0

    .line 2635
    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getHintCenterPage()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->hideHintPages(I)V

    .line 2637
    :cond_0
    return-void
.end method

.method protected indexToPage(I)I
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 447
    return p1
.end method

.method protected init()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 264
    new-instance v2, Lcom/android/launcher3/common/base/PageScroller;

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/launcher3/common/base/PageScroller;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    .line 265
    new-instance v2, Lcom/android/launcher3/common/base/view/PagedView$ScrollInterpolator;

    invoke-direct {v2}, Lcom/android/launcher3/common/base/view/PagedView$ScrollInterpolator;-><init>()V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/common/base/view/PagedView;->setDefaultInterpolator(Landroid/view/animation/Interpolator;)V

    .line 266
    iput v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    .line 267
    iput-boolean v5, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCenterPagesVertically:Z

    .line 268
    iput-boolean v5, p0, Lcom/android/launcher3/common/base/view/PagedView;->mEnablePageIndicatorAnim:Z

    .line 270
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 271
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchSlop:I

    .line 272
    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchSlop:I

    invoke-static {v2}, Lcom/android/launcher3/util/event/ScrollDetector;->setPagedViewTouchSlop(I)V

    .line 273
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mMaximumVelocity:I

    .line 274
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 276
    .local v1, "density":F
    const/high16 v2, 0x43fa0000    # 500.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mFlingThresholdVelocity:I

    .line 277
    const/high16 v2, 0x437a0000    # 250.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mMinFlingVelocity:I

    .line 278
    const v2, 0x44bb8000    # 1500.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mMinSnapVelocity:I

    .line 279
    invoke-virtual {p0, p0}, Lcom/android/launcher3/common/base/view/PagedView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 280
    invoke-virtual {p0, v4}, Lcom/android/launcher3/common/base/view/PagedView;->setWillNotDraw(Z)V

    .line 281
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    .line 282
    iget-object v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 283
    return-void
.end method

.method protected invalidatePageData()V
    .locals 2

    .prologue
    .line 2382
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->invalidatePageData(IZ)V

    .line 2383
    return-void
.end method

.method protected invalidatePageData(I)V
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 2386
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/common/base/view/PagedView;->invalidatePageData(IZ)V

    .line 2387
    return-void
.end method

.method protected isContentsRefreshable()Z
    .locals 1

    .prologue
    .line 2420
    const/4 v0, 0x0

    return v0
.end method

.method protected isDataReady()Z
    .locals 1

    .prologue
    .line 2424
    iget-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsDataReady:Z

    return v0
.end method

.method public isPageMoving()Z
    .locals 1

    .prologue
    .line 552
    iget-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsPageMoving:Z

    return v0
.end method

.method isReordering(Z)Z
    .locals 3
    .param p1, "testTouchState"    # Z

    .prologue
    .line 2274
    iget-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsReordering:Z

    .line 2275
    .local v0, "state":Z
    if-eqz p1, :cond_0

    .line 2276
    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    and-int/2addr v0, v1

    .line 2278
    :cond_0
    return v0

    .line 2276
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isScrolling()Z
    .locals 1

    .prologue
    .line 2758
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/PageScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAssociatedPages(I)V
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 2446
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/common/base/view/PagedView;->loadAssociatedPages(IZ)V

    .line 2447
    return-void
.end method

.method protected notifyPageChange(III)V
    .locals 1
    .param p1, "page"    # I
    .param p2, "scrollX"    # I
    .param p3, "pageCount"    # I

    .prologue
    .line 2836
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageScrollListener:Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;

    if-eqz v0, :cond_0

    .line 2837
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageScrollListener:Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;->onPageChange(III)V

    .line 2839
    :cond_0
    return-void
.end method

.method protected notifyPageScroll(IIIII)V
    .locals 6
    .param p1, "page"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "scrollX"    # I
    .param p5, "pageCount"    # I

    .prologue
    .line 2830
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageScrollListener:Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;

    if-eqz v0, :cond_0

    .line 2831
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageScrollListener:Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;->onPageScroll(IIIII)V

    .line 2833
    :cond_0
    return-void
.end method

.method protected notifyPageSwitchListener()V
    .locals 3

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageSwitchListener:Lcom/android/launcher3/common/base/view/PagedView$PageSwitchListener;

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageSwitchListener:Lcom/android/launcher3/common/base/view/PagedView$PageSwitchListener;

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getNextPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getNextPage()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/common/base/view/PagedView$PageSwitchListener;->onPageSwitch(Landroid/view/View;I)V

    .line 534
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->updatePageIndicator()V

    .line 535
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 7

    .prologue
    .line 291
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 293
    iget-object v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    if-nez v4, :cond_2

    iget v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicatorViewId:I

    const/4 v5, -0x1

    if-le v4, v5, :cond_2

    .line 294
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->findPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    .line 295
    iget-object v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-virtual {v4}, Lcom/android/launcher3/common/view/PageIndicator;->removeAllMarkers()V

    .line 297
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .local v3, "markers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    .line 299
    invoke-virtual {v5}, Lcom/android/launcher3/common/view/PageIndicator;->getMaxVisibleSize()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getSupportCustomPageCount()I

    move-result v6

    sub-int/2addr v5, v6

    .line 298
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 300
    .local v1, "indicatorCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 301
    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageIndicatorMarker(I)Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 304
    :cond_0
    iget-object v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    iget-boolean v5, p0, Lcom/android/launcher3/common/base/view/PagedView;->mEnablePageIndicatorAnim:Z

    invoke-virtual {v4, v3, v5, p0}, Lcom/android/launcher3/common/view/PageIndicator;->addMarkers(Ljava/util/ArrayList;ZLcom/android/launcher3/common/base/view/PagedView;)V

    .line 306
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageIndicatorClickListener()Landroid/view/View$OnClickListener;

    move-result-object v2

    .line 307
    .local v2, "listener":Landroid/view/View$OnClickListener;
    if-eqz v2, :cond_1

    .line 308
    iget-object v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-virtual {v4, v2}, Lcom/android/launcher3/common/view/PageIndicator;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageIndicatorDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/common/view/PageIndicator;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 312
    .end local v0    # "i":I
    .end local v1    # "indicatorCount":I
    .end local v2    # "listener":Landroid/view/View$OnClickListener;
    .end local v3    # "markers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;>;"
    :cond_2
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 966
    iget-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->isReordering(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 967
    invoke-virtual {p0, p2}, Lcom/android/launcher3/common/base/view/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 968
    .local v0, "pageIndex":I
    iget-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    .line 969
    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageIndicatorMarker(I)Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mEnablePageIndicatorAnim:Z

    .line 968
    invoke-virtual {v1, v0, v2, v3, p0}, Lcom/android/launcher3/common/view/PageIndicator;->addMarker(ILcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;ZLcom/android/launcher3/common/base/view/PagedView;)V

    .line 975
    .end local v0    # "pageIndex":I
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mForceScreenScrolled:Z

    .line 976
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->invalidate()V

    .line 977
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 981
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mForceScreenScrolled:Z

    .line 982
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->invalidate()V

    .line 983
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 333
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 335
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    .line 336
    return-void
.end method

.method public onEndReordering()V
    .locals 1

    .prologue
    .line 2246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsReordering:Z

    .line 2247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    .line 2248
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v6, 0x9

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1912
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    .line 1913
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1938
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    :goto_0
    return v3

    .line 1918
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    .line 1919
    const/4 v2, 0x0

    .line 1920
    .local v2, "vscroll":F
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 1925
    .local v0, "hscroll":F
    :goto_1
    cmpl-float v4, v0, v5

    if-nez v4, :cond_1

    cmpl-float v4, v2, v5

    if-eqz v4, :cond_0

    .line 1926
    :cond_1
    sget-boolean v4, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v4, :cond_5

    cmpg-float v4, v0, v5

    if-ltz v4, :cond_2

    cmpg-float v4, v2, v5

    if-gez v4, :cond_3

    :cond_2
    move v1, v3

    .line 1928
    .local v1, "isForwardScroll":Z
    :cond_3
    :goto_2
    if-eqz v1, :cond_7

    .line 1929
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->scrollRight()V

    goto :goto_0

    .line 1922
    .end local v0    # "hscroll":F
    .end local v1    # "isForwardScroll":Z
    .end local v2    # "vscroll":F
    :cond_4
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    neg-float v2, v4

    .line 1923
    .restart local v2    # "vscroll":F
    const/16 v4, 0xa

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .restart local v0    # "hscroll":F
    goto :goto_1

    .line 1926
    :cond_5
    cmpl-float v4, v0, v5

    if-gtz v4, :cond_6

    cmpl-float v4, v2, v5

    if-lez v4, :cond_3

    :cond_6
    move v1, v3

    goto :goto_2

    .line 1931
    .restart local v1    # "isForwardScroll":Z
    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->scrollLeft()V

    goto :goto_0

    .line 1913
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2378
    const/4 v0, 0x1

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v0, 0x1

    .line 2343
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2344
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 2345
    return-void

    .line 2344
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2316
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2317
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v2

    if-le v2, v0, :cond_2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2318
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 2319
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2321
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v0

    if-lez v0, :cond_1

    .line 2322
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2324
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2329
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 2330
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_LONG_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    .line 2331
    return-void

    :cond_2
    move v0, v1

    .line 2317
    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1434
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1437
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v8

    if-gtz v8, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    .line 1526
    :cond_0
    :goto_0
    return v6

    .line 1444
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1445
    .local v0, "action":I
    const/4 v8, 0x2

    if-ne v0, v8, :cond_2

    iget v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    if-eq v8, v6, :cond_0

    .line 1450
    :cond_2
    and-int/lit16 v8, v0, 0xff

    packed-switch v8, :pswitch_data_0

    .line 1526
    :cond_3
    :goto_1
    :pswitch_0
    iget v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    if-nez v8, :cond_0

    move v6, v7

    goto :goto_0

    .line 1456
    :pswitch_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PagedView.onInterceptTouchEvent : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/launcher3/common/base/view/PagedView;->mActivePointerId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1457
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1458
    iget v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mActivePointerId:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    .line 1459
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1460
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->scrollPageOnMoveEvent(Landroid/view/MotionEvent;)Z

    .line 1461
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->invalidate()V

    goto :goto_1

    .line 1473
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 1474
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 1476
    .local v5, "y":F
    iput v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDownMotionX:F

    .line 1477
    iput v5, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDownMotionY:F

    .line 1478
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollX()I

    move-result v8

    int-to-float v8, v8

    iput v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDownScrollX:F

    .line 1479
    iput v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionX:F

    .line 1480
    iput v5, p0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionY:F

    .line 1481
    invoke-direct {p0, p0, v3, v5}, Lcom/android/launcher3/common/base/view/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v2

    .line 1482
    .local v2, "p":[F
    aget v8, v2, v7

    iput v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mParentDownMotionX:F

    .line 1483
    aget v8, v2, v6

    iput v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mParentDownMotionY:F

    .line 1484
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTotalMotionX:F

    .line 1485
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mActivePointerId:I

    .line 1492
    iget-object v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    invoke-virtual {v8}, Lcom/android/launcher3/common/base/PageScroller;->getFinalX()I

    move-result v8

    iget-object v9, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    invoke-virtual {v9}, Lcom/android/launcher3/common/base/PageScroller;->getCurrX()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 1493
    .local v4, "xDist":I
    iget-object v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    invoke-virtual {v8}, Lcom/android/launcher3/common/base/PageScroller;->isFinished()Z

    move-result v8

    if-nez v8, :cond_4

    iget v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchSlop:I

    div-int/lit8 v8, v8, 0x3

    if-ge v4, v8, :cond_5

    :cond_4
    move v1, v6

    .line 1495
    .local v1, "finishedScrolling":Z
    :goto_2
    if-eqz v1, :cond_6

    .line 1496
    iput v7, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    .line 1497
    iget-object v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    invoke-virtual {v8}, Lcom/android/launcher3/common/base/PageScroller;->isFinished()Z

    move-result v8

    if-nez v8, :cond_3

    .line 1498
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getNextPage()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/launcher3/common/base/view/PagedView;->setCurrentPage(I)V

    .line 1499
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->pageEndMoving()V

    goto/16 :goto_1

    .end local v1    # "finishedScrolling":Z
    :cond_5
    move v1, v7

    .line 1493
    goto :goto_2

    .line 1502
    .restart local v1    # "finishedScrolling":Z
    :cond_6
    iget v8, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDownMotionX:F

    float-to-int v8, v8

    iget v9, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDownMotionY:F

    float-to-int v9, v9

    invoke-direct {p0, v8, v9}, Lcom/android/launcher3/common/base/view/PagedView;->isTouchPointInViewportWithBuffer(II)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1503
    iput v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    goto/16 :goto_1

    .line 1505
    :cond_7
    iput v7, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    goto/16 :goto_1

    .line 1513
    .end local v1    # "finishedScrolling":Z
    .end local v2    # "p":[F
    .end local v3    # "x":F
    .end local v4    # "xDist":I
    .end local v5    # "y":F
    :pswitch_3
    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->resetTouchState()V

    goto/16 :goto_1

    .line 1517
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1518
    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_1

    .line 1450
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 20
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 838
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v18

    if-nez v18, :cond_1

    .line 912
    :cond_0
    :goto_0
    return-void

    .line 843
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v3

    .line 845
    .local v3, "childCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getViewportOffsetX()I

    move-result v11

    .line 846
    .local v11, "offsetX":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getViewportOffsetY()I

    move-result v12

    .line 849
    .local v12, "offsetY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mViewport:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v12}, Landroid/graphics/Rect;->offset(II)V

    .line 851
    sget-boolean v18, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v18, :cond_6

    add-int/lit8 v15, v3, -0x1

    .line 852
    .local v15, "startIndex":I
    :goto_1
    sget-boolean v18, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v18, :cond_7

    const/4 v9, -0x1

    .line 853
    .local v9, "endIndex":I
    :goto_2
    sget-boolean v18, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v18, :cond_8

    const/4 v8, -0x1

    .line 855
    .local v8, "delta":I
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPaddingTop()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPaddingBottom()I

    move-result v19

    add-int v17, v18, v19

    .line 857
    .local v17, "verticalPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPaddingLeft()I

    move-result v18

    add-int v5, v11, v18

    .line 858
    .local v5, "childLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mPageScrolls:[I

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mChildCountOnLastLayout:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v3, v0, :cond_3

    .line 859
    :cond_2
    new-array v0, v3, [I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mPageScrolls:[I

    .line 862
    :cond_3
    move v10, v15

    .local v10, "i":I
    :goto_4
    if-eq v10, v9, :cond_9

    .line 863
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    .line 864
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    .line 865
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPaddingTop()I

    move-result v18

    add-int v18, v18, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    add-int v6, v18, v19

    .line 866
    .local v6, "childTop":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mCenterPagesVertically:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 867
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getViewportHeight()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    sub-int v18, v18, v17

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    sub-int v18, v18, v19

    div-int/lit8 v18, v18, 0x2

    add-int v6, v6, v18

    .line 870
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 871
    .local v7, "childWidth":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 875
    .local v4, "childHeight":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    add-int v18, v18, v5

    add-int v19, v6, v4

    .line 874
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v5, v6, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 877
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPaddingLeft()I

    move-result v14

    .line 878
    .local v14, "scrollOffsetLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mPageScrolls:[I

    move-object/from16 v18, v0

    sub-int v19, v5, v14

    sub-int v19, v19, v11

    aput v19, v18, v10

    .line 880
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher3/common/base/view/PagedView;->mPageSpacing:I

    .line 881
    .local v13, "pageGap":I
    add-int v18, v7, v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildGap()I

    move-result v19

    add-int v18, v18, v19

    add-int v5, v5, v18

    .line 862
    .end local v4    # "childHeight":I
    .end local v6    # "childTop":I
    .end local v7    # "childWidth":I
    .end local v13    # "pageGap":I
    .end local v14    # "scrollOffsetLeft":I
    :cond_5
    add-int/2addr v10, v8

    goto/16 :goto_4

    .line 851
    .end local v2    # "child":Landroid/view/View;
    .end local v5    # "childLeft":I
    .end local v8    # "delta":I
    .end local v9    # "endIndex":I
    .end local v10    # "i":I
    .end local v15    # "startIndex":I
    .end local v17    # "verticalPadding":I
    :cond_6
    const/4 v15, 0x0

    goto/16 :goto_1

    .restart local v15    # "startIndex":I
    :cond_7
    move v9, v3

    .line 852
    goto/16 :goto_2

    .line 853
    .restart local v9    # "endIndex":I
    :cond_8
    const/4 v8, 0x1

    goto/16 :goto_3

    .line 885
    .restart local v5    # "childLeft":I
    .restart local v8    # "delta":I
    .restart local v10    # "i":I
    .restart local v17    # "verticalPadding":I
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v16

    .line 888
    .local v16, "transition":Landroid/animation/LayoutTransition;
    if-eqz v16, :cond_c

    invoke-virtual/range {v16 .. v16}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 894
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mFirstLayout:Z

    move/from16 v18, v0

    if-eqz v18, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    move/from16 v18, v0

    if-ltz v18, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v0, v3, :cond_a

    .line 895
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->updateCurrentPageScroll()V

    .line 896
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mFirstLayout:Z

    .line 899
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/common/base/PageScroller;->isFinished()Z

    move-result v18

    if-eqz v18, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mChildCountOnLastLayout:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v0, v3, :cond_b

    .line 900
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mRestorePage:I

    move/from16 v18, v0

    const/16 v19, -0x3e9

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_d

    .line 901
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mRestorePage:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->setCurrentPage(I)V

    .line 902
    const/16 v18, -0x3e9

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mRestorePage:I

    .line 907
    :cond_b
    :goto_6
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/launcher3/common/base/view/PagedView;->mChildCountOnLastLayout:I

    .line 909
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->isReordering(Z)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 910
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->updateDragViewTranslationDuringDrag()V

    goto/16 :goto_0

    .line 891
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->updateMaxScrollX()V

    goto :goto_5

    .line 904
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getNextPage()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->setCurrentPage(I)V

    goto :goto_6
.end method

.method protected onMeasure(II)V
    .locals 30
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 736
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v27

    if-nez v27, :cond_0

    .line 737
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 834
    :goto_0
    return-void

    .line 743
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v25

    .line 744
    .local v25, "widthMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v26

    .line 745
    .local v26, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 746
    .local v13, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .line 749
    .local v14, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    .line 750
    .local v12, "dm":Landroid/util/DisplayMetrics;
    iget v0, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v28, v0

    add-int v27, v27, v28

    iget v0, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    add-int v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    add-int v28, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 753
    .local v18, "maxSize":I
    const/high16 v27, 0x40000000    # 2.0f

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v20, v0

    .line 754
    .local v20, "parentWidthSize":I
    const/high16 v27, 0x40000000    # 2.0f

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v19, v0

    .line 756
    .local v19, "parentHeightSize":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mUseMinScale:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2

    .line 757
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mMinScale:F

    move/from16 v28, v0

    div-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v23, v0

    .line 758
    .local v23, "scaledWidthSize":I
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mMinScale:F

    move/from16 v28, v0

    div-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v22, v0

    .line 763
    .local v22, "scaledHeightSize":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mViewport:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 765
    if-eqz v25, :cond_1

    if-nez v13, :cond_3

    .line 766
    :cond_1
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    goto/16 :goto_0

    .line 760
    .end local v22    # "scaledHeightSize":I
    .end local v23    # "scaledWidthSize":I
    :cond_2
    move/from16 v23, v26

    .line 761
    .restart local v23    # "scaledWidthSize":I
    move/from16 v22, v14

    .restart local v22    # "scaledHeightSize":I
    goto :goto_1

    .line 771
    :cond_3
    if-lez v26, :cond_4

    if-gtz v14, :cond_5

    .line 772
    :cond_4
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    goto/16 :goto_0

    .line 781
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPaddingTop()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPaddingBottom()I

    move-result v28

    add-int v24, v27, v28

    .line 782
    .local v24, "verticalPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPaddingLeft()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPaddingRight()I

    move-result v28

    add-int v15, v27, v28

    .line 784
    .local v15, "horizontalPadding":I
    const/16 v21, 0x0

    .line 792
    .local v21, "referenceChildWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v5

    .line 793
    .local v5, "childCount":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_2
    move/from16 v0, v16

    if-ge v0, v5, :cond_a

    .line 795
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    .line 796
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v27

    const/16 v28, 0x8

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_7

    .line 797
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/android/launcher3/common/base/view/PagedView$LayoutParams;

    .line 804
    .local v17, "lp":Lcom/android/launcher3/common/base/view/PagedView$LayoutParams;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView$LayoutParams;->width:I

    move/from16 v27, v0

    const/16 v28, -0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_8

    .line 805
    const/high16 v11, -0x80000000

    .line 810
    .local v11, "childWidthMode":I
    :goto_3
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView$LayoutParams;->height:I

    move/from16 v27, v0

    const/16 v28, -0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_9

    .line 811
    const/high16 v8, -0x80000000

    .line 816
    .local v8, "childHeightMode":I
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getViewportWidth()I

    move-result v27

    sub-int v27, v27, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v28, v0

    sub-int v9, v27, v28

    .line 818
    .local v9, "childWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getViewportHeight()I

    move-result v27

    sub-int v27, v27, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    sub-int v6, v27, v28

    .line 820
    .local v6, "childHeight":I
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/launcher3/common/base/view/PagedView;->mNormalChildHeight:I

    .line 822
    if-nez v21, :cond_6

    .line 823
    move/from16 v21, v9

    .line 827
    :cond_6
    invoke-static {v9, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 829
    .local v10, "childWidthMeasureSpec":I
    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 830
    .local v7, "childHeightMeasureSpec":I
    invoke-virtual {v4, v10, v7}, Landroid/view/View;->measure(II)V

    .line 793
    .end local v6    # "childHeight":I
    .end local v7    # "childHeightMeasureSpec":I
    .end local v8    # "childHeightMode":I
    .end local v9    # "childWidth":I
    .end local v10    # "childWidthMeasureSpec":I
    .end local v11    # "childWidthMode":I
    .end local v17    # "lp":Lcom/android/launcher3/common/base/view/PagedView$LayoutParams;
    :cond_7
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 807
    .restart local v17    # "lp":Lcom/android/launcher3/common/base/view/PagedView$LayoutParams;
    :cond_8
    const/high16 v11, 0x40000000    # 2.0f

    .restart local v11    # "childWidthMode":I
    goto :goto_3

    .line 813
    :cond_9
    const/high16 v8, 0x40000000    # 2.0f

    .restart local v8    # "childHeightMode":I
    goto :goto_4

    .line 833
    .end local v4    # "child":Landroid/view/View;
    .end local v8    # "childHeightMode":I
    .end local v11    # "childWidthMode":I
    .end local v17    # "lp":Lcom/android/launcher3/common/base/view/PagedView$LayoutParams;
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/base/view/PagedView;->setMeasuredDimension(II)V

    goto/16 :goto_0
.end method

.method protected onPageBeginMoving()V
    .locals 0

    .prologue
    .line 557
    return-void
.end method

.method protected onPageEndMoving()V
    .locals 0

    .prologue
    .line 561
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1309
    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mNextPage:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1310
    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mNextPage:I

    .line 1314
    .local v0, "focusablePage":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    .line 1315
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 1316
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    .line 1318
    :goto_1
    return v2

    .line 1312
    .end local v0    # "focusablePage":I
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    .restart local v0    # "focusablePage":I
    goto :goto_0

    .line 1318
    .restart local v1    # "v":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected onScrollInteractionBegin()V
    .locals 0

    .prologue
    .line 1901
    return-void
.end method

.method protected onScrollInteractionEnd()V
    .locals 0

    .prologue
    .line 1904
    return-void
.end method

.method public onStartReordering()V
    .locals 1

    .prologue
    .line 2223
    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    if-lez v0, :cond_0

    .line 2224
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    .line 2227
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    .line 2228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsReordering:Z

    .line 2232
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->invalidate()V

    .line 2233
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 26
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1646
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1649
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v22

    if-gtz v22, :cond_0

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v22

    .line 1863
    :goto_0
    return v22

    .line 1651
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/common/base/view/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1653
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 1655
    .local v4, "action":I
    and-int/lit16 v0, v4, 0xff

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_0

    .line 1863
    :cond_1
    :goto_1
    :pswitch_0
    const/16 v22, 0x1

    goto :goto_0

    .line 1661
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/common/base/PageScroller;->isFinished()Z

    move-result v22

    if-nez v22, :cond_2

    .line 1662
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->abortScrollerAnimation(Z)V

    .line 1666
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionX:F

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mDownMotionX:F

    .line 1667
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionY:F

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mDownMotionY:F

    .line 1668
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollX()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mDownScrollX:F

    .line 1669
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionX:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionY:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/common/base/view/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v13

    .line 1670
    .local v13, "p":[F
    const/16 v22, 0x0

    aget v22, v13, v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mParentDownMotionX:F

    .line 1671
    const/16 v22, 0x1

    aget v22, v13, v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mParentDownMotionY:F

    .line 1672
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mTotalMotionX:F

    .line 1673
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mActivePointerId:I

    .line 1675
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 1676
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->onScrollInteractionBegin()V

    .line 1677
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->pageBeginMoving()V

    goto/16 :goto_1

    .line 1682
    .end local v13    # "p":[F
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/android/launcher3/util/event/ScrollDetector;->isHorizontalScroll()Z

    move-result v22

    if-eqz v22, :cond_3

    .line 1683
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/common/base/view/PagedView;->scrollPageOnMoveEvent(Landroid/view/MotionEvent;)Z

    move-result v22

    goto/16 :goto_0

    .line 1684
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 1686
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionX:F

    .line 1687
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionY:F

    .line 1691
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionX:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionY:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/common/base/view/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v17

    .line 1692
    .local v17, "pt":[F
    const/16 v22, 0x0

    aget v22, v17, v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mParentDownMotionX:F

    .line 1693
    const/16 v22, 0x1

    aget v22, v17, v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mParentDownMotionY:F

    .line 1694
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 1697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v7

    .line 1704
    .local v7, "dragViewIndex":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getNearestHoverOverPageIndex()I

    move-result v14

    .line 1705
    .local v14, "pageUnderPointIndex":I
    const/16 v22, -0x1

    move/from16 v0, v22

    if-le v14, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v22

    move/from16 v0, v22

    if-eq v14, v0, :cond_4

    .line 1706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    aput v24, v22, v23

    .line 1707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    aput v24, v22, v23

    .line 1708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget v22, v22, v23

    move/from16 v0, v22

    if-gt v0, v14, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget v22, v22, v23

    move/from16 v0, v22

    if-gt v14, v0, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mSidePageHoverIndex:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v14, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    move-object/from16 v22, v0

    .line 1710
    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/common/base/PageScroller;->isFinished()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 1711
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher3/common/base/view/PagedView;->mSidePageHoverIndex:I

    .line 1712
    new-instance v22, Lcom/android/launcher3/common/base/view/PagedView$3;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14, v7}, Lcom/android/launcher3/common/base/view/PagedView$3;-><init>(Lcom/android/launcher3/common/base/view/PagedView;II)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    .line 1761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    const-wide/16 v24, 0x50

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/common/base/view/PagedView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 1764
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1765
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mSidePageHoverIndex:I

    goto/16 :goto_1

    .line 1768
    .end local v7    # "dragViewIndex":I
    .end local v14    # "pageUnderPointIndex":I
    .end local v17    # "pt":[F
    :cond_5
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/common/base/view/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)Z

    goto/16 :goto_1

    .line 1773
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1a

    .line 1774
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/common/base/view/PagedView;->mActivePointerId:I

    .line 1775
    .local v5, "activePointerId":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v16

    .line 1776
    .local v16, "pointerIndex":I
    const/16 v22, -0x1

    move/from16 v0, v16

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    const/16 v22, 0x1

    goto/16 :goto_0

    .line 1778
    :cond_6
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v21

    .line 1779
    .local v21, "x":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    .line 1780
    .local v19, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v22, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mMaximumVelocity:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1781
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v20, v0

    .line 1782
    .local v20, "velocityX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mDownMotionX:F

    move/from16 v22, v0

    sub-float v22, v21, v22

    move/from16 v0, v22

    float-to-int v6, v0

    .line 1784
    .local v6, "deltaX":I
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v22

    move-object/from16 v0, v22

    iget v15, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->availableWidthPx:I

    .line 1785
    .local v15, "pageWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v22

    if-eqz v22, :cond_7

    .line 1786
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 1788
    :cond_7
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    int-to-float v0, v15

    move/from16 v23, v0

    const v24, 0x3ecccccd    # 0.4f

    mul-float v23, v23, v24

    cmpl-float v22, v22, v23

    if-lez v22, :cond_c

    const/4 v11, 0x1

    .line 1791
    .local v11, "isSignificantMove":Z
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mTotalMotionX:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionX:F

    move/from16 v23, v0

    sub-float v23, v23, v21

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    move-result v23

    add-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mTotalMotionX:F

    .line 1793
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mTotalMotionX:F

    move/from16 v22, v0

    const/high16 v23, 0x41c80000    # 25.0f

    cmpl-float v22, v22, v23

    if-lez v22, :cond_d

    .line 1794
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mFlingThresholdVelocity:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_d

    const/4 v10, 0x1

    .line 1799
    .local v10, "isFling":Z
    :goto_3
    const/16 v18, 0x0

    .line 1800
    .local v18, "returnToOriginalPage":Z
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    int-to-float v0, v15

    move/from16 v23, v0

    const v24, 0x3ea8f5c3    # 0.33f

    mul-float v23, v23, v24

    cmpl-float v22, v22, v23

    if-lez v22, :cond_8

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v22, v0

    .line 1801
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->signum(F)F

    move-result v22

    int-to-float v0, v6

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->signum(F)F

    move-result v23

    cmpl-float v22, v22, v23

    if-eqz v22, :cond_8

    if-eqz v10, :cond_8

    .line 1802
    const/16 v18, 0x1

    .line 1809
    :cond_8
    sget-boolean v22, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v22, :cond_f

    if-lez v6, :cond_e

    const/4 v9, 0x1

    .line 1810
    .local v9, "isDeltaXLeft":Z
    :goto_4
    sget-boolean v22, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v22, :cond_12

    if-lez v20, :cond_11

    const/4 v12, 0x1

    .line 1811
    .local v12, "isVelocityXLeft":Z
    :goto_5
    if-eqz v11, :cond_9

    if-nez v9, :cond_9

    if-eqz v10, :cond_a

    :cond_9
    if-eqz v10, :cond_15

    if-nez v12, :cond_15

    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    move/from16 v22, v0

    if-lez v22, :cond_15

    .line 1813
    if-eqz v18, :cond_14

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    .line 1814
    .local v8, "finalPage":I
    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v8, v1}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPageWithVelocity(II)V

    .line 1815
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPageSALoggging(Z)V

    .line 1825
    .end local v8    # "finalPage":I
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->onScrollInteractionEnd()V

    .line 1844
    .end local v5    # "activePointerId":I
    .end local v6    # "deltaX":I
    .end local v9    # "isDeltaXLeft":Z
    .end local v10    # "isFling":Z
    .end local v11    # "isSignificantMove":Z
    .end local v12    # "isVelocityXLeft":Z
    .end local v15    # "pageWidth":I
    .end local v16    # "pointerIndex":I
    .end local v18    # "returnToOriginalPage":Z
    .end local v19    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v20    # "velocityX":I
    .end local v21    # "x":F
    :cond_b
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1846
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->resetTouchState()V

    goto/16 :goto_1

    .line 1788
    .restart local v5    # "activePointerId":I
    .restart local v6    # "deltaX":I
    .restart local v15    # "pageWidth":I
    .restart local v16    # "pointerIndex":I
    .restart local v19    # "velocityTracker":Landroid/view/VelocityTracker;
    .restart local v20    # "velocityX":I
    .restart local v21    # "x":F
    :cond_c
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 1794
    .restart local v11    # "isSignificantMove":Z
    :cond_d
    const/4 v10, 0x0

    goto :goto_3

    .line 1809
    .restart local v10    # "isFling":Z
    .restart local v18    # "returnToOriginalPage":Z
    :cond_e
    const/4 v9, 0x0

    goto :goto_4

    :cond_f
    if-gez v6, :cond_10

    const/4 v9, 0x1

    goto :goto_4

    :cond_10
    const/4 v9, 0x0

    goto :goto_4

    .line 1810
    .restart local v9    # "isDeltaXLeft":Z
    :cond_11
    const/4 v12, 0x0

    goto :goto_5

    :cond_12
    if-gez v20, :cond_13

    const/4 v12, 0x1

    goto :goto_5

    :cond_13
    const/4 v12, 0x0

    goto :goto_5

    .line 1813
    .restart local v12    # "isVelocityXLeft":Z
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    move/from16 v22, v0

    add-int/lit8 v8, v22, -0x1

    goto :goto_6

    .line 1816
    :cond_15
    if-eqz v11, :cond_16

    if-eqz v9, :cond_16

    if-eqz v10, :cond_17

    :cond_16
    if-eqz v10, :cond_19

    if-eqz v12, :cond_19

    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    move/from16 v22, v0

    .line 1818
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_19

    .line 1819
    if-eqz v18, :cond_18

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    .line 1820
    .restart local v8    # "finalPage":I
    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v8, v1}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPageWithVelocity(II)V

    .line 1821
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPageSALoggging(Z)V

    goto :goto_7

    .line 1819
    .end local v8    # "finalPage":I
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    move/from16 v22, v0

    add-int/lit8 v8, v22, 0x1

    goto :goto_9

    .line 1823
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->snapToDestination()V

    goto :goto_7

    .line 1826
    .end local v5    # "activePointerId":I
    .end local v6    # "deltaX":I
    .end local v9    # "isDeltaXLeft":Z
    .end local v10    # "isFling":Z
    .end local v11    # "isSignificantMove":Z
    .end local v12    # "isVelocityXLeft":Z
    .end local v15    # "pageWidth":I
    .end local v16    # "pointerIndex":I
    .end local v18    # "returnToOriginalPage":Z
    .end local v19    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v20    # "velocityX":I
    .end local v21    # "x":F
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1b

    .line 1828
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionX:F

    .line 1829
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionY:F

    .line 1833
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionX:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionY:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/common/base/view/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v17

    .line 1834
    .restart local v17    # "pt":[F
    const/16 v22, 0x0

    aget v22, v17, v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mParentDownMotionX:F

    .line 1835
    const/16 v22, 0x1

    aget v22, v17, v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/base/view/PagedView;->mParentDownMotionY:F

    .line 1836
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->updateDragViewTranslationDuringDrag()V

    goto/16 :goto_8

    .line 1838
    .end local v17    # "pt":[F
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mCancelTap:Z

    move/from16 v22, v0

    if-nez v22, :cond_b

    .line 1839
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/common/base/view/PagedView;->onUnhandledTap(Landroid/view/MotionEvent;)V

    goto/16 :goto_8

    .line 1850
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1c

    .line 1851
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->snapToDestination()V

    .line 1852
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->onScrollInteractionEnd()V

    .line 1854
    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->resetTouchState()V

    goto/16 :goto_1

    .line 1858
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/common/base/view/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1859
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_1

    .line 1655
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1907
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/Launcher;->onClick(Landroid/view/View;)V

    .line 1908
    return-void
.end method

.method protected overScroll(I)V
    .locals 1
    .param p1, "amount"    # I

    .prologue
    .line 1236
    int-to-float v0, p1

    invoke-direct {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->dampedOverScroll(F)V

    .line 1237
    return-void
.end method

.method protected pageBeginMoving()V
    .locals 1

    .prologue
    .line 538
    iget-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsPageMoving:Z

    if-nez v0, :cond_0

    .line 539
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsPageMoving:Z

    .line 540
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onPageBeginMoving()V

    .line 542
    :cond_0
    return-void
.end method

.method protected pageEndMoving()V
    .locals 1

    .prologue
    .line 545
    iget-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsPageMoving:Z

    if-eqz v0, :cond_0

    .line 546
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsPageMoving:Z

    .line 547
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onPageEndMoving()V

    .line 549
    :cond_0
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 3
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    .line 2349
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2368
    :goto_0
    return v0

    .line 2352
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 2368
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2354
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 2355
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->scrollRight()V

    goto :goto_0

    .line 2361
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v1

    if-lez v1, :cond_1

    .line 2362
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->scrollLeft()V

    goto :goto_0

    .line 2352
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public performLongClick()Z
    .locals 1

    .prologue
    .line 2168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCancelTap:Z

    .line 2169
    invoke-super {p0}, Landroid/view/ViewGroup;->performLongClick()Z

    move-result v0

    return v0
.end method

.method public removeAllViewsInLayout()V
    .locals 1

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    if-eqz v0, :cond_0

    .line 1057
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher3/common/view/PageIndicator;->removeAllMarkers()V

    .line 1060
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 1061
    return-void
.end method

.method public removeMarkerForView(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 993
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->isReordering(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 994
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    iget-boolean v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mEnablePageIndicatorAnim:Z

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/common/view/PageIndicator;->removeMarker(IZ)V

    .line 995
    :cond_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1032
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->removeMarkerForView(I)V

    .line 1033
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1034
    return-void
.end method

.method public removeViewAt(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 1048
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->removeMarkerForView(I)V

    .line 1049
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1050
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1040
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->removeMarkerForView(I)V

    .line 1041
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 1042
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 1976
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1977
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->indexToPage(I)I

    move-result v0

    .line 1978
    .local v0, "page":I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1979
    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(I)V

    .line 1981
    :cond_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 1298
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->indexToPage(I)I

    move-result v0

    .line 1299
    .local v0, "page":I
    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/PageScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1300
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(I)V

    .line 1301
    const/4 v1, 0x1

    .line 1303
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 1409
    if-eqz p1, :cond_0

    .line 1412
    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1413
    .local v0, "currentPage":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 1415
    .end local v0    # "currentPage":Landroid/view/View;
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1416
    return-void
.end method

.method protected resetPulledPages()V
    .locals 1

    .prologue
    .line 2745
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTranslateAllPages:F

    .line 2746
    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTranslateAllPages:F

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->setTranslationX(F)V

    .line 2747
    return-void
.end method

.method protected resetTransitionEffect(Landroid/view/View;)V
    .locals 4
    .param p1, "page"    # Landroid/view/View;

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1259
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 1260
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 1261
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 1262
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 1263
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 1264
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 1265
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1266
    return-void
.end method

.method protected resetTransitionEffectForInvisiblePage(Landroid/view/View;)V
    .locals 0
    .param p1, "page"    # Landroid/view/View;

    .prologue
    .line 1269
    return-void
.end method

.method protected screenScrolled(III)V
    .locals 0
    .param p1, "screenCenter"    # I
    .param p2, "leftScreen"    # I
    .param p3, "rightScreen"    # I

    .prologue
    .line 960
    return-void
.end method

.method public scrollBy(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 580
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollX()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->scrollTo(II)V

    .line 581
    return-void
.end method

.method public scrollLeft()V
    .locals 1

    .prologue
    .line 2145
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getNextPage()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getNextPage()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(I)V

    .line 2146
    :cond_0
    return-void
.end method

.method public scrollRight()V
    .locals 2

    .prologue
    .line 2149
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getNextPage()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(I)V

    .line 2150
    :cond_0
    return-void
.end method

.method public scrollTo(II)V
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 585
    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mMaxScrollX:I

    if-le p1, v2, :cond_6

    move v7, v0

    .line 586
    .local v7, "isXBeforeFirstPage":Z
    :goto_0
    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_a

    if-gez p1, :cond_9

    move v6, v0

    .line 588
    .local v6, "isXAfterLastPage":Z
    :goto_1
    if-nez v7, :cond_0

    if-eqz v6, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->canOverScroll()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 589
    :cond_1
    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mUnboundedScrollX:I

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollX()I

    move-result v3

    sub-int v3, p1, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mUnboundedScrollX:I

    .line 592
    :cond_2
    if-eqz v7, :cond_e

    .line 593
    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_c

    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mMaxScrollX:I

    :goto_2
    invoke-super {p0, v2, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 594
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->canOverScroll()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 595
    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_d

    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mUnboundedScrollX:I

    iget v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mMaxScrollX:I

    sub-int v9, v2, v3

    .line 596
    .local v9, "scrollX":I
    :goto_3
    invoke-virtual {p0, v9}, Lcom/android/launcher3/common/base/view/PagedView;->overScroll(I)V

    .line 609
    .end local v9    # "scrollX":I
    :cond_3
    :goto_4
    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->isReordering(Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 610
    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mParentDownMotionX:F

    iget v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mParentDownMotionY:F

    invoke-direct {p0, p0, v2, v3}, Lcom/android/launcher3/common/base/view/PagedView;->mapPointFromParentToView(Landroid/view/View;FF)[F

    move-result-object v8

    .line 611
    .local v8, "p":[F
    aget v1, v8, v1

    iput v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionX:F

    .line 612
    aget v0, v8, v0

    iput v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionY:F

    .line 613
    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 616
    .end local v8    # "p":[F
    :cond_4
    if-ltz p1, :cond_5

    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mMaxScrollX:I

    if-gt p1, v0, :cond_5

    .line 617
    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollForPage(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v5

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/PagedView;->notifyPageScroll(IIIII)V

    .line 619
    :cond_5
    return-void

    .end local v6    # "isXAfterLastPage":Z
    .end local v7    # "isXBeforeFirstPage":Z
    :cond_6
    move v7, v1

    .line 585
    goto :goto_0

    :cond_7
    if-gez p1, :cond_8

    move v7, v0

    goto :goto_0

    :cond_8
    move v7, v1

    goto :goto_0

    .restart local v7    # "isXBeforeFirstPage":Z
    :cond_9
    move v6, v1

    .line 586
    goto :goto_1

    :cond_a
    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mMaxScrollX:I

    if-le p1, v2, :cond_b

    move v6, v0

    goto :goto_1

    :cond_b
    move v6, v1

    goto :goto_1

    .restart local v6    # "isXAfterLastPage":Z
    :cond_c
    move v2, v1

    .line 593
    goto :goto_2

    .line 595
    :cond_d
    iget v9, p0, Lcom/android/launcher3/common/base/view/PagedView;->mUnboundedScrollX:I

    goto :goto_3

    .line 598
    :cond_e
    if-eqz v6, :cond_11

    .line 599
    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_f

    move v2, v1

    :goto_5
    invoke-super {p0, v2, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 600
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->canOverScroll()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 601
    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_10

    iget v9, p0, Lcom/android/launcher3/common/base/view/PagedView;->mUnboundedScrollX:I

    .line 602
    .restart local v9    # "scrollX":I
    :goto_6
    invoke-virtual {p0, v9}, Lcom/android/launcher3/common/base/view/PagedView;->overScroll(I)V

    goto :goto_4

    .line 599
    .end local v9    # "scrollX":I
    :cond_f
    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mMaxScrollX:I

    goto :goto_5

    .line 601
    :cond_10
    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mUnboundedScrollX:I

    iget v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mMaxScrollX:I

    sub-int v9, v2, v3

    goto :goto_6

    .line 605
    :cond_11
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_4
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1
    .param p1, "eventType"    # I

    .prologue
    .line 2336
    const/16 v0, 0x1000

    if-eq p1, v0, :cond_0

    .line 2337
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 2339
    :cond_0
    return-void
.end method

.method public setActiveMarker(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    if-eqz v0, :cond_0

    .line 1004
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/view/PageIndicator;->setActiveMarker(I)V

    .line 1006
    :cond_0
    return-void
.end method

.method protected setActivePages(I)V
    .locals 11
    .param p1, "currentPageIndex"    # I

    .prologue
    .line 2493
    iget-object v9, p0, Lcom/android/launcher3/common/base/view/PagedView;->mActivePages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 2494
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mActivePages:Ljava/util/ArrayList;

    .line 2496
    .local v0, "activePages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2498
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCacheSize()I

    move-result v1

    .line 2499
    .local v1, "cacheSize":I
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v4

    .line 2503
    .local v4, "pageCount":I
    if-lt v1, v4, :cond_0

    .line 2504
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_4

    .line 2505
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2504
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2510
    .end local v2    # "i":I
    :cond_0
    add-int/lit8 v8, v1, -0x1

    .line 2511
    .local v8, "size":I
    int-to-float v9, v8

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 2512
    .local v5, "pagesToLeft":I
    div-int/lit8 v6, v8, 0x2

    .line 2513
    .local v6, "pagesToRight":I
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_1
    if-gt v2, v5, :cond_2

    .line 2514
    sub-int v3, p1, v2

    .line 2515
    .local v3, "leftIndex":I
    if-ltz v3, :cond_1

    .line 2516
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2513
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2520
    .end local v3    # "leftIndex":I
    :cond_2
    const/4 v2, 0x1

    :goto_2
    if-gt v2, v6, :cond_4

    .line 2521
    add-int v7, p1, v2

    .line 2522
    .local v7, "rightIndex":I
    if-ge v7, v4, :cond_3

    .line 2523
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2520
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2526
    .end local v5    # "pagesToLeft":I
    .end local v6    # "pagesToRight":I
    .end local v7    # "rightIndex":I
    .end local v8    # "size":I
    :cond_4
    return-void
.end method

.method public setCrosshairsVisibilityChilds(I)V
    .locals 6
    .param p1, "visibilityChilds"    # I

    .prologue
    .line 2545
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v2

    .line 2546
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 2547
    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 2548
    .local v1, "cellLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v1, :cond_0

    .line 2549
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getCurrentPage()I

    move-result v4

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v5

    if-ne v4, v5, :cond_1

    const/4 v0, 0x1

    .line 2550
    .local v0, "animate":Z
    :goto_1
    invoke-virtual {v1, p1, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->setCrossHairAnimatedVisibility(IZ)V

    .line 2546
    .end local v0    # "animate":Z
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2549
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 2553
    .end local v1    # "cellLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_2
    return-void
.end method

.method public setCurrentPage(I)V
    .locals 3
    .param p1, "currentPage"    # I

    .prologue
    const/4 v1, 0x1

    .line 496
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/PageScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 497
    invoke-direct {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->abortScrollerAnimation(Z)V

    .line 501
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 511
    :goto_0
    return-void

    .line 504
    :cond_1
    iput-boolean v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mForceScreenScrolled:Z

    .line 505
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->validateNewPage(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    .line 507
    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollForPage(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/common/base/view/PagedView;->notifyPageChange(III)V

    .line 508
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->updateCurrentPageScroll()V

    .line 509
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->notifyPageSwitchListener()V

    .line 510
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->invalidate()V

    goto :goto_0
.end method

.method public setDataReady()V
    .locals 1

    .prologue
    .line 2428
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsDataReady:Z

    .line 2429
    return-void
.end method

.method protected setDefaultInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 2
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    .line 287
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    iget-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/PageScroller;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 288
    return-void
.end method

.method public setMarkerStartOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 998
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    if-eqz v0, :cond_0

    .line 999
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/view/PageIndicator;->setMarkerStartOffset(I)V

    .line 1000
    :cond_0
    return-void
.end method

.method public setMinScale(F)V
    .locals 1
    .param p1, "f"    # F

    .prologue
    .line 370
    iput p1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mMinScale:F

    .line 371
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mUseMinScale:Z

    .line 372
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->requestLayout()V

    .line 373
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3
    .param p1, "l"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 570
    iput-object p1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 571
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v0

    .line 572
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 573
    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 572
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 575
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 576
    return-void
.end method

.method public setPageBackgroundAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 2762
    iput p1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageBackgroundAlpha:F

    .line 2763
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->invalidate()V

    .line 2764
    return-void
.end method

.method public setPageIndicatorAnimation(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 2556
    iput-boolean p1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mEnablePageIndicatorAnim:Z

    .line 2557
    return-void
.end method

.method public setPageScrollListener(Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;)V
    .locals 0
    .param p1, "pageScrollListener"    # Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;

    .prologue
    .line 2826
    iput-object p1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageScrollListener:Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;

    .line 2827
    return-void
.end method

.method public setPageSpacing(I)V
    .locals 0
    .param p1, "pageSpacing"    # I

    .prologue
    .line 952
    iput p1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageSpacing:I

    .line 953
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->requestLayout()V

    .line 954
    return-void
.end method

.method public setPageSwitchListener(Lcom/android/launcher3/common/base/view/PagedView$PageSwitchListener;)V
    .locals 3
    .param p1, "pageSwitchListener"    # Lcom/android/launcher3/common/base/view/PagedView$PageSwitchListener;

    .prologue
    .line 418
    iput-object p1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageSwitchListener:Lcom/android/launcher3/common/base/view/PagedView$PageSwitchListener;

    .line 419
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageSwitchListener:Lcom/android/launcher3/common/base/view/PagedView$PageSwitchListener;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageSwitchListener:Lcom/android/launcher3/common/base/view/PagedView$PageSwitchListener;

    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/common/base/view/PagedView$PageSwitchListener;->onPageSwitch(Landroid/view/View;I)V

    .line 422
    :cond_0
    return-void
.end method

.method public setRestorePage(I)V
    .locals 0
    .param p1, "restorePage"    # I

    .prologue
    .line 518
    iput p1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mRestorePage:I

    .line 519
    return-void
.end method

.method public setScaleX(F)V
    .locals 4
    .param p1, "scaleX"    # F

    .prologue
    const/4 v3, 0x1

    .line 377
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 378
    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/base/view/PagedView;->isReordering(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mParentDownMotionX:F

    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mParentDownMotionY:F

    invoke-direct {p0, p0, v1, v2}, Lcom/android/launcher3/common/base/view/PagedView;->mapPointFromParentToView(Landroid/view/View;FF)[F

    move-result-object v0

    .line 380
    .local v0, "p":[F
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionX:F

    .line 381
    aget v1, v0, v3

    iput v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mLastMotionY:F

    .line 382
    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 384
    .end local v0    # "p":[F
    :cond_0
    return-void
.end method

.method public setZeroPageMarker(Z)V
    .locals 1
    .param p1, "existZeroPage"    # Z

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    if-eqz v0, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/view/PageIndicator;->setZeroPageMarker(Z)V

    .line 1016
    :cond_0
    return-void
.end method

.method protected shouldDrawChild(Landroid/view/View;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1117
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showHintPages()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2616
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v0

    .line 2618
    .local v0, "pageCount":I
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I

    .line 2619
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsShowingHintPages:Z

    .line 2621
    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mHintPageWidth:I

    neg-int v2, v2

    int-to-float v1, v2

    .line 2623
    .local v1, "to":F
    :goto_0
    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    if-eqz v2, :cond_0

    .line 2624
    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, v4, v1}, Lcom/android/launcher3/common/base/view/PagedView;->animateTranslationPage(Landroid/view/View;FF)V

    .line 2628
    :cond_0
    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    if-ge v2, v0, :cond_1

    .line 2629
    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    neg-float v3, v1

    invoke-direct {p0, v2, v4, v3}, Lcom/android/launcher3/common/base/view/PagedView;->animateTranslationPage(Landroid/view/View;FF)V

    .line 2631
    :cond_1
    return-void

    .line 2621
    .end local v1    # "to":F
    :cond_2
    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mHintPageWidth:I

    int-to-float v1, v2

    goto :goto_0
.end method

.method protected snapToDestination()V
    .locals 2

    .prologue
    .line 2003
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    sget v1, Lcom/android/launcher3/common/base/view/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(II)V

    .line 2004
    return-void
.end method

.method public snapToPage(I)V
    .locals 1
    .param p1, "whichPage"    # I

    .prologue
    .line 2061
    sget v0, Lcom/android/launcher3/common/base/view/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(II)V

    .line 2062
    return-void
.end method

.method public snapToPage(II)V
    .locals 2
    .param p1, "whichPage"    # I
    .param p2, "duration"    # I

    .prologue
    .line 2069
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(IIZLandroid/animation/TimeInterpolator;)V

    .line 2070
    return-void
.end method

.method protected snapToPage(III)V
    .locals 6
    .param p1, "whichPage"    # I
    .param p2, "delta"    # I
    .param p3, "duration"    # I

    .prologue
    .line 2086
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(IIIZLandroid/animation/TimeInterpolator;)V

    .line 2087
    return-void
.end method

.method protected snapToPage(IIIZLandroid/animation/TimeInterpolator;)V
    .locals 8
    .param p1, "whichPage"    # I
    .param p2, "delta"    # I
    .param p3, "duration"    # I
    .param p4, "immediate"    # Z
    .param p5, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 2094
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->validateNewPage(I)I

    move-result p1

    .line 2095
    iput p1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mNextPage:I

    .line 2096
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getFocusedChild()Landroid/view/View;

    move-result-object v6

    .line 2097
    .local v6, "focusedChild":Landroid/view/View;
    if-eqz v6, :cond_0

    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    .line 2098
    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v6, v0, :cond_0

    .line 2099
    invoke-virtual {v6}, Landroid/view/View;->clearFocus()V

    .line 2102
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->pageBeginMoving()V

    .line 2103
    invoke-virtual {p0, p3}, Lcom/android/launcher3/common/base/view/PagedView;->awakenScrollBars(I)Z

    .line 2104
    if-eqz p4, :cond_6

    .line 2105
    const/4 p3, 0x0

    .line 2110
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/PageScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2111
    invoke-direct {p0, v2}, Lcom/android/launcher3/common/base/view/PagedView;->abortScrollerAnimation(Z)V

    .line 2114
    :cond_2
    if-eqz p5, :cond_7

    .line 2115
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    invoke-virtual {v0, p5}, Lcom/android/launcher3/common/base/PageScroller;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2120
    :goto_1
    iget-boolean v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mIsShowingHintPages:Z

    if-eqz v0, :cond_4

    .line 2121
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPullingPagesAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPullingPagesAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2122
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPullingPagesAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 2124
    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScrollState:I

    .line 2125
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->resetPulledPages()V

    .line 2126
    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->setHintPageTranslation()V

    .line 2129
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollX()I

    move-result v1

    move v3, p2

    move v4, v2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/PageScroller;->startScroll(IIIII)V

    .line 2131
    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->updatePageIndicator()V

    .line 2134
    if-eqz p4, :cond_5

    .line 2135
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->computeScroll()V

    .line 2136
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->pageEndMoving()V

    .line 2138
    :cond_5
    iput-boolean v7, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    .line 2140
    iput-boolean v7, p0, Lcom/android/launcher3/common/base/view/PagedView;->mForceScreenScrolled:Z

    .line 2141
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->invalidate()V

    .line 2142
    return-void

    .line 2106
    :cond_6
    if-nez p3, :cond_1

    .line 2107
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p3

    goto :goto_0

    .line 2117
    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    iget-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/PageScroller;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_1
.end method

.method public snapToPage(IILandroid/animation/TimeInterpolator;)V
    .locals 1
    .param p1, "whichPage"    # I
    .param p2, "duration"    # I
    .param p3, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 2073
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(IIZLandroid/animation/TimeInterpolator;)V

    .line 2074
    return-void
.end method

.method protected snapToPage(IIZLandroid/animation/TimeInterpolator;)V
    .locals 7
    .param p1, "whichPage"    # I
    .param p2, "duration"    # I
    .param p3, "immediate"    # Z
    .param p4, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 2078
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->validateNewPage(I)I

    move-result p1

    .line 2080
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollForPage(I)I

    move-result v6

    .line 2081
    .local v6, "newX":I
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollX()I

    move-result v0

    sub-int v2, v6, v0

    .local v2, "delta":I
    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 2082
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(IIIZLandroid/animation/TimeInterpolator;)V

    .line 2083
    return-void
.end method

.method public snapToPageImmediately(I)V
    .locals 3
    .param p1, "whichPage"    # I

    .prologue
    .line 2065
    sget v0, Lcom/android/launcher3/common/base/view/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(IIZLandroid/animation/TimeInterpolator;)V

    .line 2066
    return-void
.end method

.method public snapToPageSALoggging(Z)V
    .locals 0
    .param p1, "isPageIndicator"    # Z

    .prologue
    .line 2090
    return-void
.end method

.method protected snapToPageWithVelocity(II)V
    .locals 9
    .param p1, "whichPage"    # I
    .param p2, "velocity"    # I

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 2027
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->validateNewPage(I)I

    move-result p1

    .line 2028
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getViewportWidth()I

    move-result v6

    div-int/lit8 v4, v6, 0x2

    .line 2030
    .local v4, "halfScreenSize":I
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollForPage(I)I

    move-result v5

    .line 2031
    .local v5, "newX":I
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollX()I

    move-result v6

    sub-int v0, v5, v6

    .line 2032
    .local v0, "delta":I
    const/4 v3, 0x0

    .line 2034
    .local v3, "duration":I
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/android/launcher3/common/base/view/PagedView;->mMinFlingVelocity:I

    if-ge v6, v7, :cond_0

    .line 2037
    sget v6, Lcom/android/launcher3/common/base/view/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, p1, v6}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(II)V

    .line 2058
    :goto_0
    return-void

    .line 2045
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    mul-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 2046
    .local v2, "distanceRatio":F
    int-to-float v6, v4

    int-to-float v7, v4

    .line 2047
    invoke-direct {p0, v2}, Lcom/android/launcher3/common/base/view/PagedView;->distanceInfluenceForSnapDuration(F)F

    move-result v8

    mul-float/2addr v7, v8

    add-float v1, v6, v7

    .line 2049
    .local v1, "distance":F
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 2050
    iget v6, p0, Lcom/android/launcher3/common/base/view/PagedView;->mMinSnapVelocity:I

    invoke-static {v6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2055
    const/high16 v6, 0x447a0000    # 1000.0f

    int-to-float v7, p2

    div-float v7, v1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int/lit8 v3, v6, 0x4

    .line 2057
    invoke-virtual {p0, p1, v0, v3}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(III)V

    goto :goto_0
.end method

.method public startReordering(Landroid/view/View;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v5, 0x3f933333    # 1.15f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2251
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 2253
    .local v0, "dragViewIndex":I
    iget v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTouchState:I

    if-nez v3, :cond_0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    :cond_0
    move v1, v2

    .line 2270
    :goto_0
    return v1

    .line 2255
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTempVisiblePagesRange:[I

    aput v2, v3, v2

    .line 2256
    iget-object v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    aput v4, v3, v1

    .line 2257
    iput-boolean v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mReorderingStarted:Z

    .line 2260
    iget-object v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTempVisiblePagesRange:[I

    aget v3, v3, v2

    if-gt v3, v0, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/common/base/view/PagedView;->mTempVisiblePagesRange:[I

    aget v3, v3, v1

    if-gt v0, v3, :cond_2

    .line 2263
    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    .line 2264
    iget-object v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2265
    iget-object v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/launcher3/common/base/view/PagedView;->mDragViewBaselineLeft:F

    .line 2266
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(I)V

    .line 2267
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onStartReordering()V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 2270
    goto :goto_0
.end method

.method public supportWhiteBg()Z
    .locals 1

    .prologue
    .line 2811
    const/4 v0, 0x1

    return v0
.end method

.method protected syncPageItems(IZ)V
    .locals 0
    .param p1, "page"    # I
    .param p2, "immediate"    # Z

    .prologue
    .line 2435
    return-void
.end method

.method protected syncPages()V
    .locals 0

    .prologue
    .line 2432
    return-void
.end method

.method protected updateCurrentPageScroll()V
    .locals 3

    .prologue
    .line 457
    const/4 v0, 0x0

    .line 458
    .local v0, "newX":I
    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 459
    iget v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollForPage(I)I

    move-result v0

    .line 461
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->scrollTo(II)V

    .line 462
    iget-object v1, p0, Lcom/android/launcher3/common/base/view/PagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/base/PageScroller;->setFinalX(I)V

    .line 463
    invoke-direct {p0}, Lcom/android/launcher3/common/base/view/PagedView;->forceFinishScroller()V

    .line 464
    return-void
.end method

.method public updateMarker(ILcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "marker"    # Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    if-eqz v0, :cond_0

    .line 1010
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/common/view/PageIndicator;->updateMarker(ILcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;)V

    .line 1011
    :cond_0
    return-void
.end method

.method protected updatePageTransform(Landroid/view/View;II)V
    .locals 7
    .param p1, "page"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "screenCenter"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 1244
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->resetTransitionEffect(Landroid/view/View;)V

    .line 1246
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/launcher3/common/base/view/PagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v3

    .line 1247
    .local v3, "scrollProgress":F
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getChildCount()I

    move-result v2

    .line 1249
    .local v2, "pageCount":I
    sget-boolean v5, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v5, :cond_3

    add-int/lit8 v0, v2, -0x1

    .line 1250
    .local v0, "overScrollLeftIndex":I
    :goto_0
    sget-boolean v5, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v5, :cond_4

    move v1, v4

    .line 1252
    .local v1, "overScrollRightIndex":I
    :goto_1
    if-ne p2, v0, :cond_0

    cmpg-float v4, v3, v6

    if-ltz v4, :cond_1

    :cond_0
    if-ne p2, v1, :cond_2

    cmpl-float v4, v3, v6

    if-lez v4, :cond_2

    .line 1254
    :cond_1
    invoke-direct {p0, p1, v3, v2}, Lcom/android/launcher3/common/base/view/PagedView;->overscrollEffect(Landroid/view/View;FI)V

    .line 1256
    :cond_2
    return-void

    .end local v0    # "overScrollLeftIndex":I
    .end local v1    # "overScrollRightIndex":I
    :cond_3
    move v0, v4

    .line 1249
    goto :goto_0

    .line 1250
    .restart local v0    # "overScrollLeftIndex":I
    :cond_4
    add-int/lit8 v1, v2, -0x1

    goto :goto_1
.end method
