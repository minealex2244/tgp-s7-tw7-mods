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
    .line 1780
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLAbsList;->mEnableBounceDeceleration:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1781
    monitor-exit p0

    return-void

    .line 1780
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

    .line 1215
    monitor-enter p0

    const/4 v0, 0x0

    .line 1216
    .local v0, "ret":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->isScrollable()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 1217
    const/4 v1, 0x0

    .line 1310
    :goto_0
    monitor-exit p0

    return v1

    .line 1219
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    .line 1220
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_5

    .line 1223
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    if-eqz v1, :cond_1

    .line 1224
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 1227
    :cond_1
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    .line 1229
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceMaxOffset:F

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 1230
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceMaxOffset:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_2

    .line 1232
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mVelocityReviseThreshold:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 1233
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mVelocityReviseThreshold:F

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    .line 1234
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mOverScrollStartOffset:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    .line 1235
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    .line 1238
    :cond_2
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceMaxOffset:F

    .line 1240
    :cond_3
    const/4 v0, 0x1

    :cond_4
    :goto_1
    move v1, v0

    .line 1310
    goto :goto_0

    .line 1241
    :cond_5
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaHeight()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_9

    .line 1244
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    if-eqz v1, :cond_6

    .line 1245
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 1248
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaHeight()F

    move-result v1

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    iget v3, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    .line 1249
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceMaxOffset:F

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_8

    .line 1250
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceMaxOffset:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_7

    .line 1252
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mVelocityReviseThreshold:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7

    .line 1253
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mVelocityReviseThreshold:F

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    neg-float v1, v1

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    .line 1254
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaHeight()F

    move-result v1

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mOverScrollStartOffset:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    .line 1255
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    .line 1258
    :cond_7
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceMaxOffset:F

    .line 1260
    :cond_8
    const/4 v0, 0x1

    goto :goto_1

    .line 1262
    :cond_9
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    .line 1263
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceMaxOffset:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1215
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1265
    :cond_a
    :try_start_2
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 1266
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_e

    .line 1268
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    if-eqz v1, :cond_b

    .line 1269
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 1272
    :cond_b
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    .line 1274
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceMaxOffset:F

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_d

    .line 1275
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceMaxOffset:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_c

    .line 1277
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mVelocityReviseThreshold:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_c

    .line 1278
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mVelocityReviseThreshold:F

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    .line 1279
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mOverScrollStartOffset:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    .line 1280
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    .line 1283
    :cond_c
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceMaxOffset:F

    .line 1285
    :cond_d
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 1286
    :cond_e
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaWidth()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_12

    .line 1288
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    if-eqz v1, :cond_f

    .line 1289
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 1292
    :cond_f
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaWidth()F

    move-result v1

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    iget v3, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    .line 1293
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceMaxOffset:F

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_11

    .line 1294
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceMaxOffset:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_10

    .line 1296
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mVelocityReviseThreshold:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_10

    .line 1297
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mVelocityReviseThreshold:F

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    neg-float v1, v1

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    .line 1298
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaWidth()F

    move-result v1

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mOverScrollStartOffset:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    .line 1299
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    .line 1302
    :cond_10
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceMaxOffset:F

    .line 1304
    :cond_11
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 1306
    :cond_12
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    .line 1307
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

    .line 1317
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

    .line 1337
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1320
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

    .line 1321
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->restartScrollBarTimer()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1317
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1325
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarAlpha:F

    invoke-static {v1}, Lcom/samsung/android/glview/GLUtil;->getAlphaOffAnimation(F)Landroid/view/animation/Animation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 1326
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    new-instance v1, Lcom/samsung/android/glview/GLAbsList$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLAbsList$1;-><init>(Lcom/samsung/android/glview/GLAbsList;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    .line 1336
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
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLNinePatch;->cancelAnimation()V

    .line 461
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    .line 463
    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mListWidth:F

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mListHeight:F

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/glview/GLAbsList;->setSize(FF)V

    .line 464
    iput v3, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    .line 465
    iput v3, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    .line 467
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->refreshList()V

    .line 469
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    invoke-interface {v1}, Lcom/samsung/android/glview/GLAbsList$Adapter;->reset()V

    .line 470
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/glview/GLAbsList;->setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;I)V

    .line 471
    return-void
.end method

.method public isOverScrollEffectEnabled()Z
    .locals 1

    .prologue
    .line 479
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLAbsList;->mEnableOverScrollEffect:Z

    return v0
.end method

.method public isScrollable()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 483
    const/4 v0, 0x0

    .line 485
    .local v0, "scrollable":Z
    iget v3, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    if-ne v3, v1, :cond_2

    .line 486
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaHeight()F

    move-result v3

    iget v4, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-gez v3, :cond_1

    move v0, v1

    .line 490
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v2

    .line 486
    goto :goto_0

    .line 487
    :cond_2
    iget v3, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 488
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
    .line 495
    invoke-super {p0}, Lcom/samsung/android/glview/GLViewGroup;->onAlphaUpdated()V

    .line 496
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->onAlphaUpdated()V

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_1

    .line 500
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->onAlphaUpdated()V

    .line 502
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_2

    .line 503
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->onAlphaUpdated()V

    .line 505
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
    .line 512
    invoke-virtual {p0, p4, p5}, Lcom/samsung/android/glview/GLAbsList;->translate(FF)V

    .line 513
    return-void
.end method

.method public onDragEnd(Lcom/samsung/android/glview/GLView;FF)V
    .locals 0
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 520
    return-void
.end method

.method public onDragStart(Lcom/samsung/android/glview/GLView;FF)V
    .locals 0
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 528
    return-void
.end method

