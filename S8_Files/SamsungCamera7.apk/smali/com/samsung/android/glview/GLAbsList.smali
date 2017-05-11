.class public abstract Lcom/samsung/android/glview/GLAbsList;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "GLAbsList.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$TouchListener;
.implements Lcom/samsung/android/glview/GLView$KeyListener;
.implements Lcom/samsung/android/glview/GLView$DragListener;
.implements Lcom/samsung/android/glview/GLView$FocusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/glview/GLAbsList$MainHandler;,
        Lcom/samsung/android/glview/GLAbsList$ScrollListener;,
        Lcom/samsung/android/glview/GLAbsList$ItemSelectListener;,
        Lcom/samsung/android/glview/GLAbsList$Adapter;
    }
.end annotation


# static fields
.field private static final BOUNCE_DECELERATION_POSITION_DIVIDE_FACTOR:F = 1.0f

.field private static final BOUNCE_SMOOTH_LANDING_FACTOR:F = 0.5f

.field private static final BOUNCING_DECELERATION_DIP:F = 30.0f

.field private static final DEFAULT_OVER_SCROLL_START_OFFSET_DIP:I = -0x2

.field private static final DEFAULT_SCROLLBAR_PADDING_DIP:I = 0x1

.field private static final DEFAULT_SCROLL_THRESHOLD_DIP:F = 10.0f

.field private static final DRAG_ATTENUATION_RATE_FACTOR:F = 0.2f

.field private static final DRAG_OUT_DISTANCE_LIMIT_DIP:F = 25.0f

.field private static final ENABLE_DECELERATION_TIMEOUT:I = 0x1f4

.field private static final FLING_DECELERATION_DIP:F = 40.0f

.field private static final MESSAGE_ENABLE_DECELERATION:I = 0x2

.field private static final MESSAGE_HIDE_SCROLLBAR:I = 0x1

.field private static final SCROLLBAR_ID:I = 0xfffff

.field private static final SCROLLBAR_TIMEOUT:I = 0x3e8

.field public static final SCROLL_LANDSCAPE:I = 0x2

.field public static final SCROLL_PORTRAIT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GLAbsList"

.field private static final VELOCITY_MODERATION_RATIO:F = 0.01f

.field private static final VELOCITY_REVISE_THRESHOLD_DIP:F = 5.0f


# instance fields
.field protected mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

.field private mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

.field private mBounceImageTop:Lcom/samsung/android/glview/GLImage;

.field private mBouncing:Z

.field private final mBouncingDeceleration:F

.field protected mContentHeight:F

.field protected mContentWidth:F

.field private mDownEventX:F

.field private mDownEventY:F

.field private final mDragOutDistanceLimit:F

.field private mEnableBounceDeceleration:Z

.field private mEnableOverScrollEffect:Z

.field private mFirstFullyVisibleViewIndex:I

.field private final mFlingDeceleration:F

.field private mFlingVelocityX:F

.field private mFlingVelocityY:F

.field private mIsDecelerationHandlerMessageExecuted:Z

.field private mLandscapeBounceMaxOffset:F

.field private mLandscapeBounceOffset:F

.field private mLastEventX:F

.field private mLastEventY:F

.field private mLastFullyVisibleViewIndex:I

.field private mListHeight:F

.field private mListVisibleHeight:F

.field private mListVisibleWidth:F

.field private mListWidth:F

.field protected mMainHandler:Landroid/os/Handler;

.field private mOverScrollStartOffset:F

.field private mPortraitBounceMaxOffset:F

.field private mPortraitBounceOffset:F

.field protected mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

.field private mScrollBarAlpha:F

.field private mScrollBarAutoHide:Z

.field private mScrollBarOffset:F

.field private mScrollBarPadding:F

.field private mScrollBarSize:F

.field private mScrollBarVisible:Z

.field private mScrollListener:Lcom/samsung/android/glview/GLAbsList$ScrollListener;

.field protected mScrollOrientation:I

.field private mScrollRequested:Z

.field protected mScrollSumX:F

.field protected mScrollSumY:F

.field private mScrollThreshold:F

.field private mScrollToVisibleView:Lcom/samsung/android/glview/GLView;

.field private mScrolling:Z