.method protected declared-synchronized onDraw()V
    .locals 17

    .prologue
    .line 1344
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollRequested:Z

    if-eqz v12, :cond_0

    .line 1345
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->scrollToVisible()Z

    .line 1348
    :cond_0
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    .line 1349
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    .line 1351
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/glview/GLContext;->getEstimatedFPS()I

    move-result v4

    .line 1353
    .local v4, "fps":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->checkBoundary()Z

    move-result v12

    if-nez v12, :cond_d

    .line 1355
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

    .line 1356
    .local v10, "view":Lcom/samsung/android/glview/GLView;
    if-eqz v10, :cond_1

    .line 1360
    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    const/4 v15, 0x0

    invoke-virtual {v10, v13, v14, v15}, Lcom/samsung/android/glview/GLView;->translate(FFZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1344
    .end local v4    # "fps":I
    .end local v10    # "view":Lcom/samsung/android/glview/GLView;
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    .line 1362
    .restart local v4    # "fps":I
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v12, :cond_3

    .line 1363
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

    .line 1366
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    if-eqz v12, :cond_4

    .line 1367
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    .line 1368
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    .line 1372
    :cond_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_b

    .line 1373
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingDeceleration:F

    int-to-float v14, v4

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    .line 1374
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_5

    .line 1375
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    .line 1381
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_c

    .line 1382
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingDeceleration:F

    int-to-float v14, v4

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    .line 1383
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_6

    .line 1384
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    .line 1643
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

    .line 1644
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 1646
    :cond_8
    const/4 v2, 0x0

    .line 1647
    .local v2, "checked":Z
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getMatrix()[F

    move-result-object v8

    .line 1648
    .local v8, "matrix":[F
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getClipRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 1651
    .local v3, "clipRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1652
    .local v7, "list":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/glview/GLView;>;"
    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v9

    .line 1653
    .local v9, "size":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    if-ge v6, v9, :cond_42

    .line 1654
    invoke-virtual {v7, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/glview/GLView;

    .line 1656
    .restart local v10    # "view":Lcom/samsung/android/glview/GLView;
    if-nez v2, :cond_9

    invoke-virtual {v10}, Lcom/samsung/android/glview/GLView;->isClipped()Z

    move-result v12

    if-nez v12, :cond_9

    .line 1657
    if-nez v6, :cond_41

    .line 1658
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFirstFullyVisibleViewIndex:I

    .line 1659
    const/4 v2, 0x1

    .line 1666
    :cond_9
    :goto_4
    if-eqz v2, :cond_a

    invoke-virtual {v10}, Lcom/samsung/android/glview/GLView;->isClipped()Z

    move-result v12

    if-nez v12, :cond_a

    .line 1667
    move-object/from16 v0, p0

    iput v6, v0, Lcom/samsung/android/glview/GLAbsList;->mLastFullyVisibleViewIndex:I

    .line 1670
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->clip()V

    .line 1672
    invoke-virtual {v10, v8, v3}, Lcom/samsung/android/glview/GLView;->draw([FLandroid/graphics/Rect;)V

    .line 1674
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->clearClip()V

    .line 1653
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1377
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

    .line 1378
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_5

    .line 1379
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    goto/16 :goto_1

    .line 1386
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

    .line 1387
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_6

    .line 1388
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    goto/16 :goto_2

    .line 1390
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    if-eqz v12, :cond_3a

    .line 1392
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_22

    .line 1393
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    cmpg-float v12, v12, v13

    if-gez v12, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v5

    .line 1395
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

    .line 1397
    .local v1, "alpha":F
    :goto_6
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_19

    .line 1400
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

    .line 1401
    .restart local v10    # "view":Lcom/samsung/android/glview/GLView;
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v10, v13, v14, v15}, Lcom/samsung/android/glview/GLView;->translateAbsolute(FFZ)V

    goto :goto_7

    .line 1393
    .end local v1    # "alpha":F
    .end local v5    # "height":F
    .end local v10    # "view":Lcom/samsung/android/glview/GLView;
    :cond_e
    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    goto :goto_5

    .line 1395
    .restart local v5    # "height":F
    :cond_f
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    div-float v1, v12, v13

    goto :goto_6

    .line 1403
    .restart local v1    # "alpha":F
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    if-eqz v12, :cond_11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v12, :cond_11

    .line 1404
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FFZ)V

    .line 1408
    :cond_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    if-eqz v12, :cond_13

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mEnableOverScrollEffect:Z

    if-eqz v12, :cond_13

    .line 1409
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v12, v1}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    .line 1411
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    cmpl-float v12, v12, v13

    if-lez v12, :cond_12

    .line 1412
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    .line 1413
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    .line 1414
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    const/high16 v13, -0x40800000    # -1.0f

    mul-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    .line 1417
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

    .line 1420
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mEnableBounceDeceleration:Z

    if-eqz v12, :cond_15

    .line 1421
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mMainHandler:Landroid/os/Handler;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 1422
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mMainHandler:Landroid/os/Handler;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 1427
    :cond_14
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_17

    .line 1428
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

    .line 1439
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

    .line 1441
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    .line 1442
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    .line 1443
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    .line 1599
    .end local v1    # "alpha":F
    .end local v5    # "height":F
    :cond_16
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    if-nez v12, :cond_6

    .line 1602
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

    .line 1603
    .restart local v10    # "view":Lcom/samsung/android/glview/GLView;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    const/4 v15, 0x0

    invoke-virtual {v10, v13, v14, v15}, Lcom/samsung/android/glview/GLView;->translateAbsolute(FFZ)V

    goto :goto_a

    .line 1431
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

    .line 1432
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

    .line 1434
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

    .line 1445
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

    .line 1448
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

    .line 1449
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

    .line 1451
    .end local v10    # "view":Lcom/samsung/android/glview/GLView;
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    if-eqz v12, :cond_1b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v12, :cond_1b

    .line 1452
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

    .line 1456
    :cond_1b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    if-eqz v12, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mEnableOverScrollEffect:Z

    if-eqz v12, :cond_1d

    .line 1457
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v12, v1}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    .line 1459
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    cmpl-float v12, v12, v13

    if-lez v12, :cond_1c

    .line 1460
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    .line 1461
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

    .line 1462
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    const/high16 v13, -0x40800000    # -1.0f

    mul-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    .line 1465
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

    .line 1466
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleHeight:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    sub-float/2addr v14, v15

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    .line 1469
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mEnableBounceDeceleration:Z

    if-eqz v12, :cond_1f

    .line 1470
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mMainHandler:Landroid/os/Handler;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v12

    if-eqz v12, :cond_1e

    .line 1471
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mMainHandler:Landroid/os/Handler;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 1476
    :cond_1e
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_20

    .line 1477
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

    .line 1488
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

    .line 1490
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

    .line 1491
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    .line 1492
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    goto/16 :goto_9

    .line 1479
    :cond_20
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    const/high16 v14, 0x3f800000    # 1.0f

    div-float/2addr v13, v14

    cmpl-float v12, v12, v13

    if-lez v12, :cond_21

    .line 1480
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

    .line 1482
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

    .line 1495
    .end local v1    # "alpha":F
    .end local v5    # "height":F
    :cond_22
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_16

    .line 1496
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    cmpg-float v12, v12, v13

    if-gez v12, :cond_23

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v11

    .line 1498
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

    .line 1500
    .restart local v1    # "alpha":F
    :goto_e
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_2d

    .line 1503
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

    .line 1504
    .restart local v10    # "view":Lcom/samsung/android/glview/GLView;
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v10, v13, v14, v15}, Lcom/samsung/android/glview/GLView;->translateAbsolute(FFZ)V

    goto :goto_f

    .line 1496
    .end local v1    # "alpha":F
    .end local v10    # "view":Lcom/samsung/android/glview/GLView;
    .end local v11    # "width":F
    :cond_23
    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    goto :goto_d

    .line 1498
    .restart local v11    # "width":F
    :cond_24
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    div-float v1, v12, v13

    goto :goto_e

    .line 1506
    .restart local v1    # "alpha":F
    :cond_25
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    if-eqz v12, :cond_26

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v12, :cond_26

    .line 1507
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FFZ)V

    .line 1511
    :cond_26
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    if-eqz v12, :cond_28

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mEnableOverScrollEffect:Z

    if-eqz v12, :cond_28

    .line 1512
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v12, v1}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    .line 1514
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    cmpl-float v12, v12, v13

    if-lez v12, :cond_27

    .line 1515
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    .line 1516
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    .line 1517
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    const/high16 v13, -0x40800000    # -1.0f

    mul-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    .line 1520
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

    .line 1523
    :cond_28
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mEnableBounceDeceleration:Z

    if-eqz v12, :cond_2a

    .line 1524
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mMainHandler:Landroid/os/Handler;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v12

    if-eqz v12, :cond_29

    .line 1525
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mMainHandler:Landroid/os/Handler;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 1530
    :cond_29
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_2b

    .line 1531
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

    .line 1542
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

    .line 1544
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    .line 1545
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    .line 1546
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    goto/16 :goto_9

    .line 1533
    :cond_2b
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    const/high16 v14, 0x3f800000    # 1.0f

    div-float/2addr v13, v14

    cmpl-float v12, v12, v13

    if-lez v12, :cond_2c

    .line 1534
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

    .line 1536
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

    .line 1548
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

    .line 1551
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

    .line 1552
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

    .line 1554
    .end local v10    # "view":Lcom/samsung/android/glview/GLView;
    :cond_2e
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    if-eqz v12, :cond_2f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v12, :cond_2f

    .line 1555
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

    .line 1559
    :cond_2f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    if-eqz v12, :cond_31

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mEnableOverScrollEffect:Z

    if-eqz v12, :cond_31

    .line 1560
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v12, v1}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    .line 1562
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    cmpl-float v12, v12, v13

    if-lez v12, :cond_30

    .line 1563
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    .line 1564
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

    .line 1565
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    const/high16 v13, -0x40800000    # -1.0f

    mul-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    .line 1568
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

    .line 1569
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleWidth:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    sub-float/2addr v13, v14

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    .line 1572
    :cond_31
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mEnableBounceDeceleration:Z

    if-eqz v12, :cond_33

    .line 1573
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mMainHandler:Landroid/os/Handler;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v12

    if-eqz v12, :cond_32

    .line 1574
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mMainHandler:Landroid/os/Handler;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 1579
    :cond_32
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_34

    .line 1580
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

    .line 1591
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

    .line 1593
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

    .line 1594
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    .line 1595
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    goto/16 :goto_9

    .line 1582
    :cond_34
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    const/high16 v14, 0x3f800000    # 1.0f

    div-float/2addr v13, v14

    cmpl-float v12, v12, v13

    if-lez v12, :cond_35

    .line 1583
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

    .line 1585
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

    .line 1605
    .end local v1    # "alpha":F
    .end local v11    # "width":F
    :cond_36
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    if-eqz v12, :cond_37

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v12, :cond_37

    .line 1606
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

    .line 1609
    :cond_37
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    if-eqz v12, :cond_38

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    if-eqz v12, :cond_38

    .line 1610
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    .line 1611
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    .line 1613
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_39

    .line 1614
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 1615
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 1622
    :cond_38
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    goto/16 :goto_2

    .line 1617
    :cond_39
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v14

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 1618
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v14

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    goto :goto_13

    .line 1625
    :cond_3a
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3e

    .line 1626
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_3c

    .line 1627
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    .line 1640
    :cond_3b
    :goto_14
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    goto/16 :goto_2

    .line 1628
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

    .line 1629
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    cmpg-float v12, v12, v13

    if-gez v12, :cond_3d

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v5

    .line 1630
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

    .line 1629
    .end local v5    # "height":F
    :cond_3d
    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    goto :goto_15

    .line 1632
    :cond_3e
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_3b

    .line 1633
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_3f

    .line 1634
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    goto :goto_14

    .line 1635
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

    .line 1636
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    cmpg-float v12, v12, v13

    if-gez v12, :cond_40

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v11

    .line 1637
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

    .line 1636
    .end local v11    # "width":F
    :cond_40
    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    goto :goto_16

    .line 1660
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

    .line 1661
    move-object/from16 v0, p0

    iput v6, v0, Lcom/samsung/android/glview/GLAbsList;->mFirstFullyVisibleViewIndex:I

    .line 1662
    const/4 v2, 0x1

    goto/16 :goto_4

    .line 1677
    .end local v10    # "view":Lcom/samsung/android/glview/GLView;
    :cond_42
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v12, :cond_43

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    if-eqz v12, :cond_43

    .line 1678
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->clip()V

    .line 1680
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v12, v8, v3}, Lcom/samsung/android/glview/GLNinePatch;->draw([FLandroid/graphics/Rect;)V

    .line 1682
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->clearClip()V

    .line 1685
    :cond_43
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    if-eqz v12, :cond_44

    .line 1686
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->clip()V

    .line 1688
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v12, v8, v3}, Lcom/samsung/android/glview/GLImage;->draw([FLandroid/graphics/Rect;)V

    .line 1690
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->clearClip()V

    .line 1692
    :cond_44
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    if-eqz v12, :cond_45

    .line 1693
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->clip()V

    .line 1695
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v12, v8, v3}, Lcom/samsung/android/glview/GLImage;->draw([FLandroid/graphics/Rect;)V

    .line 1697
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLAbsList;->clearClip()V

    .line 1699
    :cond_45
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/samsung/android/glview/GLAbsList;->mDrawFirstTime:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1700
    monitor-exit p0

    return-void
.end method

.method public onFocusChanged(Lcom/samsung/android/glview/GLView;I)Z
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "focusStatus"    # I

    .prologue
    const/4 v0, 0x1

    .line 532
    if-ne p2, v0, :cond_0

    .line 533
    iput-boolean v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollRequested:Z

    .line 534
    iput-object p1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollToVisibleView:Lcom/samsung/android/glview/GLView;

    .line 536
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 541
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 546
    const/4 v0, 0x0

    return v0
.end method

.method public onLayoutUpdated()V
    .locals 0

    .prologue
    .line 551
    invoke-super {p0}, Lcom/samsung/android/glview/GLViewGroup;->onLayoutUpdated()V

    .line 553
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->setScrollBarLayout()V

    .line 554
    return-void
.end method

.method public onReset()V
    .locals 3

    .prologue
    .line 558
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v1, :cond_0

    .line 559
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLNinePatch;->reset()V

    .line 562
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    if-eqz v1, :cond_1

    .line 563
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->reset()V

    .line 566
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    if-eqz v1, :cond_2

    .line 567
    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->reset()V

    .line 570
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

    .line 571
    .local v0, "view":Lcom/samsung/android/glview/GLView;
    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->reset()V

    goto :goto_0

    .line 573
    .end local v0    # "view":Lcom/samsung/android/glview/GLView;
    :cond_3
    return-void
.end method

.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Lcom/samsung/android/glview/GLView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 580
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

    const/4 v10, 0x0

    const/4 v6, 0x1

    .line 589
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 590
    .local v2, "et":Landroid/view/MotionEvent;
    iget-object v7, p0, Lcom/samsung/android/glview/GLAbsList;->mTransformedScreenCoordinate:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {p0, v7, v8, v9}, Lcom/samsung/android/glview/GLAbsList;->mapPointReverse([FFF)V

    .line 591
    iget-object v7, p0, Lcom/samsung/android/glview/GLAbsList;->mTransformedScreenCoordinate:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    iget-object v8, p0, Lcom/samsung/android/glview/GLAbsList;->mTransformedScreenCoordinate:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    invoke-virtual {v2, v7, v8}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 593
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->isScrollable()Z

    move-result v7

    if-nez v7, :cond_0

    .line 594
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 792
    :goto_0
    monitor-exit p0

    return v5

    .line 598
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->checkBoundary()Z

    move-result v3

    .line 600
    .local v3, "mBoundary":Z
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_1

    .line 601
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/glview/GLAbsList;->mEnableBounceDeceleration:Z

    .line 602
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/glview/GLAbsList;->mIsDecelerationHandlerMessageExecuted:Z

    .line 603
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, p0, Lcom/samsung/android/glview/GLAbsList;->mDownEventX:F

    .line 604
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, p0, Lcom/samsung/android/glview/GLAbsList;->mDownEventY:F

    .line 605
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mDownEventX:F

    iput v6, p0, Lcom/samsung/android/glview/GLAbsList;->mLastEventX:F

    .line 606
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mDownEventY:F

    iput v6, p0, Lcom/samsung/android/glview/GLAbsList;->mLastEventY:F

    .line 607
    const/4 v6, 0x0

    iput v6, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    .line 608
    const/4 v6, 0x0

    iput v6, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    .line 609
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->showScrollBar()V

    .line 610
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 589
    .end local v2    # "et":Landroid/view/MotionEvent;
    .end local v3    # "mBoundary":Z
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 614
    .restart local v2    # "et":Landroid/view/MotionEvent;
    .restart local v3    # "mBoundary":Z
    :cond_1
    :try_start_2
    iget-boolean v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrolling:Z

    if-nez v7, :cond_4

    iget-boolean v7, p0, Lcom/samsung/android/glview/GLAbsList;->mDragging:Z

    if-nez v7, :cond_4

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-ne v7, v12, :cond_4

    .line 615
    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    and-int/lit8 v7, v7, 0x1

    if-ne v7, v6, :cond_2

    .line 616
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mLastEventY:F

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollThreshold:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    .line 617
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, p0, Lcom/samsung/android/glview/GLAbsList;->mLastEventY:F

    .line 618
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/samsung/android/glview/GLAbsList;->setScrolling(Z)V

    .line 619
    const/4 v6, 0x3

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->setAction(I)V

    .line 622
    :cond_2
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    and-int/lit8 v6, v6, 0x2

    if-ne v6, v12, :cond_3

    .line 623
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mLastEventX:F

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollThreshold:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    .line 624
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, p0, Lcom/samsung/android/glview/GLAbsList;->mLastEventX:F

    .line 625
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/samsung/android/glview/GLAbsList;->setScrolling(Z)V

    .line 626
    const/4 v6, 0x3

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->setAction(I)V

    .line 629
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->restartScrollBarTimer()V

    .line 630
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_0

    .line 633
    :cond_4
    iget-boolean v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrolling:Z

    if-eqz v7, :cond_1f

    iget-boolean v7, p0, Lcom/samsung/android/glview/GLAbsList;->mDragging:Z

    if-nez v7, :cond_1f

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-ne v7, v12, :cond_1f

    .line 634
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    and-int/lit8 v5, v5, 0x1

    if-ne v5, v6, :cond_f

    .line 635
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mLastEventY:F

    sub-float v0, v5, v7

    .line 636
    .local v0, "delta":F
    move v1, v0

    .line 638
    .local v1, "deltaForContents":F
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    cmpl-float v5, v5, v10

    if-lez v5, :cond_7

    .line 639
    cmpg-float v5, v0, v10

    if-gez v5, :cond_6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollThreshold:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_6

    .line 640
    const/4 v5, 0x0

    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    .line 641
    const/4 v3, 0x0

    .line 666
    :cond_5
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/glview/GLAbsList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/glview/GLView;

    .line 667
    .local v4, "view":Lcom/samsung/android/glview/GLView;
    if-nez v3, :cond_b

    .line 668
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v1, v8}, Lcom/samsung/android/glview/GLView;->translate(FFZ)V

    goto :goto_2

    .line 644
    .end local v4    # "view":Lcom/samsung/android/glview/GLView;
    :cond_6
    const/4 v1, 0x0

    .line 645
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    goto :goto_1

    .line 647
    :cond_7
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v5, v7

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaHeight()F

    move-result v7

    cmpg-float v5, v5, v7

    if-gez v5, :cond_9

    .line 648
    cmpl-float v5, v0, v10

    if-lez v5, :cond_8

    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollThreshold:F

    cmpl-float v5, v0, v5

    if-lez v5, :cond_8

    .line 649
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

    .line 650
    const/4 v3, 0x0

    goto :goto_1

    .line 653
    :cond_8
    const/4 v1, 0x0

    .line 654
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    goto :goto_1

    .line 656
    :cond_9
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v5, v0

    cmpl-float v5, v5, v10

    if-lez v5, :cond_a

    .line 658
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    sub-float v1, v0, v5

    .line 659
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    goto :goto_1

    .line 660
    :cond_a
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v5, v7

    add-float/2addr v5, v0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaHeight()F

    move-result v7

    cmpg-float v5, v5, v7

    if-gez v5, :cond_5

    .line 662
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaHeight()F

    move-result v5

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    sub-float/2addr v5, v7

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v5, v7

    sub-float v1, v0, v5

    .line 663
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    goto :goto_1

    .line 670
    .restart local v4    # "view":Lcom/samsung/android/glview/GLView;
    :cond_b
    const/4 v7, 0x0

    mul-float v8, v1, v11

    const/4 v9, 0x0

    invoke-virtual {v4, v7, v8, v9}, Lcom/samsung/android/glview/GLView;->translate(FFZ)V

    goto :goto_2

    .line 674
    .end local v4    # "view":Lcom/samsung/android/glview/GLView;
    :cond_c
    iget-boolean v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v5, :cond_d

    .line 675
    if-nez v3, :cond_11

    .line 676
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleHeight:F

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    div-float/2addr v5, v7

    mul-float/2addr v5, v1

    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarOffset:F

    .line 680
    :goto_3
    iget-object v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v7, 0x0

    iget v8, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarOffset:F

    neg-float v8, v8

    invoke-virtual {v5, v7, v8}, Lcom/samsung/android/glview/GLNinePatch;->translate(FF)V

    .line 683
    :cond_d
    if-nez v3, :cond_12

    .line 684
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v5, v0

    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    .line 693
    :cond_e
    :goto_4
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mLastEventY:F

    .line 695
    .end local v0    # "delta":F
    .end local v1    # "deltaForContents":F
    :cond_f
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    and-int/lit8 v5, v5, 0x2

    if-ne v5, v12, :cond_1c

    .line 696
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mLastEventX:F

    sub-float v0, v5, v7

    .line 697
    .restart local v0    # "delta":F
    move v1, v0

    .line 699
    .restart local v1    # "deltaForContents":F
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    cmpl-float v5, v5, v10

    if-lez v5, :cond_14

    .line 700
    cmpg-float v5, v0, v10

    if-gez v5, :cond_13

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollThreshold:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_13

    .line 701
    const/4 v5, 0x0

    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    .line 702
    const/4 v3, 0x0

    .line 728
    :cond_10
    :goto_5
    iget-object v5, p0, Lcom/samsung/android/glview/GLAbsList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_19

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/glview/GLView;

    .line 729
    .restart local v4    # "view":Lcom/samsung/android/glview/GLView;
    if-nez v3, :cond_18

    .line 730
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v1, v7, v8}, Lcom/samsung/android/glview/GLView;->translate(FFZ)V

    goto :goto_6

    .line 678
    .end local v4    # "view":Lcom/samsung/android/glview/GLView;
    :cond_11
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleHeight:F

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    div-float/2addr v5, v7

    mul-float/2addr v5, v1

    mul-float/2addr v5, v11

    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarOffset:F

    goto :goto_3

    .line 686
    :cond_12
    iget-boolean v5, p0, Lcom/samsung/android/glview/GLAbsList;->mEnableBounceDeceleration:Z

    if-nez v5, :cond_e

    .line 687
    iget-object v5, p0, Lcom/samsung/android/glview/GLAbsList;->mMainHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    const-wide/16 v8, 0x1f4

    invoke-virtual {v5, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 688
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mPortraitBounceOffset:F

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    cmpg-float v5, v5, v7

    if-gez v5, :cond_e

    .line 689
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    mul-float v7, v0, v11

    add-float/2addr v5, v7

    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    goto :goto_4

    .line 705
    :cond_13
    const/4 v1, 0x0

    .line 706
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    goto :goto_5

    .line 708
    :cond_14
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v5, v7

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaWidth()F

    move-result v7

    cmpg-float v5, v5, v7

    if-gez v5, :cond_16

    .line 709
    cmpl-float v5, v0, v10

    if-lez v5, :cond_15

    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollThreshold:F

    cmpl-float v5, v0, v5

    if-lez v5, :cond_15

    .line 710
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

    .line 711
    const/4 v3, 0x0

    goto :goto_5

    .line 714
    :cond_15
    const/4 v1, 0x0

    .line 715
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    goto :goto_5

    .line 717
    :cond_16
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v5, v0

    cmpl-float v5, v5, v10

    if-lez v5, :cond_17

    .line 719
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    sub-float v1, v0, v5

    .line 720
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    goto/16 :goto_5

    .line 721
    :cond_17
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v5, v7

    add-float/2addr v5, v0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaWidth()F

    move-result v7

    cmpg-float v5, v5, v7

    if-gez v5, :cond_10

    .line 723
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaWidth()F

    move-result v5

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    sub-float/2addr v5, v7

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v5, v7

    sub-float v1, v0, v5

    .line 724
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    goto/16 :goto_5

    .line 732
    .restart local v4    # "view":Lcom/samsung/android/glview/GLView;
    :cond_18
    mul-float v7, v1, v11

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v7, v8, v9}, Lcom/samsung/android/glview/GLView;->translate(FFZ)V

    goto/16 :goto_6

    .line 736
    .end local v4    # "view":Lcom/samsung/android/glview/GLView;
    :cond_19
    iget-boolean v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    if-eqz v5, :cond_1a

    iget-object v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v5, :cond_1a

    .line 737
    if-nez v3, :cond_1d

    .line 738
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleWidth:F

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    div-float/2addr v5, v7

    mul-float/2addr v5, v1

    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarOffset:F

    .line 742
    :goto_7
    iget-object v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarOffset:F

    neg-float v7, v7

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Lcom/samsung/android/glview/GLNinePatch;->translate(FF)V

    .line 745
    :cond_1a
    if-nez v3, :cond_1e

    .line 746
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v5, v0

    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    .line 755
    :cond_1b
    :goto_8
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mLastEventX:F

    .line 757
    .end local v0    # "delta":F
    .end local v1    # "deltaForContents":F
    :cond_1c
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->restartScrollBarTimer()V

    .line 758
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    move v5, v6

    .line 759
    goto/16 :goto_0

    .line 740
    .restart local v0    # "delta":F
    .restart local v1    # "deltaForContents":F
    :cond_1d
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleWidth:F

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    div-float/2addr v5, v7

    mul-float/2addr v5, v1

    mul-float/2addr v5, v11

    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarOffset:F

    goto :goto_7

    .line 748
    :cond_1e
    iget-boolean v5, p0, Lcom/samsung/android/glview/GLAbsList;->mEnableBounceDeceleration:Z

    if-nez v5, :cond_1b

    .line 749
    iget-object v5, p0, Lcom/samsung/android/glview/GLAbsList;->mMainHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    const-wide/16 v8, 0x1f4

    invoke-virtual {v5, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 750
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mLandscapeBounceOffset:F

    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mDragOutDistanceLimit:F

    cmpg-float v5, v5, v7

    if-gez v5, :cond_1b

    .line 751
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    mul-float v7, v0, v11

    add-float/2addr v5, v7

    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    goto :goto_8

    .line 762
    .end local v0    # "delta":F
    .end local v1    # "deltaForContents":F
    :cond_1f
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-eq v7, v6, :cond_20

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_21

    .line 763
    :cond_20
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/samsung/android/glview/GLAbsList;->mEnableBounceDeceleration:Z

    .line 766
    :cond_21
    iget-boolean v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrolling:Z

    if-eqz v7, :cond_26

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-eq v7, v6, :cond_22

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_26

    .line 767
    :cond_22
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/samsung/android/glview/GLAbsList;->setScrolling(Z)V

    .line 768
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z

    .line 769
    const/4 v7, 0x3

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 770
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->restartScrollBarTimer()V

    .line 771
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 773
    iget-object v7, p0, Lcom/samsung/android/glview/GLAbsList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_23

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/glview/GLView;

    .line 774
    .restart local v4    # "view":Lcom/samsung/android/glview/GLView;
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    goto :goto_9

    .line 777
    .end local v4    # "view":Lcom/samsung/android/glview/GLView;
    :cond_23
    if-nez v3, :cond_25

    iget-boolean v7, p0, Lcom/samsung/android/glview/GLAbsList;->mIsDecelerationHandlerMessageExecuted:Z

    if-nez v7, :cond_25

    .line 778
    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    and-int/lit8 v7, v7, 0x1

    if-ne v7, v6, :cond_24

    .line 779
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

    .line 781
    :cond_24
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    and-int/lit8 v6, v6, 0x2

    if-ne v6, v12, :cond_25

    .line 782
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

    .line 786
    :cond_25
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/glview/GLAbsList;->mIsDecelerationHandlerMessageExecuted:Z

    .line 787
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

    .line 788
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_0

    .line 791
    :cond_26
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized refreshList()V
    .locals 1

    .prologue
    .line 796
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    .line 797
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    .line 798
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mLastEventX:F

    .line 799
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mLastEventY:F

    .line 800
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    .line 801
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    .line 802
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mFirstFullyVisibleViewIndex:I

    .line 803
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mLastFullyVisibleViewIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 804
    monitor-exit p0

    return-void

    .line 796
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeView(Lcom/samsung/android/glview/GLView;)V
    .locals 0
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 811
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 812
    return-void
.end method

.method protected declared-synchronized restartScrollBarTimer()V
    .locals 4

    .prologue
    .line 1706
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1707
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1708
    monitor-exit p0

    return-void

    .line 1706
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

    .line 820
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->isScrollable()Z

    move-result v5

    if-nez v5, :cond_0

    .line 920
    :goto_0
    return v4

    .line 823
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->checkBoundary()Z

    move-result v1

    .line 824
    .local v1, "mBoundary":Z
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    and-int/lit8 v5, v5, 0x1

    if-ne v5, v3, :cond_d

    .line 825
    move v0, p2

    .line 826
    .local v0, "deltaForContents":F
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_5

    .line 827
    cmpg-float v5, p2, v7

    if-gez v5, :cond_4

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollThreshold:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    .line 828
    iput v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    .line 829
    const/4 v1, 0x0

    .line 851
    :cond_1
    :goto_1
    iget-boolean v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    if-nez v5, :cond_9

    .line 852
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->showScrollBar()V

    .line 862
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

    .line 863
    .local v2, "view":Lcom/samsung/android/glview/GLView;
    if-nez v1, :cond_3

    .line 864
    invoke-virtual {v2, v7, v0, v4}, Lcom/samsung/android/glview/GLView;->translate(FFZ)V

    goto :goto_3

    .line 832
    .end local v2    # "view":Lcom/samsung/android/glview/GLView;
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 834
    :cond_5
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaHeight()F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_7

    .line 835
    cmpl-float v5, p2, v7

    if-lez v5, :cond_6

    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollThreshold:F

    cmpl-float v5, p2, v5

    if-lez v5, :cond_6

    .line 836
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

    .line 837
    const/4 v1, 0x0

    goto :goto_1

    .line 840
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 842
    :cond_7
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v5, p2

    cmpl-float v5, v5, v7

    if-lez v5, :cond_8

    .line 844
    const/4 v1, 0x1

    goto :goto_1

    .line 845
    :cond_8
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v5, v6

    add-float/2addr v5, p2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaHeight()F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    .line 847
    const/4 v1, 0x1

    goto :goto_1

    .line 853
    :cond_9
    iget-object v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v5, :cond_2

    .line 854
    if-nez v1, :cond_a

    .line 855
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleHeight:F

    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    div-float/2addr v5, v6

    mul-float/2addr v5, v0

    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarOffset:F

    .line 856
    iget-object v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarOffset:F

    neg-float v6, v6

    invoke-virtual {v5, v7, v6}, Lcom/samsung/android/glview/GLNinePatch;->translate(FF)V

    .line 858
    :cond_a
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->restartScrollBarTimer()V

    goto :goto_2

    .line 868
    :cond_b
    if-nez v1, :cond_c

    .line 869
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v5, p2

    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    .line 920
    .end local v0    # "deltaForContents":F
    :cond_c
    :goto_4
    if-nez v1, :cond_19

    :goto_5
    move v4, v3

    goto/16 :goto_0

    .line 871
    :cond_d
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    and-int/lit8 v5, v5, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_c

    .line 872
    move v0, p1

    .line 874
    .restart local v0    # "deltaForContents":F
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_12

    .line 875
    cmpg-float v5, p1, v7

    if-gez v5, :cond_11

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollThreshold:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_11

    .line 876
    iput v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    .line 877
    const/4 v1, 0x0

    .line 899
    :cond_e
    :goto_6
    iget-boolean v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    if-nez v5, :cond_16

    .line 900
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->showScrollBar()V

    .line 910
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

    .line 911
    .restart local v2    # "view":Lcom/samsung/android/glview/GLView;
    if-nez v1, :cond_10

    .line 912
    invoke-virtual {v2, v0, v7, v4}, Lcom/samsung/android/glview/GLView;->translate(FFZ)V

    goto :goto_8

    .line 880
    .end local v2    # "view":Lcom/samsung/android/glview/GLView;
    :cond_11
    const/4 v0, 0x0

    goto :goto_6

    .line 882
    :cond_12
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaWidth()F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_14

    .line 883
    cmpl-float v5, p1, v7

    if-lez v5, :cond_13

    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollThreshold:F

    cmpl-float v5, p1, v5

    if-lez v5, :cond_13

    .line 884
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

    .line 885
    const/4 v1, 0x0

    goto :goto_6

    .line 888
    :cond_13
    const/4 v0, 0x0

    goto :goto_6

    .line 890
    :cond_14
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v5, p1

    cmpl-float v5, v5, v7

    if-lez v5, :cond_15

    .line 892
    const/4 v1, 0x1

    goto :goto_6

    .line 893
    :cond_15
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v5, v6

    add-float/2addr v5, p1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaWidth()F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_e

    .line 895
    const/4 v1, 0x1

    goto :goto_6

    .line 901
    :cond_16
    iget-object v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v5, :cond_f

    .line 902
    if-nez v1, :cond_17

    .line 903
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleWidth:F

    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    div-float/2addr v5, v6

    mul-float/2addr v5, v0

    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarOffset:F

    .line 904
    iget-object v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarOffset:F

    neg-float v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/glview/GLNinePatch;->translate(FF)V

    .line 906
    :cond_17
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->restartScrollBarTimer()V

    goto :goto_7

    .line 915
    :cond_18
    if-nez v1, :cond_c

    .line 916
    iget v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v5, p1

    iput v5, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    goto/16 :goto_4

    .end local v0    # "deltaForContents":F
    :cond_19
    move v3, v4

    .line 920
    goto/16 :goto_5
.end method

.method public scrollToVisible(Lcom/samsung/android/glview/GLView;)V
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 1000
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollRequested:Z

    .line 1001
    iput-object p1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollToVisibleView:Lcom/samsung/android/glview/GLView;

    .line 1002
    return-void
.end method

.method public scrollToVisible()Z
    .locals 13

    .prologue
    const/4 v8, 0x1

    const/4 v11, 0x0

    const/4 v7, 0x0

    .line 924
    iget-object v9, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollToVisibleView:Lcom/samsung/android/glview/GLView;

    if-nez v9, :cond_0

    .line 996
    :goto_0
    return v7

    .line 928
    :cond_0
    iget-object v9, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollToVisibleView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLView;->getCurrentContentArea()Landroid/graphics/RectF;

    move-result-object v1

    .line 929
    .local v1, "itemCurrentRect":Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getCurrentContentArea()Landroid/graphics/RectF;

    move-result-object v2

    .line 932
    .local v2, "listCurrentRect":Landroid/graphics/RectF;
    invoke-virtual {v2, v1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 933
    iput-boolean v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollRequested:Z

    .line 934
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

    .line 935
    goto :goto_0

    .line 937
    :cond_1
    const/4 v4, 0x0

    .line 938
    .local v4, "offsetY":F
    const/4 v3, 0x0

    .line 940
    .local v3, "offsetX":F
    iget v9, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    if-ne v9, v8, :cond_8

    .line 942
    iget v9, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    cmpl-float v9, v9, v11

    if-lez v9, :cond_3

    .line 943
    iput v11, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    .line 949
    :cond_2
    :goto_1
    iget v9, v1, Landroid/graphics/RectF;->top:F

    iget v10, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v9, v10}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 951
    iput-boolean v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollRequested:Z

    move v7, v8

    .line 952
    goto :goto_0

    .line 944
    :cond_3
    iget v9, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    iget v10, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v9, v10

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaHeight()F

    move-result v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_2

    .line 945
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v9

    iget v10, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v0

    .line 946
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

    .line 945
    .end local v0    # "height":F
    :cond_4
    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    goto :goto_2

    .line 953
    :cond_5
    iget v9, v1, Landroid/graphics/RectF;->top:F

    iget v10, v2, Landroid/graphics/RectF;->top:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_7

    .line 954
    iget v9, v2, Landroid/graphics/RectF;->top:F

    iget v10, v1, Landroid/graphics/RectF;->top:F

    sub-float v4, v9, v10

    .line 955
    iget v9, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v9, v4

    iput v9, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    .line 982
    :cond_6
    :goto_3
    iput v11, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityX:F

    .line 983
    iput v11, p0, Lcom/samsung/android/glview/GLAbsList;->mFlingVelocityY:F

    .line 986
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

    .line 987
    .local v5, "view":Lcom/samsung/android/glview/GLView;
    iget v10, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    iget v11, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    invoke-virtual {v5, v10, v11, v7}, Lcom/samsung/android/glview/GLView;->translateAbsolute(FFZ)V

    goto :goto_4

    .line 956
    .end local v5    # "view":Lcom/samsung/android/glview/GLView;
    :cond_7
    iget v9, v1, Landroid/graphics/RectF;->bottom:F

    iget v10, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_6

    .line 957
    iget v9, v2, Landroid/graphics/RectF;->bottom:F

    iget v10, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v4, v9, v10

    .line 958
    iget v9, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    add-float/2addr v9, v4

    iput v9, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumY:F

    goto :goto_3

    .line 960
    :cond_8
    iget v9, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_6

    .line 962
    iget v9, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    cmpl-float v9, v9, v11

    if-lez v9, :cond_a

    .line 963
    iput v11, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    .line 969
    :cond_9
    :goto_5
    iget v9, v1, Landroid/graphics/RectF;->left:F

    iget v10, v2, Landroid/graphics/RectF;->left:F

    invoke-static {v9, v10}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 971
    iput-boolean v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollRequested:Z

    move v7, v8

    .line 972
    goto/16 :goto_0

    .line 964
    :cond_a
    iget v9, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    iget v10, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v9, v10

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContentAreaWidth()F

    move-result v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_9

    .line 965
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v9

    iget v10, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v6

    .line 966
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

    .line 965
    .end local v6    # "width":F
    :cond_b
    iget v6, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    goto :goto_6

    .line 973
    :cond_c
    iget v9, v1, Landroid/graphics/RectF;->left:F

    iget v10, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_d

    .line 974
    iget v9, v2, Landroid/graphics/RectF;->left:F

    iget v10, v1, Landroid/graphics/RectF;->left:F

    sub-float v3, v9, v10

    .line 975
    iget v9, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v9, v3

    iput v9, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    goto/16 :goto_3

    .line 976
    :cond_d
    iget v9, v1, Landroid/graphics/RectF;->right:F

    iget v10, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_6

    .line 977
    iget v9, v2, Landroid/graphics/RectF;->right:F

    iget v10, v1, Landroid/graphics/RectF;->right:F

    sub-float v3, v9, v10

    .line 978
    iget v9, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    add-float/2addr v9, v3

    iput v9, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollSumX:F

    goto/16 :goto_3

    .line 990
    :cond_e
    iget-boolean v9, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    if-eqz v9, :cond_f

    iget-object v9, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v9, :cond_f

    .line 991
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

    .line 993
    :cond_f
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->showScrollBar()V

    .line 994
    iput-boolean v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollRequested:Z

    .line 995
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    move v7, v8

    .line 996
    goto/16 :goto_0
.end method

.method public sendAccessibilityEvent()V
    .locals 0

    .prologue
    .line 1010
    return-void
.end method

.method public setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/samsung/android/glview/GLAbsList$Adapter;

    .prologue
    .line 1018
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/glview/GLAbsList;->setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;I)V

    .line 1019
    return-void