.field private final mVelocityReviseThreshold:F


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFF)V
    .locals 6
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    const/high16 v5, 0x41200000    # 10.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 275
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 120
    iput v3, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    .line 128
    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    .line 132
    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    .line 136
    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    .line 140
    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    .line 148
    new-instance v0, Lcom/samsung/android/glview/GLAbsList$MainHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/glview/GLAbsList$MainHandler;-><init>(Lcom/samsung/android/glview/GLAbsList;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mMainHandler:Landroid/os/Handler;

    .line 152
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    .line 156
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLAbsList;->mScrolling:Z

    .line 160
    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollThreshold:F

    .line 164
    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLastEventX:F

    .line 168
    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLastEventY:F

    .line 172
    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mDownEventX:F

    .line 176
    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mDownEventY:F

    .line 180
    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mListWidth:F

    .line 184
    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mListHeight:F

    .line 188
    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    .line 192
    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    .line 196
    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceMaxOffset:F

    .line 200
    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceMaxOffset:F

    .line 204
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    .line 208
    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarSize:F

    .line 212
    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarOffset:F

    .line 224
    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleWidth:F

    .line 228
    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleHeight:F

    .line 232
    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    .line 236
    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    .line 237
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollRequested:Z

    .line 239
    iput v2, p0, Lcom/samsung/android/glview/GLAbsList;->mFirstFullyVisibleViewIndex:I

    .line 240
    iput v2, p0, Lcom/samsung/android/glview/GLAbsList;->mLastFullyVisibleViewIndex:I

    .line 246
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarAutoHide:Z

    .line 247
    iput v4, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarAlpha:F

    .line 251
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLAbsList;->mEnableOverScrollEffect:Z

    .line 255
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLAbsList;->mEnableBounceDeceleration:Z

    .line 259
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLAbsList;->mIsDecelerationHandlerMessageExecuted:Z

    .line 277
    iput p4, p0, Lcom/samsung/android/glview/GLAbsList;->mListWidth:F

    .line 278
    iput p5, p0, Lcom/samsung/android/glview/GLAbsList;->mListHeight:F

    .line 280
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLContext;->getDensity()F

    move-result v0

    mul-float/2addr v0, v5

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollThreshold:F

    .line 281
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLContext;->getDensity()F

    move-result v0

    const/high16 v1, 0x42200000    # 40.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingDeceleration:F

    .line 282
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLContext;->getDensity()F

    move-result v0

    const/high16 v1, 0x41f00000    # 30.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBouncingDeceleration:F

    .line 283
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLContext;->getDensity()F

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mVelocityReviseThreshold:F

    .line 284
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLContext;->getDensity()F

    move-result v0

    const/high16 v1, 0x41c80000    # 25.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    .line 285
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLContext;->getDensity()F

    move-result v0

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarPadding:F

    .line 286
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLContext;->getDensity()F

    move-result v0

    const/high16 v1, -0x40000000    # -2.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mOverScrollStartOffset:F

    .line 291
    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/glview/GLAbsList;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/glview/GLAbsList;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/glview/GLAbsList;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/glview/GLAbsList;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/samsung/android/glview/GLAbsList;->enableBoundDeceleration(Z)V

    return-void
.end method

.method static synthetic access$202(Lcom/samsung/android/glview/GLAbsList;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/glview/GLAbsList;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLAbsList;->mIsDecelerationHandlerMessageExecuted:Z

    return p1
.end method

.method private declared-synchronized enableBoundDeceleration(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1815
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLAbsList;->mEnableBounceDeceleration:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1816
    monitor-exit p0

    return-void

    .line 1815
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addView(Lcom/samsung/android/glview/GLView;)V
    .locals 5
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v3, 0x0

    .line 298
    instance-of v2, p1, Lcom/samsung/android/glview/GLAbsList;

    if-eqz v2, :cond_0

    .line 299
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 301
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    .line 302
    .local v1, "paddings":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 304
    .local v0, "childPaddings":Landroid/graphics/Rect;
    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 305
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getLeft()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getLeft()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3

    .line 306
    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getLeft()F

    move-result v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 310
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getRight()F

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getRight()F

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_4

    .line 311
    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getRight()F

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 315
    :goto_1
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 316
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 318
    :cond_1
    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 319
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getTop()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getTop()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_5

    .line 320
    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getTop()F

    move-result v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 324
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getBottom()F

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getBottom()F

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_6

    .line 325
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getBottom()F

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 329
    :goto_3
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 330
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 333
    :cond_2
    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLView;->setPaddings(Landroid/graphics/Rect;)V

    .line 334
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 335
    return-void

    .line 308
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    goto/16 :goto_0

    .line 313
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    goto/16 :goto_1

    .line 322
    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    goto :goto_2

    .line 327
    :cond_6
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_3
.end method

.method protected declared-synchronized checkBoundary()Z
    .locals 6

    .prologue
    const v5, 0x3c23d70a    # 0.01f

    const/4 v4, 0x0

    .line 1250
    monitor-enter p0

    const/4 v0, 0x0

    .line 1251
    .local v0, "ret":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->isScrollable()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 1252
    const/4 v1, 0x0

    .line 1345
    :goto_0
    monitor-exit p0

    return v1

    .line 1254
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    .line 1255
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_5

    .line 1258
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    if-eqz v1, :cond_1

    .line 1259
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 1262
    :cond_1
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    .line 1264
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceMaxOffset:F

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 1265
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceMaxOffset:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_2

    .line 1267
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mVelocityReviseThreshold:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 1268
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mVelocityReviseThreshold:F

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    .line 1269
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mOverScrollStartOffset:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    .line 1270
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    .line 1273
    :cond_2
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceMaxOffset:F

    .line 1275
    :cond_3
    const/4 v0, 0x1

    :cond_4
    :goto_1
    move v1, v0

    .line 1345
    goto :goto_0

    .line 1276
    :cond_5
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaHeight()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_9

    .line 1279
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    if-eqz v1, :cond_6

    .line 1280
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 1283
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaHeight()F

    move-result v1

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    iget v3, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    .line 1284
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceMaxOffset:F

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_8

    .line 1285
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceMaxOffset:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_7

    .line 1287
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mVelocityReviseThreshold:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7

    .line 1288
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mVelocityReviseThreshold:F

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    neg-float v1, v1

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    .line 1289
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaHeight()F

    move-result v1

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mOverScrollStartOffset:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    .line 1290
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    .line 1293
    :cond_7
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceMaxOffset:F

    .line 1295
    :cond_8
    const/4 v0, 0x1

    goto :goto_1

    .line 1297
    :cond_9
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    .line 1298
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceMaxOffset:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1250
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1300
    :cond_a
    :try_start_2
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 1301
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_e

    .line 1303
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    if-eqz v1, :cond_b

    .line 1304
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 1307
    :cond_b
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    .line 1309
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceMaxOffset:F

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_d

    .line 1310
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceMaxOffset:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_c

    .line 1312
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mVelocityReviseThreshold:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_c

    .line 1313
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mVelocityReviseThreshold:F

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    .line 1314
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mOverScrollStartOffset:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    .line 1315
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    .line 1318
    :cond_c
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceMaxOffset:F

    .line 1320
    :cond_d
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 1321
    :cond_e
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaWidth()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_12

    .line 1323
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    if-eqz v1, :cond_f

    .line 1324
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 1327
    :cond_f
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaWidth()F

    move-result v1

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    iget v3, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    .line 1328
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceMaxOffset:F

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_11

    .line 1329
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceMaxOffset:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_10

    .line 1331
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mVelocityReviseThreshold:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_10

    .line 1332
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mVelocityReviseThreshold:F

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    neg-float v1, v1

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    .line 1333
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaWidth()F

    move-result v1

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mOverScrollStartOffset:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    .line 1334
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    .line 1337
    :cond_10
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceMaxOffset:F

    .line 1339
    :cond_11
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 1341
    :cond_12
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    .line 1342
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceMaxOffset:F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 339
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->clear()V

    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->clear()V

    .line 346
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_2

    .line 350
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->clear()V

    .line 351
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    .line 354
    :cond_2
    invoke-super {p0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    monitor-exit p0

    return-void

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public contains(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    .line 363
    const/4 v0, 0x0

    .line 365
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    goto :goto_0
.end method

.method public get(I)Lcom/samsung/android/glview/GLView;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 369
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    return-object v0
.end method

.method public getContentHeight()F
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    return v0
.end method

.method public getContentWidth()F
    .locals 1

    .prologue
    .line 377
    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    return v0
.end method

.method public getFirstFullyVisibleViewIndex()I
    .locals 1

    .prologue
    .line 381
    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mFirstFullyVisibleViewIndex:I

    return v0
.end method

.method public getLastFullyVisibleViewIndex()I
    .locals 1

    .prologue
    .line 385
    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mLastFullyVisibleViewIndex:I

    return v0
.end method

.method public getScrollBarAutoHide()Z
    .locals 1

    .prologue
    .line 389
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarAutoHide:Z

    return v0
.end method

.method public getScrollBarLength()F
    .locals 2

    .prologue
    .line 402
    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 403
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v0

    .line 408
    :goto_0
    return v0

    .line 404
    :cond_0
    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 405
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v0

    goto :goto_0

    .line 407
    :cond_1
    const-string v0, "GLAbsList"

    const-string v1, "orientation value is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScrollOrientation()I
    .locals 1

    .prologue
    .line 418
    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    return v0
.end method

.method public getScrollThreshold()F
    .locals 1

    .prologue
    .line 436
    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollThreshold:F

    return v0
.end method

.method protected declared-synchronized hideScrollBar()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1352
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getScrollBarAutoHide()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarAutoHide:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 1372
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1355
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 1356
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->restartScrollBarTimer()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1352
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1360
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarAlpha:F

    invoke-static {v1}, Lcom/samsung/android/glview/GLUtil;->getAlphaOffAnimation(F)Landroid/view/animation/Animation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 1361
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    new-instance v1, Lcom/samsung/android/glview/GLAbsList$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLAbsList$1;-><init>(Lcom/samsung/android/glview/GLAbsList;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    .line 1371
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->startAnimation()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public invalidate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 454
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 455
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLView;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 456
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->clear()V

    goto :goto_0

    .line 458
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 460
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v1, :cond_1

    .line 461
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLNinePatch;->cancelAnimation()V

    .line 462
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    .line 465
    :cond_1
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mListWidth:F

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mListHeight:F

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/glview/GLAbsList;->setSize(FF)V

    .line 466
    iput v3, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    .line 467
    iput v3, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    .line 469
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->refreshList()V

    .line 471
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    invoke-interface {v1}, Lcom/samsung/android/glview/GLAbsList$Adapter;->reset()V

    .line 472
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/glview/GLAbsList;->setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;I)V

    .line 473
    return-void
.end method

.method public isOverScrollEffectEnabled()Z
    .locals 1

    .prologue
    .line 481
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLAbsList;->mEnableOverScrollEffect:Z

    return v0
.end method

.method public isScrollable()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 485
    const/4 v0, 0x0

    .line 487
    .local v0, "scrollable":Z
    iget v3, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    if-ne v3, v1, :cond_2

    .line 488
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaHeight()F

    move-result v3

    iget v4, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-gez v3, :cond_1

    move v0, v1

    .line 492
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v2

    .line 488
    goto :goto_0

    .line 489
    :cond_2
    iget v3, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 490
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaWidth()F

    move-result v3

    iget v4, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-gez v3, :cond_3

    move v0, v1

    :goto_1
    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public onAlphaUpdated()V
    .locals 1

    .prologue
    .line 497
    invoke-super {p0}, Lcom/samsung/android/glview/GLViewGroup;->onAlphaUpdated()V

    .line 498
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->onAlphaUpdated()V

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_1

    .line 502
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->onAlphaUpdated()V

    .line 504
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_2

    .line 505
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->onAlphaUpdated()V

    .line 507
    :cond_2
    return-void
.end method

.method public onDrag(Lcom/samsung/android/glview/GLView;FFFF)V
    .locals 0
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "dx"    # F
    .param p5, "dy"    # F

    .prologue
    .line 514
    invoke-virtual {p0, p4, p5}, Lcom/samsung/android/glview/GLAbsList;->translate(FF)V

    .line 515
    return-void
.end method

.method public onDragEnd(Lcom/samsung/android/glview/GLView;FF)V
    .locals 0
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 522
    return-void
.end method

.method public onDragStart(Lcom/samsung/android/glview/GLView;FF)V
    .locals 0
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 530
    return-void
.end method

.method protected declared-synchronized onDraw()V
    .locals 17

    .prologue
    .line 1379
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollRequested:Z

    if-eqz v12, :cond_0

    .line 1380
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->scrollToVisible()Z

    .line 1383
    :cond_0
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    .line 1384
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    .line 1386
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/glview/GLContext;->getEstimatedFPS()I

    move-result v4

    .line 1388
    .local v4, "fps":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->checkBoundary()Z

    move-result v12

    if-nez v12, :cond_d

    .line 1390
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/glview/GLView;

    .line 1391
    .local v10, "view":Lcom/samsung/android/glview/GLView;
    if-eqz v10, :cond_1

    .line 1395
    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    const/4 v15, 0x0

    invoke-virtual {v10, v13, v14, v15}, Lcom/samsung/android/glview/GLView;->translate(FFZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1379
    .end local v4    # "fps":I
    .end local v10    # "view":Lcom/samsung/android/glview/GLView;
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    .line 1397
    .restart local v4    # "fps":I
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v12, :cond_3

    .line 1398
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleWidth:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    mul-float/2addr v13, v14

    neg-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleHeight:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    mul-float/2addr v14, v15

    neg-float v14, v14

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/samsung/android/glview/GLNinePatch;->translate(FFZ)V

    .line 1401
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    if-eqz v12, :cond_4

    .line 1402
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    .line 1403
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    .line 1407
    :cond_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_b

    .line 1408
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingDeceleration:F

    int-to-float v14, v4

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    .line 1409
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_5

    .line 1410
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    .line 1416
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_c

    .line 1417
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingDeceleration:F

    int-to-float v14, v4

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    .line 1418
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_6

    .line 1419
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    .line 1678
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-nez v12, :cond_7

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_8

    .line 1679
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 1681
    :cond_8
    const/4 v2, 0x0

    .line 1682
    .local v2, "checked":Z
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getMatrix()[F

    move-result-object v8

    .line 1683
    .local v8, "matrix":[F
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getClipRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 1686
    .local v3, "clipRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1687
    .local v7, "list":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/glview/GLView;>;"
    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v9

    .line 1688
    .local v9, "size":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    if-ge v6, v9, :cond_42

    .line 1689
    invoke-virtual {v7, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/glview/GLView;

    .line 1691
    .restart local v10    # "view":Lcom/samsung/android/glview/GLView;
    if-nez v2, :cond_9

    invoke-virtual {v10}, Lcom/samsung/android/glview/GLView;->isClipped()Z

    move-result v12

    if-nez v12, :cond_9

    .line 1692
    if-nez v6, :cond_41

    .line 1693
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFirstFullyVisibleViewIndex:I

    .line 1694
    const/4 v2, 0x1

    .line 1701
    :cond_9
    :goto_4
    if-eqz v2, :cond_a

    invoke-virtual {v10}, Lcom/samsung/android/glview/GLView;->isClipped()Z

    move-result v12

    if-nez v12, :cond_a

    .line 1702
    move-object/from16 v0, p0

    iput v6, v0, Lcom/samsung/android/glview/GLAbsList;->mLastFullyVisibleViewIndex:I

    .line 1705
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->clip()V

    .line 1707
    invoke-virtual {v10, v8, v3}, Lcom/samsung/android/glview/GLView;->draw([FLandroid/graphics/Rect;)V

    .line 1709
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->clearClip()V

    .line 1688
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1412
    .end local v2    # "checked":Z
    .end local v3    # "clipRect":Landroid/graphics/Rect;
    .end local v6    # "i":I
    .end local v7    # "list":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/glview/GLView;>;"
    .end local v8    # "matrix":[F
    .end local v9    # "size":I
    .end local v10    # "view":Lcom/samsung/android/glview/GLView;
    :cond_b
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingDeceleration:F

    int-to-float v14, v4

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    .line 1413
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_5

    .line 1414
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    goto/16 :goto_1

    .line 1421
    :cond_c
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingDeceleration:F

    int-to-float v14, v4

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    .line 1422
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_6

    .line 1423
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    goto/16 :goto_2

    .line 1425
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    if-eqz v12, :cond_3a

    .line 1427
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_22

    .line 1428
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    cmpg-float v12, v12, v13

    if-gez v12, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v5

    .line 1430
    .local v5, "height":F
    :goto_5
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    div-float/2addr v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v12, v12, v13

    if-lez v12, :cond_f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1432
    .local v1, "alpha":F
    :goto_6
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_19

    .line 1435
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_10

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/glview/GLView;

    .line 1436
    .restart local v10    # "view":Lcom/samsung/android/glview/GLView;
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v10, v13, v14, v15}, Lcom/samsung/android/glview/GLView;->translateAbsolute(FFZ)V

    goto :goto_7

    .line 1428
    .end local v1    # "alpha":F
    .end local v5    # "height":F
    .end local v10    # "view":Lcom/samsung/android/glview/GLView;
    :cond_e
    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    goto :goto_5

    .line 1430
    .restart local v5    # "height":F
    :cond_f
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    div-float v1, v12, v13

    goto :goto_6

    .line 1438
    .restart local v1    # "alpha":F
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    if-eqz v12, :cond_11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v12, :cond_11

    .line 1439
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FFZ)V

    .line 1443
    :cond_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    if-eqz v12, :cond_13

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mEnableOverScrollEffect:Z

    if-eqz v12, :cond_13

    .line 1444
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v12, v1}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    .line 1446
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    cmpl-float v12, v12, v13

    if-lez v12, :cond_12

    .line 1447
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    .line 1448
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    .line 1449
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    const/high16 v13, -0x40800000    # -1.0f

    mul-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    .line 1452
    :cond_12
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v13}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 1455
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mEnableBounceDeceleration:Z

    if-eqz v12, :cond_15

    .line 1456
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mMainHandler:Landroid/os/Handler;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 1457
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mMainHandler:Landroid/os/Handler;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 1462
    :cond_14
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_17

    .line 1463
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncingDeceleration:F

    int-to-float v14, v4

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    div-float/2addr v14, v15

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    .line 1474
    :cond_15
    :goto_8
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    add-float/2addr v12, v13

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_16

    .line 1476
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    .line 1477
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    .line 1478
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    .line 1634
    .end local v1    # "alpha":F
    .end local v5    # "height":F
    :cond_16
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    if-nez v12, :cond_6

    .line 1637
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_36

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/glview/GLView;

    .line 1638
    .restart local v10    # "view":Lcom/samsung/android/glview/GLView;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    const/4 v15, 0x0

    invoke-virtual {v10, v13, v14, v15}, Lcom/samsung/android/glview/GLView;->translateAbsolute(FFZ)V

    goto :goto_a

    .line 1466
    .end local v10    # "view":Lcom/samsung/android/glview/GLView;
    .restart local v1    # "alpha":F
    .restart local v5    # "height":F
    :cond_17
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    const/high16 v14, 0x3f800000    # 1.0f

    div-float/2addr v13, v14

    cmpl-float v12, v12, v13

    if-lez v12, :cond_18

    .line 1467
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncingDeceleration:F

    int-to-float v14, v4

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    div-float/2addr v14, v15

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    goto :goto_8

    .line 1469
    :cond_18
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncingDeceleration:F

    int-to-float v14, v4

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    goto :goto_8

    .line 1480
    :cond_19
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaHeight()F

    move-result v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_16

    .line 1483
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/glview/GLView;

    .line 1484
    .restart local v10    # "view":Lcom/samsung/android/glview/GLView;
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    int-to-float v14, v14

    sub-float v14, v5, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    int-to-float v15, v15

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    sub-float/2addr v14, v15

    const/4 v15, 0x0

    invoke-virtual {v10, v13, v14, v15}, Lcom/samsung/android/glview/GLView;->translateAbsolute(FFZ)V

    goto :goto_b

    .line 1486
    .end local v10    # "view":Lcom/samsung/android/glview/GLView;
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    if-eqz v12, :cond_1b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v12, :cond_1b

    .line 1487
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleHeight:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    int-to-float v15, v15

    sub-float v15, v5, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    mul-float/2addr v14, v15

    neg-float v14, v14

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FFZ)V

    .line 1491
    :cond_1b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    if-eqz v12, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mEnableOverScrollEffect:Z

    if-eqz v12, :cond_1d

    .line 1492
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v12, v1}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    .line 1494
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    cmpl-float v12, v12, v13

    if-lez v12, :cond_1c

    .line 1495
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    .line 1496
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaHeight()F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    .line 1497
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    const/high16 v13, -0x40800000    # -1.0f

    mul-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    .line 1500
    :cond_1c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v13}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 1501
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleHeight:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    sub-float/2addr v14, v15

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    .line 1504
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mEnableBounceDeceleration:Z

    if-eqz v12, :cond_1f

    .line 1505
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mMainHandler:Landroid/os/Handler;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v12

    if-eqz v12, :cond_1e

    .line 1506
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mMainHandler:Landroid/os/Handler;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 1511
    :cond_1e
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_20

    .line 1512
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncingDeceleration:F

    int-to-float v14, v4

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    div-float/2addr v14, v15

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    .line 1523
    :cond_1f
    :goto_c
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    sub-float v13, v5, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_16

    .line 1525
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    sub-float v12, v5, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    .line 1526
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    .line 1527
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    goto/16 :goto_9

    .line 1514
    :cond_20
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    const/high16 v14, 0x3f800000    # 1.0f

    div-float/2addr v13, v14

    cmpl-float v12, v12, v13

    if-lez v12, :cond_21

    .line 1515
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncingDeceleration:F

    int-to-float v14, v4

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    div-float/2addr v14, v15

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    goto :goto_c

    .line 1517
    :cond_21
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncingDeceleration:F

    int-to-float v14, v4

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    goto/16 :goto_c

    .line 1530
    .end local v1    # "alpha":F
    .end local v5    # "height":F
    :cond_22
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_16

    .line 1531
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    cmpg-float v12, v12, v13

    if-gez v12, :cond_23

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v11

    .line 1533
    .local v11, "width":F
    :goto_d
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    div-float/2addr v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v12, v12, v13

    if-lez v12, :cond_24

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1535
    .restart local v1    # "alpha":F
    :goto_e
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_2d

    .line 1538
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_f
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_25

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/glview/GLView;

    .line 1539
    .restart local v10    # "view":Lcom/samsung/android/glview/GLView;
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v10, v13, v14, v15}, Lcom/samsung/android/glview/GLView;->translateAbsolute(FFZ)V

    goto :goto_f

    .line 1531
    .end local v1    # "alpha":F
    .end local v10    # "view":Lcom/samsung/android/glview/GLView;
    .end local v11    # "width":F
    :cond_23
    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    goto :goto_d

    .line 1533
    .restart local v11    # "width":F
    :cond_24
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    div-float v1, v12, v13

    goto :goto_e

    .line 1541
    .restart local v1    # "alpha":F
    :cond_25
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    if-eqz v12, :cond_26

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v12, :cond_26

    .line 1542
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FFZ)V

    .line 1546
    :cond_26
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    if-eqz v12, :cond_28

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mEnableOverScrollEffect:Z

    if-eqz v12, :cond_28

    .line 1547
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v12, v1}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    .line 1549
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    cmpl-float v12, v12, v13

    if-lez v12, :cond_27

    .line 1550
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    .line 1551
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    .line 1552
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    const/high16 v13, -0x40800000    # -1.0f

    mul-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    .line 1555
    :cond_27
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v14}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v14

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 1558
    :cond_28
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mEnableBounceDeceleration:Z

    if-eqz v12, :cond_2a

    .line 1559
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mMainHandler:Landroid/os/Handler;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v12

    if-eqz v12, :cond_29

    .line 1560
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mMainHandler:Landroid/os/Handler;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 1565
    :cond_29
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_2b

    .line 1566
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncingDeceleration:F

    int-to-float v14, v4

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    div-float/2addr v14, v15

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    .line 1577
    :cond_2a
    :goto_10
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    add-float/2addr v12, v13

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_16

    .line 1579
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    .line 1580
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    .line 1581
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    goto/16 :goto_9

    .line 1568
    :cond_2b
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    const/high16 v14, 0x3f800000    # 1.0f

    div-float/2addr v13, v14

    cmpl-float v12, v12, v13

    if-lez v12, :cond_2c

    .line 1569
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncingDeceleration:F

    int-to-float v14, v4

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    div-float/2addr v14, v15

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    goto :goto_10

    .line 1571
    :cond_2c
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncingDeceleration:F

    int-to-float v14, v4

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    goto :goto_10

    .line 1583
    :cond_2d
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaWidth()F

    move-result v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_16

    .line 1586
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_11
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/glview/GLView;

    .line 1587
    .restart local v10    # "view":Lcom/samsung/android/glview/GLView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    sub-float v13, v11, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    sub-float/2addr v13, v14

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v10, v13, v14, v15}, Lcom/samsung/android/glview/GLView;->translateAbsolute(FFZ)V

    goto :goto_11

    .line 1589
    .end local v10    # "view":Lcom/samsung/android/glview/GLView;
    :cond_2e
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    if-eqz v12, :cond_2f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v12, :cond_2f

    .line 1590
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleWidth:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    int-to-float v14, v14

    sub-float v14, v11, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    int-to-float v15, v15

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    sub-float/2addr v14, v15

    mul-float/2addr v13, v14

    neg-float v13, v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FFZ)V

    .line 1594
    :cond_2f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    if-eqz v12, :cond_31

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mEnableOverScrollEffect:Z

    if-eqz v12, :cond_31

    .line 1595
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v12, v1}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    .line 1597
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    cmpl-float v12, v12, v13

    if-lez v12, :cond_30

    .line 1598
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    .line 1599
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaWidth()F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    .line 1600
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    const/high16 v13, -0x40800000    # -1.0f

    mul-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    .line 1603
    :cond_30
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v14}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v14

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 1604
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleWidth:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    sub-float/2addr v13, v14

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    .line 1607
    :cond_31
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mEnableBounceDeceleration:Z

    if-eqz v12, :cond_33

    .line 1608
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mMainHandler:Landroid/os/Handler;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v12

    if-eqz v12, :cond_32

    .line 1609
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mMainHandler:Landroid/os/Handler;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 1614
    :cond_32
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_34

    .line 1615
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncingDeceleration:F

    int-to-float v14, v4

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    div-float/2addr v14, v15

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    .line 1626
    :cond_33
    :goto_12
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    sub-float v13, v11, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_16

    .line 1628
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    sub-float v12, v11, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    .line 1629
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    .line 1630
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    goto/16 :goto_9

    .line 1617
    :cond_34
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    const/high16 v14, 0x3f800000    # 1.0f

    div-float/2addr v13, v14

    cmpl-float v12, v12, v13

    if-lez v12, :cond_35

    .line 1618
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncingDeceleration:F

    int-to-float v14, v4

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    div-float/2addr v14, v15

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    goto :goto_12

    .line 1620
    :cond_35
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncingDeceleration:F

    int-to-float v14, v4

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    goto/16 :goto_12

    .line 1640
    .end local v1    # "alpha":F
    .end local v11    # "width":F
    :cond_36
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    if-eqz v12, :cond_37

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v12, :cond_37

    .line 1641
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleWidth:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    mul-float/2addr v13, v14

    neg-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleHeight:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    mul-float/2addr v14, v15

    neg-float v14, v14

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FFZ)V

    .line 1644
    :cond_37
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    if-eqz v12, :cond_38

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    if-eqz v12, :cond_38

    .line 1645
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    .line 1646
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    .line 1648
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_39

    .line 1649
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 1650
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 1657
    :cond_38
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    goto/16 :goto_2

    .line 1652
    :cond_39
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v14

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 1653
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v14

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    goto :goto_13

    .line 1660
    :cond_3a
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3e

    .line 1661
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_3c

    .line 1662
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    .line 1675
    :cond_3b
    :goto_14
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    goto/16 :goto_2

    .line 1663
    :cond_3c
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaHeight()F

    move-result v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_3b

    .line 1664
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    cmpg-float v12, v12, v13

    if-gez v12, :cond_3d

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v5

    .line 1665
    .restart local v5    # "height":F
    :goto_15
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    sub-float v12, v5, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    goto :goto_14

    .line 1664
    .end local v5    # "height":F
    :cond_3d
    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    goto :goto_15

    .line 1667
    :cond_3e
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_3b

    .line 1668
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_3f

    .line 1669
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    goto :goto_14

    .line 1670
    :cond_3f
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaWidth()F

    move-result v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_3b

    .line 1671
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    cmpg-float v12, v12, v13

    if-gez v12, :cond_40

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v11

    .line 1672
    .restart local v11    # "width":F
    :goto_16
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    sub-float v12, v11, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    goto/16 :goto_14

    .line 1671
    .end local v11    # "width":F
    :cond_40
    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    goto :goto_16

    .line 1695
    .restart local v2    # "checked":Z
    .restart local v3    # "clipRect":Landroid/graphics/Rect;
    .restart local v6    # "i":I
    .restart local v7    # "list":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/glview/GLView;>;"
    .restart local v8    # "matrix":[F
    .restart local v9    # "size":I
    .restart local v10    # "view":Lcom/samsung/android/glview/GLView;
    :cond_41
    add-int/lit8 v12, v6, -0x1

    invoke-virtual {v7, v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v12}, Lcom/samsung/android/glview/GLView;->isClipped()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 1696
    move-object/from16 v0, p0

    iput v6, v0, Lcom/samsung/android/glview/GLAbsList;->mFirstFullyVisibleViewIndex:I

    .line 1697
    const/4 v2, 0x1

    goto/16 :goto_4

    .line 1712
    .end local v10    # "view":Lcom/samsung/android/glview/GLView;
    :cond_42
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v12, :cond_43

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    if-eqz v12, :cond_43

    .line 1713
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->clip()V

    .line 1715
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v12, v8, v3}, Lcom/samsung/android/glview/GLNinePatch;->draw([FLandroid/graphics/Rect;)V

    .line 1717
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->clearClip()V

    .line 1720
    :cond_43
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    if-eqz v12, :cond_44

    .line 1721
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->clip()V

    .line 1723
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v12, v8, v3}, Lcom/samsung/android/glview/GLImage;->draw([FLandroid/graphics/Rect;)V

    .line 1725
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->clearClip()V

    .line 1727
    :cond_44
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    if-eqz v12, :cond_45

    .line 1728
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->clip()V

    .line 1730
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v12, v8, v3}, Lcom/samsung/android/glview/GLImage;->draw([FLandroid/graphics/Rect;)V

    .line 1732
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->clearClip()V

    .line 1734
    :cond_45
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mDrawFirstTime:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1735
    monitor-exit p0

    return-void
.end method

.method public onFocusChanged(Lcom/samsung/android/glview/GLView;I)Z
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "focusStatus"    # I

    .prologue
    const/4 v0, 0x1

    .line 534
    if-ne p2, v0, :cond_0

    .line 535
    iput-boolean v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollRequested:Z

    .line 536
    iput-object p1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollToVisibleView:Lcom/samsung/android/glview/GLView;

    .line 538
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 543
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 548
    const/4 v0, 0x0

    return v0
.end method

.method public onLayoutUpdated()V
    .locals 0

    .prologue
    .line 553
    invoke-super {p0}, Lcom/samsung/android/glview/GLViewGroup;->onLayoutUpdated()V

    .line 555
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->setScrollBarLayout()V

    .line 556
    return-void
.end method

.method public onReset()V
    .locals 3

    .prologue
    .line 560
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v1, :cond_0

    .line 561
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLNinePatch;->reset()V

    .line 564
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    if-eqz v1, :cond_1

    .line 565
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->reset()V

    .line 568
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    if-eqz v1, :cond_2

    .line 569
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->reset()V

    .line 572
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    .line 573
    .local v0, "view":Lcom/samsung/android/glview/GLView;
    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->reset()V

    goto :goto_0

    .line 575
    .end local v0    # "view":Lcom/samsung/android/glview/GLView;
    :cond_3
    return-void
.end method

.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Lcom/samsung/android/glview/GLView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 582
    invoke-virtual {p0, p2}, Lcom/samsung/android/glview/GLAbsList;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const v11, 0x3e4ccccd    # 0.2f

    const/4 v12, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v10, 0x0

    .line 591
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 592
    .local v2, "et":Landroid/view/MotionEvent;
    iget-object v7, p0, Lcom/samsung/android/glview/GLAbsList;->mTransformedScreenCoordinate:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {p0, v7, v8, v9}, Lcom/samsung/android/glview/GLAbsList;->mapPointReverse([FFF)V

    .line 593
    iget-object v7, p0, Lcom/samsung/android/glview/GLAbsList;->mTransformedScreenCoordinate:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    iget-object v8, p0, Lcom/samsung/android/glview/GLAbsList;->mTransformedScreenCoordinate:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    invoke-virtual {v2, v7, v8}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 595
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->isScrollable()Z

    move-result v7

    if-nez v7, :cond_0

    .line 596
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 807
    :goto_0
    monitor-exit p0

    return v5

    .line 600
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->checkBoundary()Z

    move-result v3

    .line 602
    .local v3, "mBoundary":Z
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_5

    .line 603
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/samsung/android/glview/GLAbsList;->mEnableBounceDeceleration:Z

    .line 604
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/samsung/android/glview/GLAbsList;->mIsDecelerationHandlerMessageExecuted:Z

    .line 605
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/samsung/android/glview/GLAbsList;->mDownEventX:F

    .line 606
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/samsung/android/glview/GLAbsList;->mDownEventY:F

    .line 607
    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mDownEventX:F

    iput v7, p0, Lcom/samsung/android/glview/GLAbsList;->mLastEventX:F

    .line 608
    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mDownEventY:F

    iput v7, p0, Lcom/samsung/android/glview/GLAbsList;->mLastEventY:F

    .line 609
    const/4 v7, 0x0

    iput v7, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    .line 610
    const/4 v7, 0x0

    iput v7, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    .line 611
    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    and-int/lit8 v7, v7, 0x1

    if-ne v7, v6, :cond_3

    .line 612
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    cmpl-float v6, v6, v10

    if-lez v6, :cond_2

    .line 613
    const/4 v6, 0x0

    iput v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    .line 624
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->showScrollBar()V

    .line 625
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 591
    .end local v2    # "et":Landroid/view/MotionEvent;
    .end local v3    # "mBoundary":Z
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 614
    .restart local v2    # "et":Landroid/view/MotionEvent;
    .restart local v3    # "mBoundary":Z
    :cond_2
    :try_start_2
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v6, v7

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaHeight()F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    .line 615
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaHeight()F

    move-result v6

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    sub-float/2addr v6, v7

    iput v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    goto :goto_1

    .line 617
    :cond_3
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    and-int/lit8 v6, v6, 0x2

    if-ne v6, v12, :cond_1

    .line 618
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    cmpl-float v6, v6, v10

    if-lez v6, :cond_4

    .line 619
    const/4 v6, 0x0

    iput v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    goto :goto_1

    .line 620
    :cond_4
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v6, v7

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaWidth()F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    .line 621
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaWidth()F

    move-result v6

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    sub-float/2addr v6, v7

    iput v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    goto :goto_1

    .line 629
    :cond_5
    iget-boolean v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrolling:Z

    if-nez v7, :cond_8

    iget-boolean v7, p0, Lcom/samsung/android/glview/GLAbsList;->mDragging:Z

    if-nez v7, :cond_8

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-ne v7, v12, :cond_8

    .line 630
    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    and-int/lit8 v7, v7, 0x1

    if-ne v7, v6, :cond_6

    .line 631
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mLastEventY:F

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollThreshold:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_6

    .line 632
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, p0, Lcom/samsung/android/glview/GLAbsList;->mLastEventY:F

    .line 633
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/samsung/android/glview/GLAbsList;->setScrolling(Z)V

    .line 634
    const/4 v6, 0x3

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->setAction(I)V

    .line 637
    :cond_6
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    and-int/lit8 v6, v6, 0x2

    if-ne v6, v12, :cond_7

    .line 638
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mLastEventX:F

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollThreshold:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_7

    .line 639
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, p0, Lcom/samsung/android/glview/GLAbsList;->mLastEventX:F

    .line 640
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/samsung/android/glview/GLAbsList;->setScrolling(Z)V

    .line 641
    const/4 v6, 0x3

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->setAction(I)V

    .line 644
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->restartScrollBarTimer()V

    .line 645
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_0

    .line 648
    :cond_8
    iget-boolean v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrolling:Z

    if-eqz v7, :cond_23

    iget-boolean v7, p0, Lcom/samsung/android/glview/GLAbsList;->mDragging:Z

    if-nez v7, :cond_23

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-ne v7, v12, :cond_23

    .line 649
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    and-int/lit8 v5, v5, 0x1

    if-ne v5, v6, :cond_13

    .line 650
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mLastEventY:F

    sub-float v0, v5, v7

    .line 651
    .local v0, "delta":F
    move v1, v0

    .line 653
    .local v1, "deltaForContents":F
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    cmpl-float v5, v5, v10

    if-lez v5, :cond_b

    .line 654
    cmpg-float v5, v0, v10

    if-gez v5, :cond_a

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollThreshold:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_a

    .line 655
    const/4 v5, 0x0

    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    .line 656
    const/4 v3, 0x0

    .line 681
    :cond_9
    :goto_2
    iget-object v5, p0, Lcom/samsung/android/glview/GLAbsList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/glview/GLView;

    .line 682
    .local v4, "view":Lcom/samsung/android/glview/GLView;
    if-nez v3, :cond_f

    .line 683
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v1, v8}, Lcom/samsung/android/glview/GLView;->translate(FFZ)V

    goto :goto_3

    .line 659
    .end local v4    # "view":Lcom/samsung/android/glview/GLView;
    :cond_a
    const/4 v1, 0x0

    .line 660
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    goto :goto_2

    .line 662
    :cond_b
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v5, v7

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaHeight()F

    move-result v7

    cmpg-float v5, v5, v7

    if-gez v5, :cond_d

    .line 663
    cmpl-float v5, v0, v10

    if-lez v5, :cond_c

    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollThreshold:F

    cmpl-float v5, v0, v5

    if-lez v5, :cond_c

    .line 664
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v5

    iget-object v7, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    sub-float/2addr v5, v7

    iget-object v7, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    sub-float/2addr v5, v7

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    sub-float/2addr v5, v7

    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    .line 665
    const/4 v3, 0x0

    goto :goto_2

    .line 668
    :cond_c
    const/4 v1, 0x0

    .line 669
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    goto :goto_2

    .line 671
    :cond_d
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v5, v0

    cmpl-float v5, v5, v10

    if-lez v5, :cond_e

    .line 673
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    sub-float v1, v0, v5

    .line 674
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    goto :goto_2

    .line 675
    :cond_e
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v5, v7

    add-float/2addr v5, v0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaHeight()F

    move-result v7

    cmpg-float v5, v5, v7

    if-gez v5, :cond_9

    .line 677
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaHeight()F

    move-result v5

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    sub-float/2addr v5, v7

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v5, v7

    sub-float v1, v0, v5

    .line 678
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    goto :goto_2

    .line 685
    .restart local v4    # "view":Lcom/samsung/android/glview/GLView;
    :cond_f
    const/4 v7, 0x0

    mul-float v8, v1, v11

    const/4 v9, 0x0

    invoke-virtual {v4, v7, v8, v9}, Lcom/samsung/android/glview/GLView;->translate(FFZ)V

    goto :goto_3

    .line 689
    .end local v4    # "view":Lcom/samsung/android/glview/GLView;
    :cond_10
    iget-boolean v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v5, :cond_11

    .line 690
    if-nez v3, :cond_15

    .line 691
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleHeight:F

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    div-float/2addr v5, v7

    mul-float/2addr v5, v1

    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarOffset:F

    .line 695
    :goto_4
    iget-object v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v7, 0x0

    iget v8, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarOffset:F

    neg-float v8, v8

    invoke-virtual {v5, v7, v8}, Lcom/samsung/android/glview/GLNinePatch;->translate(FF)V

    .line 698
    :cond_11
    if-nez v3, :cond_16

    .line 699
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v5, v0

    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    .line 708
    :cond_12
    :goto_5
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mLastEventY:F

    .line 710
    .end local v0    # "delta":F
    .end local v1    # "deltaForContents":F
    :cond_13
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    and-int/lit8 v5, v5, 0x2

    if-ne v5, v12, :cond_20

    .line 711
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mLastEventX:F

    sub-float v0, v5, v7

    .line 712
    .restart local v0    # "delta":F
    move v1, v0

    .line 714
    .restart local v1    # "deltaForContents":F
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    cmpl-float v5, v5, v10

    if-lez v5, :cond_18

    .line 715
    cmpg-float v5, v0, v10

    if-gez v5, :cond_17

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollThreshold:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_17

    .line 716
    const/4 v5, 0x0

    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    .line 717
    const/4 v3, 0x0

    .line 743
    :cond_14
    :goto_6
    iget-object v5, p0, Lcom/samsung/android/glview/GLAbsList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/glview/GLView;

    .line 744
    .restart local v4    # "view":Lcom/samsung/android/glview/GLView;
    if-nez v3, :cond_1c

    .line 745
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v1, v7, v8}, Lcom/samsung/android/glview/GLView;->translate(FFZ)V

    goto :goto_7

    .line 693
    .end local v4    # "view":Lcom/samsung/android/glview/GLView;
    :cond_15
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleHeight:F

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    div-float/2addr v5, v7

    mul-float/2addr v5, v1

    mul-float/2addr v5, v11

    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarOffset:F

    goto :goto_4

    .line 701
    :cond_16
    iget-boolean v5, p0, Lcom/samsung/android/glview/GLAbsList;->mEnableBounceDeceleration:Z

    if-nez v5, :cond_12

    .line 702
    iget-object v5, p0, Lcom/samsung/android/glview/GLAbsList;->mMainHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    const-wide/16 v8, 0x1f4

    invoke-virtual {v5, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 703
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    cmpg-float v5, v5, v7

    if-gez v5, :cond_12

    .line 704
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    mul-float v7, v0, v11

    add-float/2addr v5, v7

    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    goto :goto_5

    .line 720
    :cond_17
    const/4 v1, 0x0

    .line 721
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    goto :goto_6

    .line 723
    :cond_18
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v5, v7

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaWidth()F

    move-result v7

    cmpg-float v5, v5, v7

    if-gez v5, :cond_1a

    .line 724
    cmpl-float v5, v0, v10

    if-lez v5, :cond_19

    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollThreshold:F

    cmpl-float v5, v0, v5

    if-lez v5, :cond_19

    .line 725
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v5

    iget-object v7, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    sub-float/2addr v5, v7

    iget-object v7, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    sub-float/2addr v5, v7

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    sub-float/2addr v5, v7

    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    .line 726
    const/4 v3, 0x0

    goto :goto_6

    .line 729
    :cond_19
    const/4 v1, 0x0

    .line 730
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    goto :goto_6

    .line 732
    :cond_1a
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v5, v0

    cmpl-float v5, v5, v10

    if-lez v5, :cond_1b

    .line 734
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    sub-float v1, v0, v5

    .line 735
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    goto/16 :goto_6

    .line 736
    :cond_1b
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v5, v7

    add-float/2addr v5, v0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaWidth()F

    move-result v7

    cmpg-float v5, v5, v7

    if-gez v5, :cond_14

    .line 738
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaWidth()F

    move-result v5

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    sub-float/2addr v5, v7

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v5, v7

    sub-float v1, v0, v5

    .line 739
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    goto/16 :goto_6

    .line 747
    .restart local v4    # "view":Lcom/samsung/android/glview/GLView;
    :cond_1c
    mul-float v7, v1, v11

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v7, v8, v9}, Lcom/samsung/android/glview/GLView;->translate(FFZ)V

    goto/16 :goto_7

    .line 751
    .end local v4    # "view":Lcom/samsung/android/glview/GLView;
    :cond_1d
    iget-boolean v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    if-eqz v5, :cond_1e

    iget-object v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v5, :cond_1e

    .line 752
    if-nez v3, :cond_21

    .line 753
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleWidth:F

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    div-float/2addr v5, v7

    mul-float/2addr v5, v1

    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarOffset:F

    .line 757
    :goto_8
    iget-object v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarOffset:F

    neg-float v7, v7

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Lcom/samsung/android/glview/GLNinePatch;->translate(FF)V

    .line 760
    :cond_1e
    if-nez v3, :cond_22

    .line 761
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v5, v0

    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    .line 770
    :cond_1f
    :goto_9
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mLastEventX:F

    .line 772
    .end local v0    # "delta":F
    .end local v1    # "deltaForContents":F
    :cond_20
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->restartScrollBarTimer()V

    .line 773
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    move v5, v6

    .line 774
    goto/16 :goto_0

    .line 755
    .restart local v0    # "delta":F
    .restart local v1    # "deltaForContents":F
    :cond_21
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleWidth:F

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    div-float/2addr v5, v7

    mul-float/2addr v5, v1

    mul-float/2addr v5, v11

    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarOffset:F

    goto :goto_8

    .line 763
    :cond_22
    iget-boolean v5, p0, Lcom/samsung/android/glview/GLAbsList;->mEnableBounceDeceleration:Z

    if-nez v5, :cond_1f

    .line 764
    iget-object v5, p0, Lcom/samsung/android/glview/GLAbsList;->mMainHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    const-wide/16 v8, 0x1f4

    invoke-virtual {v5, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 765
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    cmpg-float v5, v5, v7

    if-gez v5, :cond_1f

    .line 766
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    mul-float v7, v0, v11

    add-float/2addr v5, v7

    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    goto :goto_9

    .line 777
    .end local v0    # "delta":F
    .end local v1    # "deltaForContents":F
    :cond_23
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-eq v7, v6, :cond_24

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_25

    .line 778
    :cond_24
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/samsung/android/glview/GLAbsList;->mEnableBounceDeceleration:Z

    .line 781
    :cond_25
    iget-boolean v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrolling:Z

    if-eqz v7, :cond_2a

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-eq v7, v6, :cond_26

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_2a

    .line 782
    :cond_26
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/samsung/android/glview/GLAbsList;->setScrolling(Z)V

    .line 783
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    .line 784
    const/4 v7, 0x3

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 785
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->restartScrollBarTimer()V

    .line 786
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 788
    iget-object v7, p0, Lcom/samsung/android/glview/GLAbsList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_27

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/glview/GLView;

    .line 789
    .restart local v4    # "view":Lcom/samsung/android/glview/GLView;
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    goto :goto_a

    .line 792
    .end local v4    # "view":Lcom/samsung/android/glview/GLView;
    :cond_27
    if-nez v3, :cond_29

    iget-boolean v7, p0, Lcom/samsung/android/glview/GLAbsList;->mIsDecelerationHandlerMessageExecuted:Z

    if-nez v7, :cond_29

    .line 793
    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    and-int/lit8 v7, v7, 0x1

    if-ne v7, v6, :cond_28

    .line 794
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mDownEventY:F

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    sub-float/2addr v6, v7

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float/2addr v6, v7

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLContext;->getEstimatedFPS()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    neg-float v6, v6

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    long-to-float v7, v8

    div-float/2addr v6, v7

    iput v6, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    .line 796
    :cond_28
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    and-int/lit8 v6, v6, 0x2

    if-ne v6, v12, :cond_29

    .line 797
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mDownEventX:F

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float/2addr v6, v7

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float/2addr v6, v7

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLContext;->getEstimatedFPS()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    neg-float v6, v6

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    long-to-float v7, v8

    div-float/2addr v6, v7

    iput v6, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    .line 801
    :cond_29
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/glview/GLAbsList;->mIsDecelerationHandlerMessageExecuted:Z

    .line 802
    const-string v6, "GLAbsList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "estimated fps = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/glview/GLContext;->getEstimatedFPS()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_0

    .line 806
    :cond_2a
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized refreshList()V
    .locals 1

    .prologue
    .line 811
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    .line 812
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    .line 813
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mLastEventX:F

    .line 814
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mLastEventY:F

    .line 815
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    .line 816
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    .line 817
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mFirstFullyVisibleViewIndex:I

    .line 818
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mLastFullyVisibleViewIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 819
    monitor-exit p0

    return-void

    .line 811
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeView(Lcom/samsung/android/glview/GLView;)V
    .locals 0
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 826
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 827
    return-void
.end method

.method protected declared-synchronized restartScrollBarTimer()V
    .locals 4

    .prologue
    .line 1741
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1742
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1743
    monitor-exit p0

    return-void

    .line 1741
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public scrollList(FF)Z
    .locals 8
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 835
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->isScrollable()Z

    move-result v5

    if-nez v5, :cond_0

    .line 935
    :goto_0
    return v4

    .line 838
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->checkBoundary()Z

    move-result v1

    .line 839
    .local v1, "mBoundary":Z
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    and-int/lit8 v5, v5, 0x1

    if-ne v5, v3, :cond_d

    .line 840
    move v0, p2

    .line 841
    .local v0, "deltaForContents":F
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_5

    .line 842
    cmpg-float v5, p2, v7

    if-gez v5, :cond_4

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollThreshold:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    .line 843
    iput v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    .line 844
    const/4 v1, 0x0

    .line 866
    :cond_1
    :goto_1
    iget-boolean v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    if-nez v5, :cond_9

    .line 867
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->showScrollBar()V

    .line 877
    :cond_2
    :goto_2
    iget-object v5, p0, Lcom/samsung/android/glview/GLAbsList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLView;

    .line 878
    .local v2, "view":Lcom/samsung/android/glview/GLView;
    if-nez v1, :cond_3

    .line 879
    invoke-virtual {v2, v7, v0, v4}, Lcom/samsung/android/glview/GLView;->translate(FFZ)V

    goto :goto_3

    .line 847
    .end local v2    # "view":Lcom/samsung/android/glview/GLView;
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 849
    :cond_5
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaHeight()F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_7

    .line 850
    cmpl-float v5, p2, v7

    if-lez v5, :cond_6

    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollThreshold:F

    cmpl-float v5, p2, v5

    if-lez v5, :cond_6

    .line 851
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    .line 852
    const/4 v1, 0x0

    goto :goto_1

    .line 855
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 857
    :cond_7
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v5, p2

    cmpl-float v5, v5, v7

    if-lez v5, :cond_8

    .line 859
    const/4 v1, 0x1

    goto :goto_1

    .line 860
    :cond_8
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v5, v6

    add-float/2addr v5, p2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaHeight()F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    .line 862
    const/4 v1, 0x1

    goto :goto_1

    .line 868
    :cond_9
    iget-object v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v5, :cond_2

    .line 869
    if-nez v1, :cond_a

    .line 870
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleHeight:F

    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    div-float/2addr v5, v6

    mul-float/2addr v5, v0

    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarOffset:F

    .line 871
    iget-object v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarOffset:F

    neg-float v6, v6

    invoke-virtual {v5, v7, v6}, Lcom/samsung/android/glview/GLNinePatch;->translate(FF)V

    .line 873
    :cond_a
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->restartScrollBarTimer()V

    goto :goto_2

    .line 883
    :cond_b
    if-nez v1, :cond_c

    .line 884
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v5, p2

    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    .line 935
    .end local v0    # "deltaForContents":F
    :cond_c
    :goto_4
    if-nez v1, :cond_19

    :goto_5
    move v4, v3

    goto/16 :goto_0

    .line 886
    :cond_d
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    and-int/lit8 v5, v5, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_c

    .line 887
    move v0, p1

    .line 889
    .restart local v0    # "deltaForContents":F
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_12

    .line 890
    cmpg-float v5, p1, v7

    if-gez v5, :cond_11

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollThreshold:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_11

    .line 891
    iput v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    .line 892
    const/4 v1, 0x0

    .line 914
    :cond_e
    :goto_6
    iget-boolean v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    if-nez v5, :cond_16

    .line 915
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->showScrollBar()V

    .line 925
    :cond_f
    :goto_7
    iget-object v5, p0, Lcom/samsung/android/glview/GLAbsList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_10
    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLView;

    .line 926
    .restart local v2    # "view":Lcom/samsung/android/glview/GLView;
    if-nez v1, :cond_10

    .line 927
    invoke-virtual {v2, v0, v7, v4}, Lcom/samsung/android/glview/GLView;->translate(FFZ)V

    goto :goto_8

    .line 895
    .end local v2    # "view":Lcom/samsung/android/glview/GLView;
    :cond_11
    const/4 v0, 0x0

    goto :goto_6

    .line 897
    :cond_12
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaWidth()F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_14

    .line 898
    cmpl-float v5, p1, v7

    if-lez v5, :cond_13

    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollThreshold:F

    cmpl-float v5, p1, v5

    if-lez v5, :cond_13

    .line 899
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    .line 900
    const/4 v1, 0x0

    goto :goto_6

    .line 903
    :cond_13
    const/4 v0, 0x0

    goto :goto_6

    .line 905
    :cond_14
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v5, p1

    cmpl-float v5, v5, v7

    if-lez v5, :cond_15

    .line 907
    const/4 v1, 0x1

    goto :goto_6

    .line 908
    :cond_15
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v5, v6

    add-float/2addr v5, p1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaWidth()F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_e

    .line 910
    const/4 v1, 0x1

    goto :goto_6

    .line 916
    :cond_16
    iget-object v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v5, :cond_f

    .line 917
    if-nez v1, :cond_17

    .line 918
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleWidth:F

    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    div-float/2addr v5, v6

    mul-float/2addr v5, v0

    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarOffset:F

    .line 919
    iget-object v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarOffset:F

    neg-float v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/glview/GLNinePatch;->translate(FF)V

    .line 921
    :cond_17
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->restartScrollBarTimer()V

    goto :goto_7

    .line 930
    :cond_18
    if-nez v1, :cond_c

    .line 931
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v5, p1

    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    goto/16 :goto_4

    .end local v0    # "deltaForContents":F
    :cond_19
    move v3, v4

    .line 935
    goto/16 :goto_5
.end method

.method public scrollToVisible(Lcom/samsung/android/glview/GLView;)V
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 1015
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollRequested:Z

    .line 1016
    iput-object p1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollToVisibleView:Lcom/samsung/android/glview/GLView;

    .line 1017
    return-void
.end method

.method public scrollToVisible()Z
    .locals 13

    .prologue
    const/4 v8, 0x1

    const/4 v11, 0x0

    const/4 v7, 0x0

    .line 939
    iget-object v9, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollToVisibleView:Lcom/samsung/android/glview/GLView;

    if-nez v9, :cond_0

    .line 1011
    :goto_0
    return v7

    .line 943
    :cond_0
    iget-object v9, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollToVisibleView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLView;->getCurrentContentArea()Landroid/graphics/RectF;

    move-result-object v1

    .line 944
    .local v1, "itemCurrentRect":Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getCurrentContentArea()Landroid/graphics/RectF;

    move-result-object v2

    .line 947
    .local v2, "listCurrentRect":Landroid/graphics/RectF;
    invoke-virtual {v2, v1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 948
    iput-boolean v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollRequested:Z

    .line 949
    const-string v7, "GLAbsList"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "scrollToVisible : do nothing, view = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollToVisibleView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v10}, Lcom/samsung/android/glview/GLView;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", visibility = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollToVisibleView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v10}, Lcom/samsung/android/glview/GLView;->isVisible()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 950
    goto :goto_0

    .line 952
    :cond_1
    const/4 v4, 0x0

    .line 953
    .local v4, "offsetY":F
    const/4 v3, 0x0

    .line 955
    .local v3, "offsetX":F
    iget v9, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    if-ne v9, v8, :cond_8

    .line 957
    iget v9, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    cmpl-float v9, v9, v11

    if-lez v9, :cond_3

    .line 958
    iput v11, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    .line 964
    :cond_2
    :goto_1
    iget v9, v1, Landroid/graphics/RectF;->top:F

    iget v10, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v9, v10}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 966
    iput-boolean v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollRequested:Z

    move v7, v8

    .line 967
    goto :goto_0

    .line 959
    :cond_3
    iget v9, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    iget v10, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v9, v10

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaHeight()F

    move-result v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_2

    .line 960
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v9

    iget v10, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v0

    .line 961
    .local v0, "height":F
    :goto_2
    iget-object v9, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    sub-float v9, v0, v9

    iget-object v10, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    sub-float/2addr v9, v10

    iput v9, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    goto :goto_1

    .line 960
    .end local v0    # "height":F
    :cond_4
    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    goto :goto_2

    .line 968
    :cond_5
    iget v9, v1, Landroid/graphics/RectF;->top:F

    iget v10, v2, Landroid/graphics/RectF;->top:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_7

    .line 969
    iget v9, v2, Landroid/graphics/RectF;->top:F

    iget v10, v1, Landroid/graphics/RectF;->top:F

    sub-float v4, v9, v10

    .line 970
    iget v9, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v9, v4

    iput v9, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    .line 997
    :cond_6
    :goto_3
    iput v11, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    .line 998
    iput v11, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    .line 1001
    iget-object v9, p0, Lcom/samsung/android/glview/GLAbsList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/glview/GLView;

    .line 1002
    .local v5, "view":Lcom/samsung/android/glview/GLView;
    iget v10, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    iget v11, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    invoke-virtual {v5, v10, v11, v7}, Lcom/samsung/android/glview/GLView;->translateAbsolute(FFZ)V

    goto :goto_4

    .line 971
    .end local v5    # "view":Lcom/samsung/android/glview/GLView;
    :cond_7
    iget v9, v1, Landroid/graphics/RectF;->bottom:F

    iget v10, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_6

    .line 972
    iget v9, v2, Landroid/graphics/RectF;->bottom:F

    iget v10, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v4, v9, v10

    .line 973
    iget v9, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v9, v4

    iput v9, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    goto :goto_3

    .line 975
    :cond_8
    iget v9, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_6

    .line 977
    iget v9, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    cmpl-float v9, v9, v11

    if-lez v9, :cond_a

    .line 978
    iput v11, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    .line 984
    :cond_9
    :goto_5
    iget v9, v1, Landroid/graphics/RectF;->left:F

    iget v10, v2, Landroid/graphics/RectF;->left:F

    invoke-static {v9, v10}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 986
    iput-boolean v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollRequested:Z

    move v7, v8

    .line 987
    goto/16 :goto_0

    .line 979
    :cond_a
    iget v9, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    iget v10, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v9, v10

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaWidth()F

    move-result v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_9

    .line 980
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v9

    iget v10, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v6

    .line 981
    .local v6, "width":F
    :goto_6
    iget-object v9, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    sub-float v9, v6, v9

    iget-object v10, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    sub-float/2addr v9, v10

    iput v9, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    goto :goto_5

    .line 980
    .end local v6    # "width":F
    :cond_b
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    goto :goto_6

    .line 988
    :cond_c
    iget v9, v1, Landroid/graphics/RectF;->left:F

    iget v10, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_d

    .line 989
    iget v9, v2, Landroid/graphics/RectF;->left:F

    iget v10, v1, Landroid/graphics/RectF;->left:F

    sub-float v3, v9, v10

    .line 990
    iget v9, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v9, v3

    iput v9, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    goto/16 :goto_3

    .line 991
    :cond_d
    iget v9, v1, Landroid/graphics/RectF;->right:F

    iget v10, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_6

    .line 992
    iget v9, v2, Landroid/graphics/RectF;->right:F

    iget v10, v1, Landroid/graphics/RectF;->right:F

    sub-float v3, v9, v10

    .line 993
    iget v9, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v9, v3

    iput v9, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    goto/16 :goto_3

    .line 1005
    :cond_e
    iget-boolean v9, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    if-eqz v9, :cond_f

    iget-object v9, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v9, :cond_f

    .line 1006
    iget-object v9, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    iget v10, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleWidth:F

    iget v11, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    div-float/2addr v10, v11

    iget v11, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    mul-float/2addr v10, v11

    neg-float v10, v10

    iget v11, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleHeight:F

    iget v12, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    div-float/2addr v11, v12

    iget v12, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    mul-float/2addr v11, v12

    neg-float v11, v11

    invoke-virtual {v9, v10, v11, v7}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FFZ)V

    .line 1008
    :cond_f
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->showScrollBar()V

    .line 1009
    iput-boolean v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollRequested:Z

    .line 1010
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    move v7, v8

    .line 1011
    goto/16 :goto_0