.end method

.method public setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;I)V
    .locals 8
    .param p1, "adapter"    # Lcom/samsung/android/glview/GLAbsList$Adapter;
    .param p2, "scrollOrientation"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 1028
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->isScrollable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1029
    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    if-ne v0, v6, :cond_3

    .line 1030
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

    .line 1031
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

    .line 1036
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    iput-object p0, v0, Lcom/samsung/android/glview/GLImage;->mParent:Lcom/samsung/android/glview/GLView;

    .line 1037
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    iput-object p0, v0, Lcom/samsung/android/glview/GLImage;->mParent:Lcom/samsung/android/glview/GLView;

    .line 1038
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    .line 1039
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    .line 1042
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->setVisibleArea()V

    .line 1044
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_1

    .line 1045
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->setScrollBarLayout()V

    .line 1048
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_2

    .line 1049
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

    .line 1051
    :cond_2
    return-void

    .line 1033
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

    .line 1034
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
    .line 1716
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLAbsList;->mBouncing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1717
    monitor-exit p0

    return-void

    .line 1716
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setHeight(F)V
    .locals 0
    .param p1, "height"    # F

    .prologue
    .line 1055
    iput p1, p0, Lcom/samsung/android/glview/GLAbsList;->mListHeight:F

    .line 1057
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->setHeight(F)V

    .line 1058
    return-void