.end method

.method public sendAccessibilityEvent(I)V
    .locals 0
    .param p1, "eventType"    # I

    .prologue
    .line 1025
    return-void
.end method

.method public setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/samsung/android/glview/GLAbsList$Adapter;

    .prologue
    .line 1033
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/glview/GLAbsList;->setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;I)V

    .line 1034
    return-void
.end method

.method public setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;I)V
    .locals 8
    .param p1, "adapter"    # Lcom/samsung/android/glview/GLAbsList$Adapter;
    .param p2, "scrollOrientation"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 1043
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->isScrollable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1044
    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    if-ne v0, v6, :cond_3

    .line 1045
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v4

    sget v7, Lcom/samsung/android/glview/R$drawable;->overscroll_portrait_top:I

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFZI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    .line 1046
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v4

    sget v7, Lcom/samsung/android/glview/R$drawable;->overscroll_portrait_bottom:I

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFZI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    .line 1051
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    iput-object p0, v0, Lcom/samsung/android/glview/GLImage;->mParent:Lcom/samsung/android/glview/GLView;

    .line 1052
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    iput-object p0, v0, Lcom/samsung/android/glview/GLImage;->mParent:Lcom/samsung/android/glview/GLView;

    .line 1053
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    .line 1054
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    .line 1057
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->setVisibleArea()V

    .line 1059
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_1

    .line 1060
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->setScrollBarLayout()V

    .line 1063
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_2

    .line 1064
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleWidth:F

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    div-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    mul-float/2addr v1, v2

    neg-float v1, v1

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleHeight:F

    iget v3, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    div-float/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    mul-float/2addr v2, v3

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->translate(FF)V

    .line 1066
    :cond_2
    return-void

    .line 1048
    :cond_3
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v5

    sget v7, Lcom/samsung/android/glview/R$drawable;->overscroll_landscape_left:I

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFZI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    .line 1049
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v5

    sget v7, Lcom/samsung/android/glview/R$drawable;->overscroll_landscape_right:I

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFZI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    goto :goto_0
.end method

.method protected declared-synchronized setBouncing(Z)V
    .locals 1
    .param p1, "bouncing"    # Z

    .prologue
    .line 1751
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1752
    monitor-exit p0

    return-void

    .line 1751
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setHeight(F)V
    .locals 0
    .param p1, "height"    # F

    .prologue
    .line 1070
    iput p1, p0, Lcom/samsung/android/glview/GLAbsList;->mListHeight:F

    .line 1072
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->setHeight(F)V

    .line 1073
    return-void
.end method

.method public setOverScrollEffect(Z)V
    .locals 0
    .param p1, "effect"    # Z

    .prologue
    .line 1081
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLAbsList;->mEnableOverScrollEffect:Z

    .line 1082
    return-void
.end method

.method public setPaddings(Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "paddings"    # Landroid/graphics/Rect;

    .prologue
    const/4 v9, 0x0

    .line 1089
    iput-object p1, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    .line 1090
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getLeft()F

    move-result v2

    .line 1091
    .local v2, "left":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getRight()F

    move-result v3

    .line 1092
    .local v3, "right":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getTop()F

    move-result v4

    .line 1093
    .local v4, "top":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getBottom()F

    move-result v0

    .line 1095
    .local v0, "bottom":F
    iget-object v6, p0, Lcom/samsung/android/glview/GLAbsList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/glview/GLView;

    .line 1096
    .local v5, "view":Lcom/samsung/android/glview/GLView;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v9, v9, v9, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1098
    .local v1, "childPaddings":Landroid/graphics/Rect;
    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_0

    .line 1099
    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v7

    sub-float/2addr v7, v2

    iget v8, p1, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v7

    cmpl-float v7, v7, v2

    if-ltz v7, :cond_2

    .line 1100
    iget v7, p1, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v8

    sub-float/2addr v8, v2

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v1, Landroid/graphics/Rect;->left:I

    .line 1104
    :goto_1
    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v7

    sub-float v7, v3, v7

    iget v8, p1, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_3

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v7

    cmpl-float v7, v3, v7

    if-ltz v7, :cond_3

    .line 1105
    iget v7, p1, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v8

    sub-float v8, v3, v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v1, Landroid/graphics/Rect;->right:I

    .line 1109
    :goto_2
    iget-object v7, v5, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iput v7, v1, Landroid/graphics/Rect;->top:I

    .line 1110
    iget-object v7, v5, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    .line 1112
    :cond_0
    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_1

    .line 1113
    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v7

    sub-float/2addr v7, v4

    iget v8, p1, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_4

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v7

    cmpl-float v7, v7, v4

    if-ltz v7, :cond_4

    .line 1114
    iget v7, p1, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v8

    sub-float/2addr v8, v4

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v1, Landroid/graphics/Rect;->top:I

    .line 1118
    :goto_3
    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v7

    sub-float v7, v0, v7

    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_5

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v7

    cmpl-float v7, v0, v7

    if-ltz v7, :cond_5

    .line 1119
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v8

    sub-float v8, v0, v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    .line 1123
    :goto_4
    iget-object v7, v5, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iput v7, v1, Landroid/graphics/Rect;->left:I

    .line 1124
    iget-object v7, v5, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iput v7, v1, Landroid/graphics/Rect;->right:I

    .line 1126
    :cond_1
    invoke-virtual {v5, v1}, Lcom/samsung/android/glview/GLView;->setPaddings(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1102
    :cond_2
    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iput v7, v1, Landroid/graphics/Rect;->left:I

    goto/16 :goto_1

    .line 1107
    :cond_3
    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iput v7, v1, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 1116
    :cond_4
    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iput v7, v1, Landroid/graphics/Rect;->top:I

    goto :goto_3

    .line 1121
    :cond_5
    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    .line 1128
    .end local v1    # "childPaddings":Landroid/graphics/Rect;
    .end local v5    # "view":Lcom/samsung/android/glview/GLView;
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->setVisibleArea()V

    .line 1129
    iget-object v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v6, :cond_7

    .line 1130
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->setScrollBarLayout()V

    .line 1132
    :cond_7
    return-void
.end method

.method public setScrollBarAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 1140
    iput p1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarAlpha:F

    .line 1141
    return-void
.end method

.method public setScrollBarAutoHide(Z)V
    .locals 0
    .param p1, "showScrollbar"    # Z

    .prologue
    .line 393
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarAutoHide:Z

    .line 394
    return-void
.end method

.method protected setScrollBarLayout()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1758
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-nez v0, :cond_1

    .line 1790
    :cond_0
    :goto_0
    return-void

    .line 1761
    :cond_1
    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    if-ne v0, v4, :cond_5

    .line 1762
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->isScrollable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1765
    invoke-static {}, Lcom/samsung/android/glview/GLUtil;->isLocaleRTL()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1766
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarPadding:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->moveLayoutAbsolute(FF)V

    .line 1774
    :goto_1
    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleHeight:F

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleHeight:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarSize:F

    .line 1775
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v1

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarSize:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 1788
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleWidth:F

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    div-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    mul-float/2addr v1, v2

    neg-float v1, v1

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleHeight:F

    iget v3, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    div-float/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    mul-float/2addr v2, v3

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FF)V

    .line 1789
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    goto :goto_0

    .line 1768
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-nez v0, :cond_4

    .line 1769
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getRight()F

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getLeft()F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarPadding:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->moveLayoutAbsolute(FF)V

    goto :goto_1

    .line 1771
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getRight()F

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getLeft()F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarPadding:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->moveLayoutAbsolute(FF)V

    goto :goto_1

    .line 1776
    :cond_5
    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1777
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->isScrollable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1780
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-nez v0, :cond_6

    .line 1781
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getBottom()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getTop()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarPadding:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->moveLayoutAbsolute(FF)V

    .line 1785
    :goto_3
    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleWidth:F

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleWidth:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarSize:F

    .line 1786
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarSize:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    goto/16 :goto_2

    .line 1783
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getBottom()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getTop()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarPadding:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->moveLayoutAbsolute(FF)V

    goto :goto_3
.end method

.method public setScrollBarPadding(F)V
    .locals 0
    .param p1, "padding"    # F

    .prologue
    .line 1149
    iput p1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarPadding:F

    .line 1150
    return-void
.end method

.method public setScrollBarResource(I)V
    .locals 3
    .param p1, "ninepatchId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1158
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    .line 1159
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->clear()V

    .line 1161
    :cond_0
    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2, p1}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    .line 1162
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    const v1, 0xfffff

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setTag(I)V

    .line 1163
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    iput-object p0, v0, Lcom/samsung/android/glview/GLNinePatch;->mParent:Lcom/samsung/android/glview/GLView;

    .line 1164
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 1165
    return-void