.end method

.method public setOverScrollEffect(Z)V
    .locals 0
    .param p1, "effect"    # Z

    .prologue
    .line 1066
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLAbsList;->mEnableOverScrollEffect:Z

    .line 1067
    return-void
.end method

.method public setPaddings(Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "paddings"    # Landroid/graphics/Rect;

    .prologue
    const/4 v9, 0x0

    .line 1074
    iput-object p1, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    .line 1075
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getLeft()F

    move-result v2

    .line 1076
    .local v2, "left":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getRight()F

    move-result v3

    .line 1077
    .local v3, "right":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getTop()F

    move-result v4

    .line 1078
    .local v4, "top":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getBottom()F

    move-result v0

    .line 1080
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

    .line 1081
    .local v5, "view":Lcom/samsung/android/glview/GLView;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v9, v9, v9, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1083
    .local v1, "childPaddings":Landroid/graphics/Rect;
    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_0

    .line 1084
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

    .line 1085
    iget v7, p1, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v8

    sub-float/2addr v8, v2

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v1, Landroid/graphics/Rect;->left:I

    .line 1089
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

    .line 1090
    iget v7, p1, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v8

    sub-float v8, v3, v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v1, Landroid/graphics/Rect;->right:I

    .line 1094
    :goto_2
    iget-object v7, v5, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iput v7, v1, Landroid/graphics/Rect;->top:I

    .line 1095
    iget-object v7, v5, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    .line 1097
    :cond_0
    iget v7, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_1

    .line 1098
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

    .line 1099
    iget v7, p1, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v8

    sub-float/2addr v8, v4

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v1, Landroid/graphics/Rect;->top:I

    .line 1103
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

    .line 1104
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v8

    sub-float v8, v0, v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    .line 1108
    :goto_4
    iget-object v7, v5, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iput v7, v1, Landroid/graphics/Rect;->left:I

    .line 1109
    iget-object v7, v5, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iput v7, v1, Landroid/graphics/Rect;->right:I

    .line 1111
    :cond_1
    invoke-virtual {v5, v1}, Lcom/samsung/android/glview/GLView;->setPaddings(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1087
    :cond_2
    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iput v7, v1, Landroid/graphics/Rect;->left:I

    goto/16 :goto_1

    .line 1092
    :cond_3
    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iput v7, v1, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 1101
    :cond_4
    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iput v7, v1, Landroid/graphics/Rect;->top:I

    goto :goto_3

    .line 1106
    :cond_5
    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    .line 1113
    .end local v1    # "childPaddings":Landroid/graphics/Rect;
    .end local v5    # "view":Lcom/samsung/android/glview/GLView;
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->setVisibleArea()V

    .line 1114
    iget-object v6, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v6, :cond_7

    .line 1115
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->setScrollBarLayout()V

    .line 1117
    :cond_7
    return-void
.end method

.method public setScrollBarAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 1125
    iput p1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarAlpha:F

    .line 1126
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

    .line 1723
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-nez v0, :cond_1

    .line 1755
    :cond_0
    :goto_0
    return-void

    .line 1726
    :cond_1
    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    if-ne v0, v4, :cond_5

    .line 1727
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->isScrollable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1730
    invoke-static {}, Lcom/samsung/android/glview/GLUtil;->isLocaleRTL()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1731
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

    .line 1739
    :goto_1
    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleHeight:F

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mContentHeight:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleHeight:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarSize:F

    .line 1740
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v1

    iget v2, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarSize:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 1753
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

    .line 1754
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    goto :goto_0

    .line 1733
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-nez v0, :cond_4

    .line 1734
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

    .line 1736
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

    .line 1741
    :cond_5
    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1742
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->isScrollable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1745
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mPaddings:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-nez v0, :cond_6

    .line 1746
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

    .line 1750
    :goto_3
    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleWidth:F

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mContentWidth:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleWidth:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarSize:F

    .line 1751
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarSize:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    goto/16 :goto_2

    .line 1748
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
    .line 1134
    iput p1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarPadding:F

    .line 1135
    return-void
.end method

.method public setScrollBarResource(I)V
    .locals 3
    .param p1, "ninepatchId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1143
    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2, p1}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    .line 1144
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    const v1, 0xfffff

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setTag(I)V

    .line 1145
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    iput-object p0, v0, Lcom/samsung/android/glview/GLNinePatch;->mParent:Lcom/samsung/android/glview/GLView;

    .line 1146
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 1147
    return-void
.end method

.method public setScrollListener(Lcom/samsung/android/glview/GLAbsList$ScrollListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/glview/GLAbsList$ScrollListener;

    .prologue
    .line 1155
    iput-object p1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollListener:Lcom/samsung/android/glview/GLAbsList$ScrollListener;

    .line 1156
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
    .line 1164
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrolling:Z

    if-eq v0, p1, :cond_0

    .line 1165
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrolling:Z

    .line 1166
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollListener:Lcom/samsung/android/glview/GLAbsList$ScrollListener;

    if-eqz v0, :cond_0

    .line 1167
    if-eqz p1, :cond_2

    .line 1168
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollListener:Lcom/samsung/android/glview/GLAbsList$ScrollListener;

    invoke-interface {v0}, Lcom/samsung/android/glview/GLAbsList$ScrollListener;->onScrollStart()V

    .line 1173
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 1174
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->resetDrag()V

    .line 1175
    :cond_1
    return-void

    .line 1170
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
    .line 1182
    iput p1, p0, Lcom/samsung/android/glview/GLAbsList;->mListWidth:F

    .line 1183
    iput p2, p0, Lcom/samsung/android/glview/GLAbsList;->mListHeight:F

    .line 1185
    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 1186
    return-void
.end method

.method protected setVisibleArea()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1761
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

    .line 1762
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

    .line 1764
    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1765
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    .line 1766
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 1767
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 1768
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleHeight:F

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    .line 1777
    :cond_0
    :goto_0
    return-void

    .line 1770
    :cond_1
    iget v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1771
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    .line 1772
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageTop:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 1773
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->getHeight()F

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    .line 1774
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mBounceImageBottom:Lcom/samsung/android/glview/GLImage;

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mListVisibleWidth:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLImage;->moveLayoutAbsolute(FF)V

    goto :goto_0
.end method

.method public setWidth(F)V
    .locals 0
    .param p1, "width"    # F

    .prologue
    .line 1190
    iput p1, p0, Lcom/samsung/android/glview/GLAbsList;->mListWidth:F

    .line 1192
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->setWidth(F)V

    .line 1193
    return-void
.end method

.method public showScrollBar()V
    .locals 2

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->isScrollable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1207
    :cond_0
    :goto_0
    return-void

    .line 1202
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1203
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    iget v1, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarAlpha:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setAlpha(F)V

    .line 1204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBarVisible:Z

    .line 1205
    iget-object v0, p0, Lcom/samsung/android/glview/GLAbsList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 1206
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLAbsList;->restartScrollBarTimer()V

    goto :goto_0
.end method