.end method

.method public setScrollBarResource(II)V
    .locals 3
    .param p1, "ninepatchId"    # I
    .param p2, "color"    # I

    .prologue
    const/4 v2, 0x0

    .line 1174
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    .line 1175
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->clear()V

    .line 1177
    :cond_0
    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2, p1}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    .line 1178
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, p2}, Lcom/samsung/android/glview/GLNinePatch;->setTint(I)V

    .line 1179
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    const v1, 0xfffff

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setTag(I)V

    .line 1180
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    iput-object p0, v0, Lcom/samsung/android/glview/GLNinePatch;->mParent:Lcom/samsung/android/glview/GLView;

    .line 1181
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 1182
    return-void
.end method

.method public setScrollListener(Lcom/samsung/android/glview/GLAbsList$ScrollListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/glview/GLAbsList$ScrollListener;

    .prologue
    .line 1190
    iput-object p1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollListener:Lcom/samsung/android/glview/GLAbsList$ScrollListener;

    .line 1191
    return-void
.end method

.method public setScrollOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 427
    iput p1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    .line 428
    return-void
.end method

.method public setScrollThreshold(F)V
    .locals 3
    .param p1, "scrollThresholdDIP"    # F

    .prologue
    .line 445
    const-string v0, "GLAbsList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScrollThreshold : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iput p1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollThreshold:F

    .line 448
    return-void
.end method

.method public setScrolling(Z)V
    .locals 1
    .param p1, "start"    # Z

    .prologue
    .line 1199
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrolling:Z

    if-eq v0, p1, :cond_0

    .line 1200
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrolling:Z

    .line 1201
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollListener:Lcom/samsung/android/glview/GLAbsList$ScrollListener;

    if-eqz v0, :cond_0

    .line 1202
    if-eqz p1, :cond_2

    .line 1203
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollListener:Lcom/samsung/android/glview/GLAbsList$ScrollListener;

    invoke-interface {v0}, Lcom/samsung/android/glview/GLAbsList$ScrollListener;->onScrollStart()V

    .line 1208
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 1209
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->resetDrag()V

    .line 1210
    :cond_1
    return-void

    .line 1205
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollListener:Lcom/samsung/android/glview/GLAbsList$ScrollListener;

    invoke-interface {v0}, Lcom/samsung/android/glview/GLAbsList$ScrollListener;->onScrollEnd()V

    goto :goto_0
.end method

.method public setSize(FF)V
    .locals 0
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 1217
    iput p1, p0, Lcom/samsung/android/glview/GLAbsList;->mListWidth:F

    .line 1218
    iput p2, p0, Lcom/samsung/android/glview/GLAbsList;->mListHeight:F

    .line 1220
    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 1221
    return-void
.end method

.method protected setVisibleArea()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1796
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleWidth:F

    .line 1797
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleHeight:F

    .line 1799
    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1800
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    .line 1801
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 1802
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 1803
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleHeight:F

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    .line 1812
    :cond_0
    :goto_0
    return-void

    .line 1805
    :cond_1
    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1806
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    .line 1807
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 1808
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 1809
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleWidth:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    goto :goto_0
.end method

.method public setWidth(F)V
    .locals 0
    .param p1, "width"    # F

    .prologue
    .line 1225
    iput p1, p0, Lcom/samsung/android/glview/GLAbsList;->mListWidth:F

    .line 1227
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->setWidth(F)V

    .line 1228
    return-void
.end method

.method public showScrollBar()V
    .locals 2

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->isScrollable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1242
    :cond_0
    :goto_0
    return-void

    .line 1237
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1238
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarAlpha:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setAlpha(F)V

    .line 1239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    .line 1240
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 1241
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->restartScrollBarTimer()V

    goto :goto_0
.end method
