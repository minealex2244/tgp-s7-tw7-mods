.class public abstract Lcom/samsung/android/glview/GLView;
.super Ljava/lang/Object;
.source "GLView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/glview/GLView$TouchListener;,
        Lcom/samsung/android/glview/GLView$OrientationChangeListener;,
        Lcom/samsung/android/glview/GLView$LongClickListener;,
        Lcom/samsung/android/glview/GLView$KeyListener;,
        Lcom/samsung/android/glview/GLView$FocusListener;,
        Lcom/samsung/android/glview/GLView$DragListener;,
        Lcom/samsung/android/glview/GLView$ClickListener;,
        Lcom/samsung/android/glview/GLView$AnimationEventListener;
    }
.end annotation


# static fields
.field public static final ALIGN_END:I = 0x3

.field public static final ALIGN_MIDDLE:I = 0x2

.field public static final ALIGN_START:I = 0x1

.field private static final ANIMATION_PENDING_TIMEOUT:I = 0x64

.field public static final CLICKABLE:I = 0x4000

.field private static final DEFAULT_REPEAT_CLICK_INTERVAL:I = 0x64

.field public static final DIM_ALPHA_VALUE:F = 0.45f

.field public static final DISABLED:I = 0x20

.field private static final DRAG_HOLD_TIME_ABSOLUTE:I = 0x0

.field private static final DRAG_HOLD_TIME_HIGH:I = 0x12c

.field private static final DRAG_HOLD_TIME_NORMAL:I = 0x1f4

.field public static final DRAG_SENSITIVITY_ABSOLUTE:I = 0x0

.field public static final DRAG_SENSITIVITY_HIGH:I = 0x1

.field public static final DRAG_SENSITIVITY_NORMAL:I = 0x2

.field private static final FOCUSABLE:I = 0x1

.field private static final FOCUSABLE_MASK:I = 0x1

.field public static final FOCUS_BACKWARD:I = 0x1

.field public static final FOCUS_DOWN:I = 0x82

.field public static final FOCUS_FORWARD:I = 0x2

.field public static final FOCUS_LEFT:I = 0x11

.field public static final FOCUS_RIGHT:I = 0x42

.field public static final FOCUS_UP:I = 0x21

.field public static final GONE:I = 0x8

.field public static final HOVER_DOWN:I = 0x52

.field public static final HOVER_LEFT:I = 0x31

.field public static final HOVER_RIGHT:I = 0x62

.field public static final HOVER_UP:I = 0x41

.field public static final H_ALIGN_CENTER:I = 0x2

.field public static final H_ALIGN_LEFT:I = 0x1

.field public static final H_ALIGN_NONE:I = 0x0

.field public static final H_ALIGN_RIGHT:I = 0x3

.field public static final INVISIBLE:I = 0x4

.field private static final LONG_CLICK_TIME:I = 0x1f4

.field private static final NOT_FOCUSABLE:I = 0x0

.field private static final NO_ID:I = -0x1

.field public static final ORIENTATION_0:I = 0x0

.field public static final ORIENTATION_180:I = 0x2

.field public static final ORIENTATION_270:I = 0x3

.field public static final ORIENTATION_90:I = 0x1

.field public static final VISIBLE:I = 0x0

.field public static final V_ALIGN_BOTTOM:I = 0x3

.field public static final V_ALIGN_MIDDLE:I = 0x2

.field public static final V_ALIGN_NONE:I = 0x0

.field public static final V_ALIGN_TOP:I = 0x1


# instance fields
.field private glCoordinate:[F

.field private glTransformedCoordinate:[F

.field protected mAlpha:F

.field private mAnimGLMatrix:[F

.field private mAnimMatrix:[F

.field private mAnimation:Landroid/view/animation/Animation;

.field protected mAnimationEventListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

.field private mAnimationFinished:Z

.field private mAnimationPending:Z

.field private mAnimationStarted:Z

.field private mAnimationStartedEvent:Z

.field protected mAsyncLoad:Z

.field private mBackground:Lcom/samsung/android/glview/GLView;

.field private mBackgroundResId:I

.field protected mBaseDepth:F

.field protected mBaseLeft:F

.field protected mBaseTop:F

.field private mBound:Landroid/graphics/RectF;

.field private mBypassTouch:Z

.field private mCenterPivot:Z

.field protected mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

.field private mClipRect:Landroid/graphics/Rect;

.field private mClipping:Z

.field private mCombinedMatrix:[F

.field public mContentDescription:Ljava/lang/String;

.field private mContinuousDrawMode:Z

.field protected mDefaultOrientation:I

.field private mDimmed:Z

.field protected mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

.field private mDragSensitivity:I

.field private mDraggable:Z

.field protected mDragging:Z

.field protected mDrawFirstTime:Z

.field private mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

.field protected mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

.field private mFocused:Z

.field private mForcedClipping:Z

.field protected final mGLContext:Lcom/samsung/android/glview/GLContext;

.field private mHideAfterAnimation:Z

.field private mHoverFocused:Z

.field private mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

.field protected mInScreen:Z

.field private mInternalFocus:Z

.field protected mIsClipped:Z

.field private mIsTouchCanceled:Z

.field protected mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

.field private mLastOrientation:I

.field protected mLayoutUpdated:Z

.field private mLeft:F

.field private mLeftBottom:[F

.field private mLeftTop:[F

.field private mLeftTopCoordinates:[Landroid/graphics/RectF;

.field private mLoaded:Z

.field private mLoading:Z

.field protected mLongClickListener:Lcom/samsung/android/glview/GLView$LongClickListener;

.field private mLongClickable:Z

.field protected mManualClip:Z

.field private mManualClipRect:Landroid/graphics/Rect;

.field private mMatrix:[F

.field private mNextFocusDownId:I

.field private mNextFocusForwardId:I

.field private mNextFocusLeftId:I

.field private mNextFocusRightId:I

.field private mNextFocusUpId:I

.field private mObjectTag:Ljava/lang/String;

.field private mOldAlpha:F

.field private mOrientation:I

.field private mOrientationChangeListener:Lcom/samsung/android/glview/GLView$OrientationChangeListener;

.field private mOriginalClipRect:Landroid/graphics/Rect;

.field protected mOriginalDepth:F

.field protected mOriginalLeft:F

.field protected mOriginalTop:F

.field protected mPaddings:Landroid/graphics/Rect;

.field public mParent:Lcom/samsung/android/glview/GLView;

.field private mParentHAlign:I

.field private mParentVAlign:I

.field private mParentViewId:I

.field protected mPositionChanged:Z

.field private mPreviousDragX:F

.field private mPreviousDragY:F

.field private mRepeatClickInterval:I

.field private mRepeatClickWhenLongClicked:Z

.field private mRightBottom:[F

.field private mRightTop:[F

.field private mRotatable:Z

.field private mRotateAnimation:Z

.field private mRotateAnimationDuration:I

.field private mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

.field protected mRotateDegree:I

.field private mRotationMatrix:[F

.field protected mScaleChanged:Z

.field private mScaleMatrix:[F

.field private mScaleX:F

.field private mScaleY:F

.field protected mShaderParameter:F

.field protected mShaderStep:F

.field protected mSizeGiven:Z

.field protected mSizeSpecified:Z

.field public mSubTitle:Ljava/lang/String;

.field private mTempMatrix:[F

.field private mTempOrientation:I

.field protected mThis:Lcom/samsung/android/glview/GLView;

.field public mTitle:Ljava/lang/String;

.field private mTop:F

.field protected mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

.field private mTransformation:Landroid/view/animation/Transformation;

.field protected mTransformedScreenCoordinate:[F

.field private mTranslateX:F

.field private mTranslateY:F

.field private mTranslateZ:F

.field private mTranslationMatrix:[F

.field private mUpdateMatrixAfterAnimation:Z

.field private mViewFlags:I

.field private mViewId:I

.field private mViewTag:I

.field private mVisibility:I

.field private mZCoordinate:F

.field private final repeatClick:Ljava/lang/Runnable;

.field private final setDragging:Ljava/lang/Runnable;

.field private final setLongClick:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FF)V
    .locals 7
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F

    .prologue
    const/4 v6, -0x1

    const/16 v5, 0x10

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mInScreen:Z

    .line 231
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mIsClipped:Z

    .line 235
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTransformedScreenCoordinate:[F

    .line 239
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mDefaultOrientation:I

    .line 244
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mRotateDegree:I

    .line 249
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mSizeGiven:Z

    .line 253
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mLayoutUpdated:Z

    .line 261
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mPositionChanged:Z

    .line 265
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mScaleChanged:Z

    .line 269
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    .line 273
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mAlpha:F

    .line 281
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mShaderStep:F

    .line 285
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mShaderParameter:F

    .line 289
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalLeft:F

    .line 293
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalTop:F

    .line 297
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalDepth:F

    .line 301
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    .line 305
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    .line 309
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    .line 313
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mManualClip:Z

    .line 317
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mDragging:Z

    .line 321
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mDrawFirstTime:Z

    .line 325
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mAsyncLoad:Z

    .line 330
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    .line 334
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    .line 338
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    .line 339
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    .line 340
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mAnimationEventListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 341
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    .line 342
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mLongClickListener:Lcom/samsung/android/glview/GLView$LongClickListener;

    .line 350
    iput v6, p0, Lcom/samsung/android/glview/GLView;->mViewId:I

    .line 358
    const-string v1, "NONE"

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mObjectTag:Ljava/lang/String;

    .line 362
    iput v6, p0, Lcom/samsung/android/glview/GLView;->mParentViewId:I

    .line 374
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mLoaded:Z

    .line 378
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mLoading:Z

    .line 382
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mAnimationPending:Z

    .line 386
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationFinished:Z

    .line 390
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mAnimationStarted:Z

    .line 394
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mAnimationStartedEvent:Z

    .line 398
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mHideAfterAnimation:Z

    .line 402
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mUpdateMatrixAfterAnimation:Z

    .line 406
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    .line 410
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mDimmed:Z

    .line 416
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mFocused:Z

    .line 420
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mHoverFocused:Z

    .line 424
    new-array v1, v5, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F

    .line 428
    new-array v1, v5, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    .line 432
    new-array v1, v5, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mScaleMatrix:[F

    .line 440
    new-array v1, v5, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTempMatrix:[F

    .line 444
    new-array v1, v5, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mCombinedMatrix:[F

    .line 448
    new-array v1, v5, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimMatrix:[F

    .line 452
    new-array v1, v5, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimGLMatrix:[F

    .line 456
    new-array v1, v5, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    .line 460
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->glCoordinate:[F

    .line 464
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->glTransformedCoordinate:[F

    .line 468
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTransformation:Landroid/view/animation/Transformation;

    .line 472
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mScaleX:F

    .line 476
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mScaleY:F

    .line 480
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    .line 484
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    .line 485
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    .line 489
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    .line 493
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mContinuousDrawMode:Z

    .line 497
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mOrientation:I

    .line 501
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mLastOrientation:I

    .line 505
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mRotatable:Z

    .line 509
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mCenterPivot:Z

    .line 513
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimation:Z

    .line 514
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 515
    const/16 v1, 0x12c

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimationDuration:I

    .line 519
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mParentHAlign:I

    .line 523
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mParentVAlign:I

    .line 527
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    .line 543
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mBackgroundResId:I

    .line 547
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mOldAlpha:F

    .line 551
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    .line 555
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftBottom:[F

    .line 559
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mRightTop:[F

    .line 563
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mRightBottom:[F

    .line 582
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mClipping:Z

    .line 586
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mForcedClipping:Z

    .line 598
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mDraggable:Z

    .line 602
    new-instance v1, Lcom/samsung/android/glview/GLView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLView$1;-><init>(Lcom/samsung/android/glview/GLView;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->setDragging:Ljava/lang/Runnable;

    .line 618
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mBypassTouch:Z

    .line 622
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mTempOrientation:I

    .line 626
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mInternalFocus:Z

    .line 627
    iput v6, p0, Lcom/samsung/android/glview/GLView;->mNextFocusLeftId:I

    .line 628
    iput v6, p0, Lcom/samsung/android/glview/GLView;->mNextFocusRightId:I

    .line 629
    iput v6, p0, Lcom/samsung/android/glview/GLView;->mNextFocusUpId:I

    .line 630
    iput v6, p0, Lcom/samsung/android/glview/GLView;->mNextFocusDownId:I

    .line 631
    iput v6, p0, Lcom/samsung/android/glview/GLView;->mNextFocusForwardId:I

    .line 632
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    .line 633
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    .line 634
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mLongClickable:Z

    .line 635
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickWhenLongClicked:Z

    .line 636
    const/16 v1, 0x64

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickInterval:I

    .line 640
    new-instance v1, Lcom/samsung/android/glview/GLView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLView$2;-><init>(Lcom/samsung/android/glview/GLView;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->repeatClick:Ljava/lang/Runnable;

    .line 657
    new-instance v1, Lcom/samsung/android/glview/GLView$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLView$3;-><init>(Lcom/samsung/android/glview/GLView;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->setLongClick:Ljava/lang/Runnable;

    .line 673
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mIsTouchCanceled:Z

    .line 677
    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mDragSensitivity:I

    .line 684
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 685
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    aput-object v2, v1, v0

    .line 684
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 696
    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    .line 697
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iput p2, v1, Landroid/graphics/RectF;->left:F

    .line 698
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iput p3, v1, Landroid/graphics/RectF;->top:F

    .line 699
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    .line 701
    iput p2, p0, Lcom/samsung/android/glview/GLView;->mOriginalLeft:F

    .line 702
    iput p3, p0, Lcom/samsung/android/glview/GLView;->mOriginalTop:F

    .line 703
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalDepth:F

    .line 705
    iput p2, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    .line 706
    iput p3, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    .line 707
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    .line 709
    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    .line 710
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->resetTransformMatrix()V

    .line 712
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mSizeSpecified:Z

    .line 713
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mSizeGiven:Z

    .line 715
    invoke-virtual {p0, v3, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 716
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 717
    const/4 v1, 0x2

    invoke-virtual {p0, v1, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 718
    const/4 v1, 0x3

    invoke-virtual {p0, v1, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 720
    iput-object p0, p0, Lcom/samsung/android/glview/GLView;->mThis:Lcom/samsung/android/glview/GLView;

    .line 722
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mViewId:I

    .line 723
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFF)V
    .locals 7
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "depth"    # F

    .prologue
    const/4 v6, -0x1

    const/16 v5, 0x10

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 733
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mInScreen:Z

    .line 231
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mIsClipped:Z

    .line 235
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTransformedScreenCoordinate:[F

    .line 239
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mDefaultOrientation:I

    .line 244
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mRotateDegree:I

    .line 249
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mSizeGiven:Z

    .line 253
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mLayoutUpdated:Z

    .line 261
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mPositionChanged:Z

    .line 265
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mScaleChanged:Z

    .line 269
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    .line 273
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mAlpha:F

    .line 281
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mShaderStep:F

    .line 285
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mShaderParameter:F

    .line 289
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalLeft:F

    .line 293
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalTop:F

    .line 297
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalDepth:F

    .line 301
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    .line 305
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    .line 309
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    .line 313
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mManualClip:Z

    .line 317
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mDragging:Z

    .line 321
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mDrawFirstTime:Z

    .line 325
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mAsyncLoad:Z

    .line 330
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    .line 334
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    .line 338
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    .line 339
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    .line 340
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mAnimationEventListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 341
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    .line 342
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mLongClickListener:Lcom/samsung/android/glview/GLView$LongClickListener;

    .line 350
    iput v6, p0, Lcom/samsung/android/glview/GLView;->mViewId:I

    .line 358
    const-string v1, "NONE"

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mObjectTag:Ljava/lang/String;

    .line 362
    iput v6, p0, Lcom/samsung/android/glview/GLView;->mParentViewId:I

    .line 374
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mLoaded:Z

    .line 378
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mLoading:Z

    .line 382
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mAnimationPending:Z

    .line 386
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationFinished:Z

    .line 390
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mAnimationStarted:Z

    .line 394
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mAnimationStartedEvent:Z

    .line 398
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mHideAfterAnimation:Z

    .line 402
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mUpdateMatrixAfterAnimation:Z

    .line 406
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    .line 410
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mDimmed:Z

    .line 416
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mFocused:Z

    .line 420
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mHoverFocused:Z

    .line 424
    new-array v1, v5, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F

    .line 428
    new-array v1, v5, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    .line 432
    new-array v1, v5, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mScaleMatrix:[F

    .line 440
    new-array v1, v5, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTempMatrix:[F

    .line 444
    new-array v1, v5, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mCombinedMatrix:[F

    .line 448
    new-array v1, v5, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimMatrix:[F

    .line 452
    new-array v1, v5, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimGLMatrix:[F

    .line 456
    new-array v1, v5, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    .line 460
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->glCoordinate:[F

    .line 464
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->glTransformedCoordinate:[F

    .line 468
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTransformation:Landroid/view/animation/Transformation;

    .line 472
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mScaleX:F

    .line 476
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mScaleY:F

    .line 480
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    .line 484
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    .line 485
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    .line 489
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    .line 493
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mContinuousDrawMode:Z

    .line 497
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mOrientation:I

    .line 501
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mLastOrientation:I

    .line 505
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mRotatable:Z

    .line 509
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mCenterPivot:Z

    .line 513
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimation:Z

    .line 514
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 515
    const/16 v1, 0x12c

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimationDuration:I

    .line 519
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mParentHAlign:I

    .line 523
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mParentVAlign:I

    .line 527
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    .line 543
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mBackgroundResId:I

    .line 547
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mOldAlpha:F

    .line 551
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    .line 555
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftBottom:[F

    .line 559
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mRightTop:[F

    .line 563
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mRightBottom:[F

    .line 582
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mClipping:Z

    .line 586
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mForcedClipping:Z

    .line 598
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mDraggable:Z

    .line 602
    new-instance v1, Lcom/samsung/android/glview/GLView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLView$1;-><init>(Lcom/samsung/android/glview/GLView;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->setDragging:Ljava/lang/Runnable;

    .line 618
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mBypassTouch:Z

    .line 622
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mTempOrientation:I

    .line 626
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mInternalFocus:Z

    .line 627
    iput v6, p0, Lcom/samsung/android/glview/GLView;->mNextFocusLeftId:I

    .line 628
    iput v6, p0, Lcom/samsung/android/glview/GLView;->mNextFocusRightId:I

    .line 629
    iput v6, p0, Lcom/samsung/android/glview/GLView;->mNextFocusUpId:I

    .line 630
    iput v6, p0, Lcom/samsung/android/glview/GLView;->mNextFocusDownId:I

    .line 631
    iput v6, p0, Lcom/samsung/android/glview/GLView;->mNextFocusForwardId:I

    .line 632
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    .line 633
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    .line 634
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mLongClickable:Z

    .line 635
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickWhenLongClicked:Z

    .line 636
    const/16 v1, 0x64

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickInterval:I

    .line 640
    new-instance v1, Lcom/samsung/android/glview/GLView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLView$2;-><init>(Lcom/samsung/android/glview/GLView;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->repeatClick:Ljava/lang/Runnable;

    .line 657
    new-instance v1, Lcom/samsung/android/glview/GLView$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLView$3;-><init>(Lcom/samsung/android/glview/GLView;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->setLongClick:Ljava/lang/Runnable;

    .line 673
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mIsTouchCanceled:Z

    .line 677
    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mDragSensitivity:I

    .line 684
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 685
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    aput-object v2, v1, v0

    .line 684
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 734
    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    .line 735
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iput p2, v1, Landroid/graphics/RectF;->left:F

    .line 736
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iput p3, v1, Landroid/graphics/RectF;->top:F

    .line 737
    iput p4, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    .line 739
    iput p2, p0, Lcom/samsung/android/glview/GLView;->mOriginalLeft:F

    .line 740
    iput p3, p0, Lcom/samsung/android/glview/GLView;->mOriginalTop:F

    .line 741
    iput p4, p0, Lcom/samsung/android/glview/GLView;->mOriginalDepth:F

    .line 743
    iput p2, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    .line 744
    iput p3, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    .line 745
    iput p4, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    .line 747
    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    .line 748
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->resetTransformMatrix()V

    .line 750
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mSizeSpecified:Z

    .line 751
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mSizeGiven:Z

    .line 753
    invoke-virtual {p0, v3, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 754
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 755
    const/4 v1, 0x2

    invoke-virtual {p0, v1, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 756
    const/4 v1, 0x3

    invoke-virtual {p0, v1, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 758
    iput-object p0, p0, Lcom/samsung/android/glview/GLView;->mThis:Lcom/samsung/android/glview/GLView;

    .line 760
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mViewId:I

    .line 761
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFF)V
    .locals 7
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    const/16 v3, 0x10

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 772
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mInScreen:Z

    .line 231
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mIsClipped:Z

    .line 235
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTransformedScreenCoordinate:[F

    .line 239
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mDefaultOrientation:I

    .line 244
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mRotateDegree:I

    .line 249
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mSizeGiven:Z

    .line 253
    iput-boolean v6, p0, Lcom/samsung/android/glview/GLView;->mLayoutUpdated:Z

    .line 261
    iput-boolean v6, p0, Lcom/samsung/android/glview/GLView;->mPositionChanged:Z

    .line 265
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mScaleChanged:Z

    .line 269
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    .line 273
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mAlpha:F

    .line 281
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mShaderStep:F

    .line 285
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mShaderParameter:F

    .line 289
    iput v5, p0, Lcom/samsung/android/glview/GLView;->mOriginalLeft:F

    .line 293
    iput v5, p0, Lcom/samsung/android/glview/GLView;->mOriginalTop:F

    .line 297
    iput v5, p0, Lcom/samsung/android/glview/GLView;->mOriginalDepth:F

    .line 301
    iput v5, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    .line 305
    iput v5, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    .line 309
    iput v5, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    .line 313
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mManualClip:Z

    .line 317
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mDragging:Z

    .line 321
    iput-boolean v6, p0, Lcom/samsung/android/glview/GLView;->mDrawFirstTime:Z

    .line 325
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mAsyncLoad:Z

    .line 330
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    .line 334
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    .line 338
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    .line 339
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    .line 340
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mAnimationEventListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 341
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    .line 342
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mLongClickListener:Lcom/samsung/android/glview/GLView$LongClickListener;

    .line 350
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mViewId:I

    .line 358
    const-string v1, "NONE"

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mObjectTag:Ljava/lang/String;

    .line 362
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mParentViewId:I

    .line 374
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mLoaded:Z

    .line 378
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mLoading:Z

    .line 382
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mAnimationPending:Z

    .line 386
    iput-boolean v6, p0, Lcom/samsung/android/glview/GLView;->mAnimationFinished:Z

    .line 390
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mAnimationStarted:Z

    .line 394
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mAnimationStartedEvent:Z

    .line 398
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mHideAfterAnimation:Z

    .line 402
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mUpdateMatrixAfterAnimation:Z

    .line 406
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    .line 410
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mDimmed:Z

    .line 416
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mFocused:Z

    .line 420
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mHoverFocused:Z

    .line 424
    new-array v1, v3, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F

    .line 428
    new-array v1, v3, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    .line 432
    new-array v1, v3, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mScaleMatrix:[F

    .line 440
    new-array v1, v3, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTempMatrix:[F

    .line 444
    new-array v1, v3, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mCombinedMatrix:[F

    .line 448
    new-array v1, v3, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimMatrix:[F

    .line 452
    new-array v1, v3, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimGLMatrix:[F

    .line 456
    new-array v1, v3, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    .line 460
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->glCoordinate:[F

    .line 464
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->glTransformedCoordinate:[F

    .line 468
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTransformation:Landroid/view/animation/Transformation;

    .line 472
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mScaleX:F

    .line 476
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mScaleY:F

    .line 480
    iput v5, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    .line 484
    iput v5, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    .line 485
    iput v5, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    .line 489
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    .line 493
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mContinuousDrawMode:Z

    .line 497
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mOrientation:I

    .line 501
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mLastOrientation:I

    .line 505
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mRotatable:Z

    .line 509
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mCenterPivot:Z

    .line 513
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimation:Z

    .line 514
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 515
    const/16 v1, 0x12c

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimationDuration:I

    .line 519
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mParentHAlign:I

    .line 523
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mParentVAlign:I

    .line 527
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    .line 543
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mBackgroundResId:I

    .line 547
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mOldAlpha:F

    .line 551
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    .line 555
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftBottom:[F

    .line 559
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mRightTop:[F

    .line 563
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mRightBottom:[F

    .line 582
    iput-boolean v6, p0, Lcom/samsung/android/glview/GLView;->mClipping:Z

    .line 586
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mForcedClipping:Z

    .line 598
    iput-boolean v6, p0, Lcom/samsung/android/glview/GLView;->mDraggable:Z

    .line 602
    new-instance v1, Lcom/samsung/android/glview/GLView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLView$1;-><init>(Lcom/samsung/android/glview/GLView;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->setDragging:Ljava/lang/Runnable;

    .line 618
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mBypassTouch:Z

    .line 622
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mTempOrientation:I

    .line 626
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mInternalFocus:Z

    .line 627
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusLeftId:I

    .line 628
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusRightId:I

    .line 629
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusUpId:I

    .line 630
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusDownId:I

    .line 631
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusForwardId:I

    .line 632
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    .line 633
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    .line 634
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mLongClickable:Z

    .line 635
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickWhenLongClicked:Z

    .line 636
    const/16 v1, 0x64

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickInterval:I

    .line 640
    new-instance v1, Lcom/samsung/android/glview/GLView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLView$2;-><init>(Lcom/samsung/android/glview/GLView;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->repeatClick:Ljava/lang/Runnable;

    .line 657
    new-instance v1, Lcom/samsung/android/glview/GLView$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLView$3;-><init>(Lcom/samsung/android/glview/GLView;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->setLongClick:Ljava/lang/Runnable;

    .line 673
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mIsTouchCanceled:Z

    .line 677
    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mDragSensitivity:I

    .line 684
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 685
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    aput-object v2, v1, v0

    .line 684
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 773
    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    add-float v2, p2, p4

    add-float v3, p3, p5

    invoke-direct {v1, p2, p3, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    .line 774
    iput v5, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    .line 776
    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    .line 777
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->resetTransformMatrix()V

    .line 779
    iput p2, p0, Lcom/samsung/android/glview/GLView;->mOriginalLeft:F

    .line 780
    iput p3, p0, Lcom/samsung/android/glview/GLView;->mOriginalTop:F

    .line 781
    iput v5, p0, Lcom/samsung/android/glview/GLView;->mOriginalDepth:F

    .line 783
    iput p2, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    .line 784
    iput p3, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    .line 785
    iput v5, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    .line 787
    iput-boolean v6, p0, Lcom/samsung/android/glview/GLView;->mSizeSpecified:Z

    .line 788
    iput-boolean v6, p0, Lcom/samsung/android/glview/GLView;->mSizeGiven:Z

    .line 790
    invoke-virtual {p0, v4, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 791
    invoke-virtual {p0, v6, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 792
    const/4 v1, 0x2

    invoke-virtual {p0, v1, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 793
    const/4 v1, 0x3

    invoke-virtual {p0, v1, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 795
    iput-object p0, p0, Lcom/samsung/android/glview/GLView;->mThis:Lcom/samsung/android/glview/GLView;

    .line 796
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mViewId:I

    .line 797
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFF)V
    .locals 7
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "depth"    # F

    .prologue
    const/16 v6, 0x10

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mInScreen:Z

    .line 231
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mIsClipped:Z

    .line 235
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTransformedScreenCoordinate:[F

    .line 239
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mDefaultOrientation:I

    .line 244
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mRotateDegree:I

    .line 249
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mSizeGiven:Z

    .line 253
    iput-boolean v5, p0, Lcom/samsung/android/glview/GLView;->mLayoutUpdated:Z

    .line 261
    iput-boolean v5, p0, Lcom/samsung/android/glview/GLView;->mPositionChanged:Z

    .line 265
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mScaleChanged:Z

    .line 269
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    .line 273
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mAlpha:F

    .line 281
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mShaderStep:F

    .line 285
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mShaderParameter:F

    .line 289
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mOriginalLeft:F

    .line 293
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mOriginalTop:F

    .line 297
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mOriginalDepth:F

    .line 301
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    .line 305
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    .line 309
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    .line 313
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mManualClip:Z

    .line 317
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mDragging:Z

    .line 321
    iput-boolean v5, p0, Lcom/samsung/android/glview/GLView;->mDrawFirstTime:Z

    .line 325
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mAsyncLoad:Z

    .line 330
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    .line 334
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    .line 338
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    .line 339
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    .line 340
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mAnimationEventListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 341
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    .line 342
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mLongClickListener:Lcom/samsung/android/glview/GLView$LongClickListener;

    .line 350
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mViewId:I

    .line 358
    const-string v1, "NONE"

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mObjectTag:Ljava/lang/String;

    .line 362
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mParentViewId:I

    .line 374
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mLoaded:Z

    .line 378
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mLoading:Z

    .line 382
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mAnimationPending:Z

    .line 386
    iput-boolean v5, p0, Lcom/samsung/android/glview/GLView;->mAnimationFinished:Z

    .line 390
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mAnimationStarted:Z

    .line 394
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mAnimationStartedEvent:Z

    .line 398
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mHideAfterAnimation:Z

    .line 402
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mUpdateMatrixAfterAnimation:Z

    .line 406
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    .line 410
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mDimmed:Z

    .line 416
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mFocused:Z

    .line 420
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mHoverFocused:Z

    .line 424
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F

    .line 428
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    .line 432
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mScaleMatrix:[F

    .line 440
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTempMatrix:[F

    .line 444
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mCombinedMatrix:[F

    .line 448
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimMatrix:[F

    .line 452
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimGLMatrix:[F

    .line 456
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    .line 460
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->glCoordinate:[F

    .line 464
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->glTransformedCoordinate:[F

    .line 468
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTransformation:Landroid/view/animation/Transformation;

    .line 472
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mScaleX:F

    .line 476
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mScaleY:F

    .line 480
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    .line 484
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    .line 485
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    .line 489
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    .line 493
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mContinuousDrawMode:Z

    .line 497
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mOrientation:I

    .line 501
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mLastOrientation:I

    .line 505
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mRotatable:Z

    .line 509
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mCenterPivot:Z

    .line 513
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimation:Z

    .line 514
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 515
    const/16 v1, 0x12c

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimationDuration:I

    .line 519
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mParentHAlign:I

    .line 523
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mParentVAlign:I

    .line 527
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    .line 543
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mBackgroundResId:I

    .line 547
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mOldAlpha:F

    .line 551
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    .line 555
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftBottom:[F

    .line 559
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mRightTop:[F

    .line 563
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mRightBottom:[F

    .line 582
    iput-boolean v5, p0, Lcom/samsung/android/glview/GLView;->mClipping:Z

    .line 586
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mForcedClipping:Z

    .line 598
    iput-boolean v5, p0, Lcom/samsung/android/glview/GLView;->mDraggable:Z

    .line 602
    new-instance v1, Lcom/samsung/android/glview/GLView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLView$1;-><init>(Lcom/samsung/android/glview/GLView;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->setDragging:Ljava/lang/Runnable;

    .line 618
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mBypassTouch:Z

    .line 622
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mTempOrientation:I

    .line 626
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mInternalFocus:Z

    .line 627
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusLeftId:I

    .line 628
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusRightId:I

    .line 629
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusUpId:I

    .line 630
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusDownId:I

    .line 631
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusForwardId:I

    .line 632
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    .line 633
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    .line 634
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mLongClickable:Z

    .line 635
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickWhenLongClicked:Z

    .line 636
    const/16 v1, 0x64

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickInterval:I

    .line 640
    new-instance v1, Lcom/samsung/android/glview/GLView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLView$2;-><init>(Lcom/samsung/android/glview/GLView;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->repeatClick:Ljava/lang/Runnable;

    .line 657
    new-instance v1, Lcom/samsung/android/glview/GLView$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLView$3;-><init>(Lcom/samsung/android/glview/GLView;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->setLongClick:Ljava/lang/Runnable;

    .line 673
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mIsTouchCanceled:Z

    .line 677
    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mDragSensitivity:I

    .line 684
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 685
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    aput-object v2, v1, v0

    .line 684
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 810
    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    add-float v2, p2, p4

    add-float v3, p3, p5

    invoke-direct {v1, p2, p3, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    .line 812
    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    .line 813
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->resetTransformMatrix()V

    .line 815
    iput p2, p0, Lcom/samsung/android/glview/GLView;->mOriginalLeft:F

    .line 816
    iput p3, p0, Lcom/samsung/android/glview/GLView;->mOriginalTop:F

    .line 818
    iput p2, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    .line 819
    iput p3, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    .line 821
    iput-boolean v5, p0, Lcom/samsung/android/glview/GLView;->mSizeSpecified:Z

    .line 822
    iput-boolean v5, p0, Lcom/samsung/android/glview/GLView;->mSizeGiven:Z

    .line 824
    iput p6, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    .line 826
    invoke-virtual {p0, v4, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 827
    invoke-virtual {p0, v5, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 828
    const/4 v1, 0x2

    invoke-virtual {p0, v1, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 829
    const/4 v1, 0x3

    invoke-virtual {p0, v1, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 831
    iput-object p0, p0, Lcom/samsung/android/glview/GLView;->mThis:Lcom/samsung/android/glview/GLView;

    .line 832
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mViewId:I

    .line 833
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/glview/GLView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDraggable:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/glview/GLView;)F
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 43
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mPreviousDragX:F

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/glview/GLView;)F
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 43
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mPreviousDragY:F

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/glview/GLView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLongClickable:Z

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/glview/GLView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickWhenLongClicked:Z

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/glview/GLView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 43
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickInterval:I

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/glview/GLView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->repeatClick:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/glview/GLView;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private declared-synchronized combineMatrices()V
    .locals 3

    .prologue
    .line 4156
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mTempMatrix:[F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mScaleMatrix:[F

    invoke-static {v0, v1, v2}, Lcom/samsung/android/glview/GLUtil;->multiplyMM([F[F[F)V

    .line 4157
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mCombinedMatrix:[F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mTempMatrix:[F

    invoke-static {v0, v1, v2}, Lcom/samsung/android/glview/GLUtil;->multiplyMM([F[F[F)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4161
    :goto_0
    monitor-exit p0

    return-void

    .line 4156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 4158
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private transformScreenCoordinates(IIII)V
    .locals 9
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    const/16 v8, 0xc

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4165
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v1, v1, v4

    int-to-float v2, p1

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v2, v2, v6

    int-to-float v3, p2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v2, v2, v8

    add-float/2addr v1, v2

    aput v1, v0, v4

    .line 4166
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v1, v1, v5

    int-to-float v2, p1

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v2, v2, v7

    int-to-float v3, p2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    const/16 v3, 0xd

    aget v2, v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v5

    .line 4167
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mLeftBottom:[F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v1, v1, v4

    int-to-float v2, p1

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v2, v2, v6

    int-to-float v3, p4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v2, v2, v8

    add-float/2addr v1, v2

    aput v1, v0, v4

    .line 4168
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mLeftBottom:[F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v1, v1, v5

    int-to-float v2, p1

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v2, v2, v7

    int-to-float v3, p4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    const/16 v3, 0xd

    aget v2, v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v5

    .line 4169
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mRightTop:[F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v1, v1, v4

    int-to-float v2, p3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v2, v2, v6

    int-to-float v3, p2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v2, v2, v8

    add-float/2addr v1, v2

    aput v1, v0, v4

    .line 4170
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mRightTop:[F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v1, v1, v5

    int-to-float v2, p3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v2, v2, v7

    int-to-float v3, p2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    const/16 v3, 0xd

    aget v2, v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v5

    .line 4171
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mRightBottom:[F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v1, v1, v4

    int-to-float v2, p3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v2, v2, v6

    int-to-float v3, p4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v2, v2, v8

    add-float/2addr v1, v2

    aput v1, v0, v4

    .line 4172
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mRightBottom:[F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v1, v1, v5

    int-to-float v2, p3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    aget v2, v2, v7

    int-to-float v3, p4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    const/16 v3, 0xd

    aget v2, v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v5

    .line 4173
    return-void
.end method


# virtual methods
.method public declared-synchronized addAccessibilityChildViewNode(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/glview/GLView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 839
    .local p1, "listChildViewNode":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/glview/GLView;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mInScreen:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getVisibility()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 844
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 842
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getBypassTouch()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mIsClipped:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getDepth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 843
    :cond_2
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 839
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addView(ILcom/samsung/android/glview/GLView;)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 855
    return-void
.end method

.method public addView(Lcom/samsung/android/glview/GLView;)V
    .locals 0
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 852
    return-void
.end method

.method public final bringToFront()V
    .locals 1

    .prologue
    .line 858
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLView;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 860
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLView;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 862
    :cond_0
    return-void
.end method

.method public final cancelAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 865
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 875
    :goto_0
    return-void

    .line 868
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 869
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 870
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationPending:Z

    .line 871
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLView;->mAnimationFinished:Z

    .line 872
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationStarted:Z

    .line 874
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    goto :goto_0
.end method

.method public declared-synchronized clear()V
    .locals 3

    .prologue
    .line 881
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mRotatable:Z

    .line 882
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F

    .line 883
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    .line 885
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_0

    .line 886
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->clear()V

    .line 887
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    .line 889
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v1, :cond_1

    .line 890
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLRectangle;->clear()V

    .line 891
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    .line 893
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v1, :cond_2

    .line 894
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLRectangle;->clear()V

    .line 895
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    .line 897
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    .line 899
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    if-eqz v1, :cond_3

    .line 900
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    .line 903
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    if-eqz v1, :cond_4

    .line 904
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    .line 907
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    if-eqz v1, :cond_6

    .line 908
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_5

    .line 909
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 908
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 910
    :cond_5
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    .line 912
    .end local v0    # "i":I
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_7

    .line 913
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, p0}, Lcom/samsung/android/glview/GLView;->removeView(Lcom/samsung/android/glview/GLView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 915
    :cond_7
    monitor-exit p0

    return-void

    .line 881
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected final clearClip()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3843
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v1

    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glScissor(IIII)V

    .line 3844
    return-void
.end method

.method protected final clip()V
    .locals 6

    .prologue
    .line 3850
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->isParentClippingForced()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3851
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getParentForcedClipRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 3853
    .local v0, "parentForcedRect":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES20;->glScissor(IIII)V

    .line 3862
    .end local v0    # "parentForcedRect":Landroid/graphics/Rect;
    :goto_0
    return-void

    .line 3855
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mClipping:Z

    if-eqz v1, :cond_1

    .line 3857
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES20;->glScissor(IIII)V

    goto :goto_0

    .line 3859
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->clearClip()V

    goto :goto_0
.end method

.method public contains(FF)Z
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 925
    iget-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mManualClip:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    if-nez v4, :cond_1

    .line 926
    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mManualClipRect:Landroid/graphics/Rect;

    float-to-int v4, p1

    float-to-int v5, p2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    .line 947
    :cond_0
    :goto_0
    return v3

    .line 929
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    if-nez v4, :cond_2

    .line 930
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->refreshClipRect()V

    .line 933
    :cond_2
    iget-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mInScreen:Z

    if-eqz v4, :cond_0

    .line 937
    iget v4, p0, Lcom/samsung/android/glview/GLView;->mRotateDegree:I

    if-eqz v4, :cond_3

    .line 938
    const/4 v4, 0x2

    new-array v2, v4, [F

    .line 939
    .local v2, "rotationPivot":[F
    iget v4, p0, Lcom/samsung/android/glview/GLView;->mOrientation:I

    iget v5, p0, Lcom/samsung/android/glview/GLView;->mDefaultOrientation:I

    add-int/2addr v4, v5

    rem-int/lit8 v4, v4, 0x4

    invoke-virtual {p0, v4}, Lcom/samsung/android/glview/GLView;->getLeftTop(I)[F

    move-result-object v0

    .line 941
    .local v0, "leftTop":[F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v5

    add-float/2addr v4, v5

    div-float/2addr v4, v6

    aput v4, v0, v3

    .line 942
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v5

    add-float/2addr v4, v5

    div-float/2addr v4, v6

    aput v4, v0, v7

    .line 943
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    aget v5, v0, v3

    aget v6, v0, v7

    invoke-static {v4, v2, v5, v6}, Lcom/samsung/android/glview/GLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/samsung/android/glview/GLContext;[FFF)V

    .line 944
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getOrientation()I

    move-result v4

    iget v5, p0, Lcom/samsung/android/glview/GLView;->mDefaultOrientation:I

    add-int/2addr v4, v5

    rem-int/lit8 v4, v4, 0x4

    neg-int v4, v4

    mul-int/lit8 v4, v4, 0x5a

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getRotateDegree()I

    move-result v5

    sub-int/2addr v4, v5

    aget v3, v0, v3

    aget v5, v0, v7

    invoke-static {p1, p2, v4, v3, v5}, Lcom/samsung/android/glview/GLUtil;->rotatePoint(FFIFF)Landroid/graphics/PointF;

    move-result-object v1

    .line 945
    .local v1, "rotatedPoint":Landroid/graphics/PointF;
    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    float-to-int v4, v4

    iget v5, v1, Landroid/graphics/PointF;->y:F

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    goto :goto_0

    .line 947
    .end local v0    # "leftTop":[F
    .end local v1    # "rotatedPoint":Landroid/graphics/PointF;
    .end local v2    # "rotationPivot":[F
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    float-to-int v4, p1

    float-to-int v5, p2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    goto :goto_0
.end method

.method public final declared-synchronized draw([FLandroid/graphics/Rect;)V
    .locals 8
    .param p1, "parentMatrix"    # [F
    .param p2, "parentClipRect"    # Landroid/graphics/Rect;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    .line 958
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mLoaded:Z

    if-nez v1, :cond_1

    .line 959
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->load()Z

    move-result v1

    if-nez v1, :cond_1

    .line 960
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1120
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 965
    :cond_1
    :try_start_1
    iget v1, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    if-eq v1, v4, :cond_0

    .line 969
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mDrawFirstTime:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mRotatable:Z

    if-eqz v1, :cond_2

    .line 970
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLView;->setOrientation(I)V

    .line 973
    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mContinuousDrawMode:Z

    if-eqz v1, :cond_3

    .line 974
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 980
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mCombinedMatrix:[F

    .line 982
    .local v0, "currentMatrix":[F
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_9

    .line 983
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationFinished:Z

    if-nez v1, :cond_6

    .line 984
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 985
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 986
    .local v2, "timeMillis":J
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationPending:Z

    if-eqz v1, :cond_4

    .line 987
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->startAnimation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 958
    .end local v0    # "currentMatrix":[F
    .end local v2    # "timeMillis":J
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 991
    .restart local v0    # "currentMatrix":[F
    .restart local v2    # "timeMillis":J
    :cond_4
    :try_start_2
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationStarted:Z

    if-eqz v1, :cond_5

    .line 992
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationStarted:Z

    .line 993
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationStartedEvent:Z

    .line 994
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->reset()V

    .line 995
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 998
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 999
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mAnimMatrix:[F

    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1005
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimMatrix:[F

    invoke-static {v1}, Lcom/samsung/android/glview/GLUtil;->toGLMatrix([F)[F

    .line 1006
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimGLMatrix:[F

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mAnimMatrix:[F

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mCombinedMatrix:[F

    invoke-static {v1, v4, v5}, Lcom/samsung/android/glview/GLUtil;->multiplyMM([F[F[F)V

    .line 1008
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mAlpha:F

    .line 1014
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mAnimGLMatrix:[F

    .line 1035
    .end local v2    # "timeMillis":J
    :cond_6
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationFinished:Z

    if-eqz v1, :cond_8

    .line 1036
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mUpdateMatrixAfterAnimation:Z

    if-eqz v1, :cond_7

    .line 1037
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mUpdateMatrixAfterAnimation:Z

    .line 1038
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 1040
    :cond_7
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mLayoutUpdated:Z

    .line 1041
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->getFillAfter()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1042
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mAnimMatrix:[F

    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1043
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimMatrix:[F

    invoke-static {v1}, Lcom/samsung/android/glview/GLUtil;->toGLMatrix([F)[F

    .line 1044
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimGLMatrix:[F

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mAnimMatrix:[F

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mCombinedMatrix:[F

    invoke-static {v1, v4, v5}, Lcom/samsung/android/glview/GLUtil;->multiplyMM([F[F[F)V

    .line 1045
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mAnimGLMatrix:[F

    .line 1046
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mAlpha:F

    .line 1052
    :cond_8
    :goto_1
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationStartedEvent:Z

    if-eqz v1, :cond_9

    .line 1053
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationStartedEvent:Z

    .line 1054
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationEventListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    if-eqz v1, :cond_9

    .line 1055
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v4, Lcom/samsung/android/glview/GLView$5;

    invoke-direct {v4, p0}, Lcom/samsung/android/glview/GLView$5;-><init>(Lcom/samsung/android/glview/GLView;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1067
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    invoke-static {v1, p1, v0}, Lcom/samsung/android/glview/GLUtil;->multiplyMM([F[F[F)V

    .line 1069
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mLayoutUpdated:Z

    if-eqz v1, :cond_e

    .line 1070
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->refreshClipRect()V

    .line 1071
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mManualClip:Z

    if-eqz v1, :cond_13

    .line 1072
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mManualClipRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLContext;->getScreenGeometry()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 1073
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mClipping:Z

    if-eqz v1, :cond_d

    .line 1074
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mInScreen:Z

    .line 1075
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mIsClipped:Z

    .line 1076
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->onOutOfScreen()V

    goto/16 :goto_0

    .line 1016
    .restart local v2    # "timeMillis":J
    :cond_a
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationFinished:Z

    .line 1017
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mUpdateMatrixAfterAnimation:Z

    .line 1019
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationEventListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    if-eqz v1, :cond_b

    .line 1020
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v4, Lcom/samsung/android/glview/GLView$4;

    invoke-direct {v4, p0}, Lcom/samsung/android/glview/GLView$4;-><init>(Lcom/samsung/android/glview/GLView;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1028
    :cond_b
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mHideAfterAnimation:Z

    if-eqz v1, :cond_6

    .line 1029
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1048
    .end local v2    # "timeMillis":J
    :cond_c
    iget v1, p0, Lcom/samsung/android/glview/GLView;->mOldAlpha:F

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mAlpha:F

    goto :goto_1

    .line 1080
    :cond_d
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mManualClipRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1081
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mIsClipped:Z

    .line 1106
    :goto_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mInScreen:Z

    .line 1109
    :cond_e
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_f

    .line 1110
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/glview/GLView;->draw([FLandroid/graphics/Rect;)V

    .line 1112
    :cond_f
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->onDraw()V

    .line 1113
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mDrawFirstTime:Z

    .line 1114
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mHoverFocused:Z

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v1, :cond_10

    .line 1115
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/glview/GLRectangle;->draw([FLandroid/graphics/Rect;)V

    .line 1117
    :cond_10
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->isFocusIndicatorVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mFocused:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v1, :cond_0

    .line 1118
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/glview/GLRectangle;->draw([FLandroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1082
    :cond_11
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mManualClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, p2}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1083
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mIsClipped:Z

    goto :goto_2

    .line 1085
    :cond_12
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 1086
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mIsClipped:Z

    goto :goto_2

    .line 1089
    :cond_13
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalClipRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLContext;->getScreenGeometry()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 1090
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mClipping:Z

    if-eqz v1, :cond_14

    .line 1091
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mInScreen:Z

    .line 1092
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mIsClipped:Z

    .line 1093
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->onOutOfScreen()V

    goto/16 :goto_0

    .line 1097
    :cond_14
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mOriginalClipRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1098
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mIsClipped:Z

    goto/16 :goto_2

    .line 1099
    :cond_15
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, p2}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1100
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mIsClipped:Z

    goto/16 :goto_2

    .line 1102
    :cond_16
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 1103
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mIsClipped:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2
.end method

.method public dumpViewHierarchy(I)V
    .locals 5
    .param p1, "level"    # I

    .prologue
    .line 1123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1124
    .local v1, "s":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 1125
    const-string v2, "| "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1128
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_2

    .line 1129
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1130
    const-string v2, "DUMP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") Title : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1131
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Visible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->isVisible()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Clip(Manual:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mManualClip:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1130
    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    :goto_1
    return-void

    .line 1133
    :cond_1
    const-string v2, "DUMP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Visible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->isVisible()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Clip(Manual:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mManualClip:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    .line 1134
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1133
    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1137
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1138
    const-string v2, "DUMP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") Title : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1139
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Visible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->isVisible()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1138
    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1141
    :cond_3
    const-string v2, "DUMP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), Visible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->isVisible()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public findNextFocusFromView(Lcom/samsung/android/glview/GLView;I)Lcom/samsung/android/glview/GLView;
    .locals 10
    .param p1, "focusedView"    # Lcom/samsung/android/glview/GLView;
    .param p2, "direction"    # I

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 1147
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->isFocusable()Z

    move-result v7

    if-eqz v7, :cond_0

    if-nez p1, :cond_2

    .line 1148
    :cond_0
    const/4 v5, 0x0

    .line 1196
    :cond_1
    :goto_0
    return-object v5

    .line 1150
    :cond_2
    const/4 v5, 0x0

    .line 1153
    .local v5, "resultView":Lcom/samsung/android/glview/GLView;
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    div-float v0, v7, v9

    .line 1154
    .local v0, "centerX":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    div-float v1, v7, v9

    .line 1155
    .local v1, "centerY":F
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    div-float v2, v7, v9

    .line 1156
    .local v2, "focusedViewCenterX":F
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    div-float v3, v7, v9

    .line 1157
    .local v3, "focusedViewCenterY":F
    sub-float v7, v2, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 1158
    .local v4, "horizontalOffset":F
    sub-float v7, v3, v1

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 1160
    .local v6, "verticalOffset":F
    sparse-switch p2, :sswitch_data_0

    .line 1194
    const/4 v5, 0x0

    goto :goto_0

    .line 1163
    :sswitch_0
    cmpl-float v7, v2, v0

    if-lez v7, :cond_1

    .line 1164
    cmpl-float v7, v4, v6

    if-lez v7, :cond_1

    .line 1165
    move-object v5, p0

    goto :goto_0

    .line 1171
    :sswitch_1
    cmpg-float v7, v2, v0

    if-gez v7, :cond_1

    .line 1172
    cmpl-float v7, v4, v6

    if-lez v7, :cond_1

    .line 1173
    move-object v5, p0

    goto :goto_0

    .line 1179
    :sswitch_2
    cmpl-float v7, v3, v1

    if-lez v7, :cond_1

    .line 1180
    cmpg-float v7, v4, v6

    if-gez v7, :cond_1

    .line 1181
    move-object v5, p0

    goto :goto_0

    .line 1187
    :sswitch_3
    cmpg-float v7, v3, v1

    if-gez v7, :cond_1

    .line 1188
    cmpg-float v7, v4, v6

    if-gez v7, :cond_1

    .line 1189
    move-object v5, p0

    goto :goto_0

    .line 1160
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x31 -> :sswitch_0
        0x41 -> :sswitch_2
        0x42 -> :sswitch_1
        0x52 -> :sswitch_3
        0x62 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method public findViewByCoordinate(FF)Lcom/samsung/android/glview/GLView;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v0, 0x0

    .line 1210
    iget v1, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    if-eqz v1, :cond_1

    move-object p0, v0

    .line 1222
    .end local p0    # "this":Lcom/samsung/android/glview/GLView;
    :cond_0
    :goto_0
    return-object p0

    .line 1214
    .restart local p0    # "this":Lcom/samsung/android/glview/GLView;
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mBypassTouch:Z

    if-eqz v1, :cond_2

    move-object p0, v0

    .line 1215
    goto :goto_0

    .line 1218
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/glview/GLView;->contains(FF)Z

    move-result v1

    if-nez v1, :cond_0

    move-object p0, v0

    .line 1222
    goto :goto_0
.end method

.method public findViewById(I)Lcom/samsung/android/glview/GLView;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 1232
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mViewId:I

    if-ne v0, p1, :cond_0

    .line 1235
    .end local p0    # "this":Lcom/samsung/android/glview/GLView;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/samsung/android/glview/GLView;
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public findViewByObjectTag(Ljava/lang/String;)Lcom/samsung/android/glview/GLView;
    .locals 1
    .param p1, "objectTag"    # Ljava/lang/String;

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mObjectTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1248
    .end local p0    # "this":Lcom/samsung/android/glview/GLView;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/samsung/android/glview/GLView;
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public findViewByTag(I)Lcom/samsung/android/glview/GLView;
    .locals 1
    .param p1, "tag"    # I

    .prologue
    .line 1258
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mViewTag:I

    if-ne v0, p1, :cond_0

    .line 1261
    .end local p0    # "this":Lcom/samsung/android/glview/GLView;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/samsung/android/glview/GLView;
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public findViewFromLeftMostTop()Lcom/samsung/android/glview/GLView;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1271
    iget v1, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    if-eqz v1, :cond_1

    move-object p0, v0

    .line 1279
    .end local p0    # "this":Lcom/samsung/android/glview/GLView;
    :cond_0
    :goto_0
    return-object p0

    .line 1275
    .restart local p0    # "this":Lcom/samsung/android/glview/GLView;
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mBypassTouch:Z

    if-eqz v1, :cond_0

    move-object p0, v0

    .line 1276
    goto :goto_0
.end method

.method public findViewFromLeftMostTop(IFF)Lcom/samsung/android/glview/GLView;
    .locals 6
    .param p1, "orientation"    # I
    .param p2, "left"    # F
    .param p3, "top"    # F

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v2, 0x0

    .line 1291
    iget v3, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    if-eqz v3, :cond_0

    move-object p0, v2

    .line 1327
    .end local p0    # "this":Lcom/samsung/android/glview/GLView;
    :goto_0
    return-object p0

    .line 1295
    .restart local p0    # "this":Lcom/samsung/android/glview/GLView;
    :cond_0
    iget-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mBypassTouch:Z

    if-eqz v3, :cond_1

    move-object p0, v2

    .line 1296
    goto :goto_0

    .line 1299
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-float v0, v3, v5

    .line 1300
    .local v0, "centerX":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-float v1, v3, v5

    .line 1302
    .local v1, "centerY":F
    packed-switch p1, :pswitch_data_0

    :cond_2
    move-object p0, v2

    .line 1327
    goto :goto_0

    .line 1304
    :pswitch_0
    cmpl-float v3, v0, p2

    if-ltz v3, :cond_2

    cmpl-float v3, v1, p3

    if-ltz v3, :cond_2

    goto :goto_0

    .line 1309
    :pswitch_1
    cmpg-float v3, v0, p2

    if-gtz v3, :cond_2

    cmpg-float v3, v1, p3

    if-gtz v3, :cond_2

    goto :goto_0

    .line 1314
    :pswitch_2
    cmpg-float v3, v0, p2

    if-gtz v3, :cond_2

    cmpl-float v3, v1, p3

    if-ltz v3, :cond_2

    goto :goto_0

    .line 1319
    :pswitch_3
    cmpl-float v3, v0, p2

    if-ltz v3, :cond_2

    cmpg-float v3, v1, p3

    if-gtz v3, :cond_2

    goto :goto_0

    .line 1302
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public findViewOnSameLine(Lcom/samsung/android/glview/GLView;I)Lcom/samsung/android/glview/GLView;
    .locals 8
    .param p1, "focusedView"    # Lcom/samsung/android/glview/GLView;
    .param p2, "direction"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 1338
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->isFocusable()Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez p1, :cond_2

    .line 1339
    :cond_0
    const/4 v4, 0x0

    .line 1376
    :cond_1
    :goto_0
    return-object v4

    .line 1341
    :cond_2
    const/4 v4, 0x0

    .line 1343
    .local v4, "resultView":Lcom/samsung/android/glview/GLView;
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v0, v5, v7

    .line 1344
    .local v0, "centerX":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v1, v5, v7

    .line 1345
    .local v1, "centerY":F
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v2, v5, v7

    .line 1346
    .local v2, "focusedViewCenterX":F
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v3, v5, v7

    .line 1348
    .local v3, "focusedViewCenterY":F
    sparse-switch p2, :sswitch_data_0

    .line 1374
    const/4 v4, 0x0

    goto :goto_0

    .line 1351
    :sswitch_0
    cmpg-float v5, v0, v2

    if-gez v5, :cond_1

    invoke-static {v1, v3}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1352
    move-object v4, p0

    goto :goto_0

    .line 1357
    :sswitch_1
    cmpl-float v5, v0, v2

    if-lez v5, :cond_1

    invoke-static {v1, v3}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1358
    move-object v4, p0

    goto :goto_0

    .line 1363
    :sswitch_2
    cmpg-float v5, v1, v3

    if-gez v5, :cond_1

    invoke-static {v0, v2}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1364
    move-object v4, p0

    goto :goto_0

    .line 1369
    :sswitch_3
    cmpl-float v5, v1, v3

    if-lez v5, :cond_1

    invoke-static {v0, v2}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1370
    move-object v4, p0

    goto :goto_0

    .line 1348
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x31 -> :sswitch_0
        0x41 -> :sswitch_2
        0x42 -> :sswitch_1
        0x52 -> :sswitch_3
        0x62 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method public getAlpha()F
    .locals 4

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const v0, 0x3ee66666    # 0.45f

    .line 1386
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v2, :cond_1

    .line 1387
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mAlpha:F

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLView;->getAlpha()F

    move-result v3

    mul-float/2addr v2, v3

    iget-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mDimmed:Z

    if-eqz v3, :cond_0

    :goto_0
    mul-float/2addr v0, v2

    .line 1390
    :goto_1
    return v0

    :cond_0
    move v0, v1

    .line 1387
    goto :goto_0

    .line 1390
    :cond_1
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mAlpha:F

    iget-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mDimmed:Z

    if-eqz v3, :cond_2

    :goto_2
    mul-float/2addr v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public getArea()Landroid/graphics/RectF;
    .locals 5

    .prologue
    .line 1427
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public final getBottom()F
    .locals 2

    .prologue
    .line 1436
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mSizeSpecified:Z

    if-nez v0, :cond_0

    .line 1437
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->initSize()V

    .line 1439
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    .line 1440
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v1

    add-float/2addr v0, v1

    .line 1442
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method

.method public getBypassTouch()Z
    .locals 1

    .prologue
    .line 1446
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mBypassTouch:Z

    return v0
.end method

.method public final getCenterPivot()Z
    .locals 1

    .prologue
    .line 1459
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mCenterPivot:Z

    return v0
.end method

.method public getClickListener()Lcom/samsung/android/glview/GLView$ClickListener;
    .locals 1

    .prologue
    .line 1472
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    return-object v0
.end method

.method public getClipRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1485
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 1486
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->refreshClipRect()V

    .line 1488
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getClipRectArea()Landroid/graphics/RectF;
    .locals 5

    .prologue
    .line 1506
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public getContentArea()Landroid/graphics/RectF;
    .locals 5

    .prologue
    .line 1510
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContentAreaLeft()F

    move-result v0

    .line 1511
    .local v0, "left":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContentAreaTop()F

    move-result v1

    .line 1512
    .local v1, "top":F
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContentAreaWidth()F

    move-result v3

    add-float/2addr v3, v0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContentAreaHeight()F

    move-result v4

    add-float/2addr v4, v1

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v2
.end method

.method public getContentAreaHeight()F
    .locals 2

    .prologue
    .line 1521
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public getContentAreaLeft()F
    .locals 2

    .prologue
    .line 1525
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getContentAreaTop()F
    .locals 2

    .prologue
    .line 1529
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getContentAreaWidth()F
    .locals 2

    .prologue
    .line 1538
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public getContentDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1542
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mContentDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final getContext()Lcom/samsung/android/glview/GLContext;
    .locals 1

    .prologue
    .line 1555
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    return-object v0
.end method

.method public getCurrentArea()Landroid/graphics/RectF;
    .locals 7

    .prologue
    .line 1564
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTranslateX()F

    move-result v4

    .line 1565
    .local v4, "offsetX":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTranslateY()F

    move-result v5

    .line 1566
    .local v5, "offsetY":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v6

    add-float v1, v6, v4

    .line 1567
    .local v1, "currentLeft":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v6

    add-float v3, v6, v5

    .line 1568
    .local v3, "currentTop":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v6

    add-float v2, v1, v6

    .line 1569
    .local v2, "currentRight":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v6

    add-float v0, v3, v6

    .line 1571
    .local v0, "currentBottom":F
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v1, v3, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v6
.end method

.method public getCurrentBottom()F
    .locals 2

    .prologue
    .line 1580
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTranslateY()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getCurrentContentArea()Landroid/graphics/RectF;
    .locals 7

    .prologue
    .line 1584
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getCurrentArea()Landroid/graphics/RectF;

    move-result-object v0

    .line 1585
    .local v0, "current":Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method

.method public getCurrentDepth()F
    .locals 2

    .prologue
    .line 1594
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getDepth()F

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTranslateZ()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getCurrentLeft()F
    .locals 2

    .prologue
    .line 1603
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTranslateX()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getCurrentRight()F
    .locals 2

    .prologue
    .line 1612
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTranslateX()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getCurrentTop()F
    .locals 2

    .prologue
    .line 1621
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTranslateY()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public final getDepth()F
    .locals 2

    .prologue
    .line 1625
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 1626
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getDepth()F

    move-result v1

    add-float/2addr v0, v1

    .line 1628
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    goto :goto_0
.end method

.method public getDraggable()Z
    .locals 1

    .prologue
    .line 1632
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDraggable:Z

    return v0
.end method

.method public getFocusListener()Lcom/samsung/android/glview/GLView$FocusListener;
    .locals 1

    .prologue
    .line 1640
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    return-object v0
.end method

.method public final getHeight()F
    .locals 2

    .prologue
    .line 1653
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mSizeSpecified:Z

    if-nez v0, :cond_0

    .line 1654
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->initSize()V

    .line 1656
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public final getId()I
    .locals 1

    .prologue
    .line 1678
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mViewId:I

    return v0
.end method

.method public getInternalFocus()Z
    .locals 2

    .prologue
    .line 1682
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mInternalFocus:Z

    .line 1683
    .local v0, "result":Z
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_1

    .line 1684
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getInternalFocus()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 1686
    :cond_1
    :goto_0
    return v0

    .line 1684
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInternalFocusParent()Lcom/samsung/android/glview/GLView;
    .locals 1

    .prologue
    .line 1702
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mInternalFocus:Z

    if-eqz v0, :cond_0

    .line 1707
    .end local p0    # "this":Lcom/samsung/android/glview/GLView;
    :goto_0
    return-object p0

    .line 1704
    .restart local p0    # "this":Lcom/samsung/android/glview/GLView;
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    .line 1705
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->getInternalFocusParent()Lcom/samsung/android/glview/GLView;

    move-result-object p0

    goto :goto_0

    .line 1707
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public getLayoutX()F
    .locals 1

    .prologue
    .line 1717
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    return v0
.end method

.method public getLayoutY()F
    .locals 1

    .prologue
    .line 1726
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    return v0
.end method

.method public getLayoutZ()F
    .locals 1

    .prologue
    .line 1735
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    return v0
.end method

.method public final getLeft()F
    .locals 2

    .prologue
    .line 1744
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mPositionChanged:Z

    if-eqz v0, :cond_1

    .line 1745
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 1746
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mLeft:F

    .line 1747
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mTop:F

    .line 1752
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mPositionChanged:Z

    .line 1753
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mLeft:F

    .line 1755
    :goto_1
    return v0

    .line 1749
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mLeft:F

    .line 1750
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mTop:F

    goto :goto_0

    .line 1755
    :cond_1
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mLeft:F

    goto :goto_1
.end method

.method public final getLeftTop(I)[F
    .locals 7
    .param p1, "orientation"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    .line 1766
    const/4 v2, 0x3

    if-gt p1, v2, :cond_0

    if-gez p1, :cond_1

    .line 1767
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 1769
    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/glview/GLView;->mCenterPivot:Z

    if-eqz v2, :cond_3

    .line 1770
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v3

    add-float/2addr v2, v3

    div-float v0, v2, v4

    .line 1771
    .local v0, "centerX":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v3

    add-float/2addr v2, v3

    div-float v1, v2, v4

    .line 1773
    .local v1, "centerY":F
    packed-switch p1, :pswitch_data_0

    .line 1801
    .end local v0    # "centerX":F
    .end local v1    # "centerY":F
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    return-object v2

    .line 1775
    .restart local v0    # "centerX":F
    .restart local v1    # "centerY":F
    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v3

    aput v3, v2, v5

    .line 1776
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v3

    aput v3, v2, v6

    goto :goto_0

    .line 1779
    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v3

    div-float/2addr v3, v4

    add-float/2addr v3, v0

    aput v3, v2, v5

    .line 1780
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v3

    div-float/2addr v3, v4

    sub-float v3, v1, v3

    aput v3, v2, v6

    goto :goto_0

    .line 1783
    :pswitch_2
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    aput v3, v2, v5

    .line 1784
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v4

    add-float/2addr v3, v4

    aput v3, v2, v6

    goto :goto_0

    .line 1787
    :pswitch_3
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v3

    div-float/2addr v3, v4

    sub-float v3, v0, v3

    aput v3, v2, v5

    .line 1788
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v3

    div-float/2addr v3, v4

    add-float/2addr v3, v1

    aput v3, v2, v6

    goto :goto_0

    .line 1795
    .end local v0    # "centerX":F
    .end local v1    # "centerY":F
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    if-eqz v2, :cond_2

    .line 1796
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v3, v3, p1

    iget v3, v3, Landroid/graphics/RectF;->left:F

    aput v3, v2, v5

    .line 1797
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v3, v3, p1

    iget v3, v3, Landroid/graphics/RectF;->top:F

    aput v3, v2, v6

    goto :goto_0

    .line 1773
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getLoaded()Z
    .locals 1

    .prologue
    .line 1810
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLoaded:Z

    return v0
.end method

.method public getLongClickListener()Lcom/samsung/android/glview/GLView$LongClickListener;
    .locals 1

    .prologue
    .line 1814
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mLongClickListener:Lcom/samsung/android/glview/GLView$LongClickListener;

    return-object v0
.end method

.method protected getMatrix()[F
    .locals 1

    .prologue
    .line 3870
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    return-object v0
.end method

.method public final getMoveLayoutX()F
    .locals 2

    .prologue
    .line 1823
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 1824
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getMoveLayoutX()F

    move-result v1

    add-float/2addr v0, v1

    .line 1826
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method public final getMoveLayoutY()F
    .locals 2

    .prologue
    .line 1830
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 1831
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getMoveLayoutY()F

    move-result v1

    add-float/2addr v0, v1

    .line 1833
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method public final getMoveLayoutZ()F
    .locals 2

    .prologue
    .line 1837
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 1838
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    iget v1, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getMoveLayoutZ()F

    move-result v1

    add-float/2addr v0, v1

    .line 1840
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    iget v1, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method public final getNextFocusDownId()I
    .locals 1

    .prologue
    .line 1844
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mNextFocusDownId:I

    return v0
.end method

.method public getNextFocusForwardId()I
    .locals 1

    .prologue
    .line 1857
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mNextFocusForwardId:I

    return v0
.end method

.method public final getNextFocusLeftId()I
    .locals 1

    .prologue
    .line 1870
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mNextFocusLeftId:I

    return v0
.end method

.method public final getNextFocusRightId()I
    .locals 1

    .prologue
    .line 1878
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mNextFocusRightId:I

    return v0
.end method

.method public final getNextFocusUpId()I
    .locals 1

    .prologue
    .line 1886
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mNextFocusUpId:I

    return v0
.end method

.method public final getObjectTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1900
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mObjectTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getOrientation()I
    .locals 2

    .prologue
    .line 1919
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 1920
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mOrientation:I

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getOrientation()I

    move-result v1

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x4

    .line 1923
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mOrientation:I

    goto :goto_0
.end method

.method public getOriginalClipRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1957
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mOriginalClipRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 1958
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->refreshClipRect()V

    .line 1960
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mOriginalClipRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getPaddings()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1969
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getParentForcedClipRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1993
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-nez v0, :cond_0

    .line 1994
    const/4 v0, 0x0

    .line 2001
    :goto_0
    return-object v0

    .line 1997
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->isClippingForced()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1998
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    .line 2001
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->getParentForcedClipRect()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0
.end method

.method public final getParentHAlign()I
    .locals 1

    .prologue
    .line 2010
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mParentHAlign:I

    return v0
.end method

.method public getParentId()I
    .locals 1

    .prologue
    .line 2027
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mParentViewId:I

    return v0
.end method

.method public final getParentVAlign()I
    .locals 1

    .prologue
    .line 2044
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mParentVAlign:I

    return v0
.end method

.method public getRepeatClickInterval()I
    .locals 1

    .prologue
    .line 2057
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickInterval:I

    return v0
.end method

.method public final getRight()F
    .locals 2

    .prologue
    .line 2070
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mSizeSpecified:Z

    if-nez v0, :cond_0

    .line 2071
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->initSize()V

    .line 2073
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    .line 2074
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v1

    add-float/2addr v0, v1

    .line 2076
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    goto :goto_0
.end method

.method public final getRotatable()Z
    .locals 1

    .prologue
    .line 2085
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mRotatable:Z

    return v0
.end method

.method public final getRotateAnimation()Z
    .locals 1

    .prologue
    .line 2103
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimation:Z

    return v0
.end method

.method public getRotateDegree()I
    .locals 2

    .prologue
    .line 2116
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 2117
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mRotateDegree:I

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getRotateDegree()I

    move-result v1

    add-int/2addr v0, v1

    .line 2119
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mRotateDegree:I

    goto :goto_0
.end method

.method public getScrollHint()Z
    .locals 1

    .prologue
    .line 2128
    const/4 v0, 0x0

    return v0
.end method

.method public final getSizeGiven()Z
    .locals 1

    .prologue
    .line 2132
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mSizeGiven:Z

    return v0
.end method

.method protected final getSizeSpecified()Z
    .locals 1

    .prologue
    .line 3879
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mSizeSpecified:Z

    return v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2136
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mSubTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getTag()I
    .locals 1

    .prologue
    .line 2149
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mViewTag:I

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2162
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getTop()F
    .locals 2

    .prologue
    .line 2175
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mPositionChanged:Z

    if-eqz v0, :cond_1

    .line 2176
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 2177
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mLeft:F

    .line 2178
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mTop:F

    .line 2183
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mPositionChanged:Z

    .line 2184
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mTop:F

    .line 2186
    :goto_1
    return v0

    .line 2180
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mLeft:F

    .line 2181
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mTop:F

    goto :goto_0

    .line 2186
    :cond_1
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mTop:F

    goto :goto_1
.end method

.method public final getTranslateX()F
    .locals 2

    .prologue
    .line 2196
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 2197
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getTranslateX()F

    move-result v1

    add-float/2addr v0, v1

    .line 2199
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    goto :goto_0
.end method

.method public final getTranslateY()F
    .locals 2

    .prologue
    .line 2208
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 2209
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getTranslateY()F

    move-result v1

    add-float/2addr v0, v1

    .line 2211
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    goto :goto_0
.end method

.method public final getTranslateZ()F
    .locals 2

    .prologue
    .line 2220
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 2221
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getTranslateZ()F

    move-result v1

    add-float/2addr v0, v1

    .line 2223
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    goto :goto_0
.end method

.method public getTtsString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2234
    .local v1, "ttsString":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mContentDescription:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 2235
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mContentDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2239
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/glview/GLUtil;->isTimeInfo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2241
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/glview/GLUtil;->convertTimeInfoForTTS(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2242
    .local v0, "temp":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2243
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2245
    .end local v0    # "temp":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mSubTitle:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 2246
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2247
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mSubTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2249
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->isDim()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2250
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2251
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/samsung/android/glview/R$string;->disable:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2253
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2236
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mTitle:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2237
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public final getVisibility()I
    .locals 1

    .prologue
    .line 2262
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    return v0
.end method

.method public final getWidth()F
    .locals 2

    .prologue
    .line 2286
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mSizeSpecified:Z

    if-nez v0, :cond_0

    .line 2287
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->initSize()V

    .line 2289
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public abstract initSize()V
.end method

.method public isAnimationFinished()Z
    .locals 1

    .prologue
    .line 2316
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mAnimationFinished:Z

    return v0
.end method

.method public final isClickable()Z
    .locals 2

    .prologue
    .line 2320
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mViewFlags:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected declared-synchronized isClipped()Z
    .locals 1

    .prologue
    .line 3883
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mIsClipped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isClippingForced()Z
    .locals 1

    .prologue
    .line 2340
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mForcedClipping:Z

    return v0
.end method

.method public isDim()Z
    .locals 1

    .prologue
    .line 2344
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_2

    .line 2345
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->isDim()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDimmed:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 2347
    :goto_0
    return v0

    .line 2345
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2347
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDimmed:Z

    goto :goto_0
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 2365
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDragging:Z

    return v0
.end method

.method public final isFocusable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2370
    iget v1, p0, Lcom/samsung/android/glview/GLView;->mViewFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->isVisible()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isFocused()Z
    .locals 1

    .prologue
    .line 2383
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mFocused:Z

    return v0
.end method

.method public isHoverSwipeEvent(I)Z
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 2387
    const/16 v0, 0x41

    if-eq p1, v0, :cond_0

    const/16 v0, 0x52

    if-eq p1, v0, :cond_0

    const/16 v0, 0x31

    if-eq p1, v0, :cond_0

    const/16 v0, 0x62

    if-ne p1, v0, :cond_1

    .line 2388
    :cond_0
    const/4 v0, 0x1

    .line 2390
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInScreen()Z
    .locals 1

    .prologue
    .line 2394
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mInScreen:Z

    return v0
.end method

.method public isLongClickable()Z
    .locals 1

    .prologue
    .line 2398
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLongClickable:Z

    return v0
.end method

.method public isParentClippingForced()Z
    .locals 1

    .prologue
    .line 2411
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-nez v0, :cond_0

    .line 2412
    const/4 v0, 0x0

    .line 2419
    :goto_0
    return v0

    .line 2415
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->isClippingForced()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2416
    const/4 v0, 0x1

    goto :goto_0

    .line 2419
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->isParentClippingForced()Z

    move-result v0

    goto :goto_0
.end method

.method public isParentRotatable()Z
    .locals 1

    .prologue
    .line 2423
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    .line 2424
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->getRotatable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2425
    const/4 v0, 0x1

    .line 2430
    :goto_0
    return v0

    .line 2427
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->isParentRotatable()Z

    move-result v0

    goto :goto_0

    .line 2430
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRepeatClickWhenLongClicked()Z
    .locals 1

    .prologue
    .line 2434
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickWhenLongClicked:Z

    return v0
.end method

.method public final isVisible()I
    .locals 1

    .prologue
    .line 2445
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    .line 2446
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->isVisible()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    .line 2448
    :goto_0
    return v0

    .line 2446
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 2448
    :cond_1
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    goto :goto_0
.end method

.method public keyDownEvent(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2452
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    if-eqz v0, :cond_0

    .line 2453
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    invoke-interface {v0, p0, p2}, Lcom/samsung/android/glview/GLView$KeyListener;->onKeyDown(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2454
    const/4 v0, 0x1

    .line 2456
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/glview/GLView;->onKeyDownEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public keyUpEvent(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2460
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    if-eqz v0, :cond_0

    .line 2461
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    invoke-interface {v0, p0, p2}, Lcom/samsung/android/glview/GLView$KeyListener;->onKeyUp(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2462
    const/4 v0, 0x1

    .line 2464
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/glview/GLView;->onKeyUpEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final load()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2473
    iget-boolean v2, p0, Lcom/samsung/android/glview/GLView;->mLoading:Z

    if-eqz v2, :cond_2

    .line 2474
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLoaded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2475
    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLoaded:Z

    .line 2476
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mLoading:Z

    .line 2495
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 2479
    goto :goto_0

    .line 2482
    :cond_2
    iget-boolean v2, p0, Lcom/samsung/android/glview/GLView;->mLoaded:Z

    if-nez v2, :cond_0

    .line 2485
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->onLoad()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2486
    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLoaded:Z

    .line 2487
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mLoading:Z

    .line 2489
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_3

    .line 2490
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->load()Z

    .line 2495
    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLoaded:Z

    goto :goto_0

    .line 2492
    :cond_4
    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLoading:Z

    move v0, v1

    .line 2493
    goto :goto_0
.end method

.method protected mClipRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 3890
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final mapPoint([FFF)V
    .locals 7
    .param p1, "transformedScreenCoordinate"    # [F
    .param p2, "screenX"    # F
    .param p3, "screenY"    # F

    .prologue
    const/4 v3, 0x3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 2514
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->glCoordinate:[F

    aput p2, v0, v1

    .line 2515
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->glCoordinate:[F

    aput p3, v0, v6

    .line 2516
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->glCoordinate:[F

    aput v2, v0, v3

    .line 2517
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->glTransformedCoordinate:[F

    aput v2, v0, v3

    .line 2518
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->glTransformedCoordinate:[F

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->glCoordinate:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 2520
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->glTransformedCoordinate:[F

    aget v0, v0, v1

    aput v0, p1, v1

    .line 2521
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->glTransformedCoordinate:[F

    aget v0, v0, v6

    aput v0, p1, v6

    .line 2522
    return-void
.end method

.method protected final mapPointReverse([FFF)V
    .locals 11
    .param p1, "transformedScreenCoordinate"    # [F
    .param p2, "screenX"    # F
    .param p3, "screenY"    # F

    .prologue
    .line 3901
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getOrientation()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mDefaultOrientation:I

    add-int/2addr v2, v3

    rem-int/lit8 v10, v2, 0x4

    .line 3902
    .local v10, "orientation":I
    if-nez v10, :cond_0

    .line 3903
    const/4 v2, 0x0

    aput p2, p1, v2

    .line 3904
    const/4 v2, 0x1

    aput p3, p1, v2

    .line 3944
    :goto_0
    return-void

    .line 3908
    :cond_0
    const/16 v2, 0x10

    new-array v0, v2, [F

    .line 3912
    .local v0, "coordinateTransformMatrix":[F
    invoke-virtual {p0, v10}, Lcom/samsung/android/glview/GLView;->getLeftTop(I)[F

    move-result-object v9

    .line 3913
    .local v9, "leftTop":[F
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v2, :cond_1

    .line 3914
    const/4 v2, 0x0

    aget v3, v9, v2

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v4

    add-float/2addr v3, v4

    aput v3, v9, v2

    .line 3915
    const/4 v2, 0x1

    aget v3, v9, v2

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v4

    add-float/2addr v3, v4

    aput v3, v9, v2

    .line 3918
    :cond_1
    const/4 v2, 0x4

    new-array v7, v2, [F

    .line 3919
    .local v7, "glLeftTopCoordinate":[F
    const/4 v2, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v7, v2

    .line 3920
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v4

    invoke-static {v2, v7, v3, v4}, Lcom/samsung/android/glview/GLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/samsung/android/glview/GLContext;[FFF)V

    .line 3922
    const/4 v2, 0x4

    new-array v8, v2, [F

    .line 3923
    .local v8, "glRotatedLeftTopCoordinate":[F
    const/4 v2, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v8, v2

    .line 3924
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v3, 0x0

    aget v3, v9, v3

    const/4 v4, 0x1

    aget v4, v9, v4

    invoke-static {v2, v8, v3, v4}, Lcom/samsung/android/glview/GLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/samsung/android/glview/GLContext;[FFF)V

    .line 3926
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 3927
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v7, v3

    const/4 v4, 0x1

    aget v4, v7, v4

    const/4 v6, 0x0

    invoke-static {v0, v2, v3, v4, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 3928
    const/4 v1, 0x0

    mul-int/lit8 v2, v10, 0x5a

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 3929
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v8, v3

    neg-float v3, v3

    const/4 v4, 0x1

    aget v4, v8, v4

    neg-float v4, v4

    const/4 v6, 0x0

    invoke-static {v0, v2, v3, v4, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 3934
    const/4 v2, 0x4

    new-array v5, v2, [F

    .line 3935
    .local v5, "glCoordinate":[F
    const/4 v2, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v5, v2

    .line 3936
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-static {v2, v5, p2, p3}, Lcom/samsung/android/glview/GLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/samsung/android/glview/GLContext;[FFF)V

    .line 3938
    const/4 v2, 0x4

    new-array v1, v2, [F

    .line 3939
    .local v1, "glTransformedCoordinate":[F
    const/4 v2, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    .line 3940
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 3942
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x1

    aget v4, v1, v4

    invoke-static {v2, p1, v3, v4}, Lcom/samsung/android/glview/GLUtil;->getScreenCoordinateFromGLCoordinate(Lcom/samsung/android/glview/GLContext;[FFF)V

    goto/16 :goto_0
.end method

.method public final moveBaseDepthLayout(F)V
    .locals 1
    .param p1, "z"    # F

    .prologue
    .line 2525
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    .line 2526
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    .line 2533
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 2534
    return-void
.end method

.method public final moveBaseDepthLayout(FZ)V
    .locals 1
    .param p1, "z"    # F
    .param p2, "update"    # Z

    .prologue
    .line 2537
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    .line 2538
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    .line 2545
    if-eqz p2, :cond_0

    .line 2546
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 2548
    :cond_0
    return-void
.end method

.method public final moveBaseDepthLayoutAbsolute(F)V
    .locals 2
    .param p1, "z"    # F

    .prologue
    .line 2551
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getMoveLayoutZ()F

    move-result v0

    .line 2553
    .local v0, "moveZ":F
    iget v1, p0, Lcom/samsung/android/glview/GLView;->mOriginalDepth:F

    add-float/2addr v1, p1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    .line 2554
    iget v1, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    .line 2561
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 2562
    return-void
.end method

.method public final moveBaseDepthLayoutAbsolute(FZ)V
    .locals 2
    .param p1, "z"    # F
    .param p2, "update"    # Z

    .prologue
    .line 2565
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getMoveLayoutZ()F

    move-result v0

    .line 2567
    .local v0, "moveZ":F
    iget v1, p0, Lcom/samsung/android/glview/GLView;->mOriginalDepth:F

    add-float/2addr v1, p1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    .line 2568
    iget v1, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    .line 2575
    if-eqz p2, :cond_0

    .line 2576
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 2578
    :cond_0
    return-void
.end method

.method public final moveBaseLayout(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 2581
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v1

    .line 2582
    .local v1, "width":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v0

    .line 2584
    .local v0, "height":F
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    .line 2585
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    add-float/2addr v2, p2

    iput v2, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    .line 2587
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, p1

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 2588
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 2589
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 2590
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 2592
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 2593
    return-void
.end method

.method public final moveBaseLayoutAbsolute(FF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 2596
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v3

    .line 2597
    .local v3, "width":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v0

    .line 2598
    .local v0, "height":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getMoveLayoutX()F

    move-result v1

    .line 2599
    .local v1, "moveX":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getMoveLayoutY()F

    move-result v2

    .line 2601
    .local v2, "moveY":F
    iget v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalLeft:F

    add-float/2addr v4, p1

    iput v4, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    .line 2602
    iget v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalTop:F

    add-float/2addr v4, p2

    iput v4, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    .line 2604
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v5, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    add-float/2addr v5, v1

    iput v5, v4, Landroid/graphics/RectF;->left:F

    .line 2605
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v5, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    add-float/2addr v5, v2

    iput v5, v4, Landroid/graphics/RectF;->top:F

    .line 2606
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v3

    iput v5, v4, Landroid/graphics/RectF;->right:F

    .line 2607
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v0

    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    .line 2609
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 2610
    return-void
.end method

.method public final moveBaseLayoutAbsolute(FFZ)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "update"    # Z

    .prologue
    .line 2613
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v3

    .line 2614
    .local v3, "width":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v0

    .line 2615
    .local v0, "height":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getMoveLayoutX()F

    move-result v1

    .line 2616
    .local v1, "moveX":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getMoveLayoutY()F

    move-result v2

    .line 2618
    .local v2, "moveY":F
    iget v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalLeft:F

    add-float/2addr v4, p1

    iput v4, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    .line 2619
    iget v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalTop:F

    add-float/2addr v4, p2

    iput v4, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    .line 2621
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v5, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    add-float/2addr v5, v1

    iput v5, v4, Landroid/graphics/RectF;->left:F

    .line 2622
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v5, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    add-float/2addr v5, v2

    iput v5, v4, Landroid/graphics/RectF;->top:F

    .line 2623
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v3

    iput v5, v4, Landroid/graphics/RectF;->right:F

    .line 2624
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v0

    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    .line 2626
    if-eqz p3, :cond_0

    .line 2627
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 2629
    :cond_0
    return-void
.end method

.method public moveDepthLayout(F)V
    .locals 1
    .param p1, "z"    # F

    .prologue
    .line 2632
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    .line 2636
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 2637
    return-void
.end method

.method public moveDepthLayoutAbsolute(F)V
    .locals 1
    .param p1, "z"    # F

    .prologue
    .line 2640
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    .line 2647
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 2648
    return-void
.end method

.method public moveLayout(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 2657
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 2658
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 2659
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 2660
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, p2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 2662
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 2663
    return-void
.end method

.method public final moveLayoutAbsolute(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 2672
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v1

    .line 2673
    .local v1, "width":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v0

    .line 2675
    .local v0, "height":F
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    add-float/2addr v3, p1

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 2676
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 2677
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 2678
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 2680
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 2681
    return-void
.end method

.method public final moveLayoutAbsolute(FFZ)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "update"    # Z

    .prologue
    .line 2684
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v1

    .line 2685
    .local v1, "width":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v0

    .line 2687
    .local v0, "height":F
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    add-float/2addr v3, p1

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 2688
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 2689
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 2690
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 2692
    if-eqz p3, :cond_0

    .line 2693
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 2695
    :cond_0
    return-void
.end method

.method protected onAlphaUpdated()V
    .locals 0

    .prologue
    .line 3948
    return-void
.end method

.method protected onDepthUpdated()V
    .locals 0

    .prologue
    .line 3952
    return-void
.end method

.method protected abstract onDraw()V
.end method

.method public onFocusStatusChanged(I)V
    .locals 10
    .param p1, "focusStatus"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2698
    if-ne p1, v8, :cond_2

    .line 2699
    iput-boolean v8, p0, Lcom/samsung/android/glview/GLView;->mFocused:Z

    .line 2700
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-nez v0, :cond_0

    .line 2701
    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    .line 2702
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLContext;->getFocusIndicatorColor()I

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLContext;->getFocusIndicatorThickness()I

    move-result v7

    int-to-float v7, v7

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    .line 2703
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v8}, Lcom/samsung/android/glview/GLRectangle;->setBypassTouch(Z)V

    .line 2704
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v9}, Lcom/samsung/android/glview/GLRectangle;->setClipping(Z)V

    .line 2705
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    iput-object p0, v0, Lcom/samsung/android/glview/GLRectangle;->mParent:Lcom/samsung/android/glview/GLView;

    .line 2710
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    if-eqz v0, :cond_1

    .line 2711
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/glview/GLView$FocusListener;->onFocusChanged(Lcom/samsung/android/glview/GLView;I)Z

    .line 2713
    :cond_1
    return-void

    .line 2708
    :cond_2
    iput-boolean v9, p0, Lcom/samsung/android/glview/GLView;->mFocused:Z

    goto :goto_0
.end method

.method public onHoverIndicatorColorChanged()V
    .locals 2

    .prologue
    .line 2719
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_0

    .line 2720
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getHoverIndicatorColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setColor(I)V

    .line 2722
    :cond_0
    return-void
.end method

.method public onHoverStatusChanged(I)V
    .locals 10
    .param p1, "hoverStatus"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2725
    if-nez p1, :cond_1

    .line 2726
    iput-boolean v9, p0, Lcom/samsung/android/glview/GLView;->mHoverFocused:Z

    .line 2727
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-nez v0, :cond_0

    .line 2728
    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    .line 2729
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLContext;->getHoverIndicatorColor()I

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLContext;->getHoverIndicatorThickness()I

    move-result v7

    int-to-float v7, v7

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    .line 2730
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v9}, Lcom/samsung/android/glview/GLRectangle;->setBypassTouch(Z)V

    .line 2731
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v8}, Lcom/samsung/android/glview/GLRectangle;->setClipping(Z)V

    .line 2732
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    iput-object p0, v0, Lcom/samsung/android/glview/GLRectangle;->mParent:Lcom/samsung/android/glview/GLView;

    .line 2737
    :cond_0
    :goto_0
    return-void

    .line 2735
    :cond_1
    iput-boolean v8, p0, Lcom/samsung/android/glview/GLView;->mHoverFocused:Z

    goto :goto_0
.end method

.method public onKeyDownEvent(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2740
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUpEvent(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2744
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayoutUpdated()V
    .locals 1

    .prologue
    .line 3963
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mPositionChanged:Z

    .line 3964
    return-void
.end method

.method protected abstract onLoad()Z
.end method

.method protected onOrientationChanged(I)V
    .locals 10
    .param p1, "orientation"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    .line 3979
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mRotatable:Z

    if-eqz v1, :cond_4

    .line 3980
    iget v1, p0, Lcom/samsung/android/glview/GLView;->mOrientation:I

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mLastOrientation:I

    .line 3981
    iget v1, p0, Lcom/samsung/android/glview/GLView;->mLastOrientation:I

    if-ne v1, p1, :cond_0

    .line 4017
    :goto_0
    return-void

    .line 3985
    :cond_0
    move v8, p1

    .line 3986
    .local v8, "tempOrientation":I
    if-nez v8, :cond_5

    iget v1, p0, Lcom/samsung/android/glview/GLView;->mLastOrientation:I

    if-ne v1, v2, :cond_5

    .line 3987
    const/4 v8, 0x4

    .line 3992
    :cond_1
    :goto_1
    iget v1, p0, Lcom/samsung/android/glview/GLView;->mLastOrientation:I

    sub-int/2addr v1, v8

    mul-int/lit8 v7, v1, 0x5a

    .line 3993
    .local v7, "degree":I
    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLView;->setOrientation(I)V

    .line 3995
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mDrawFirstTime:Z

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->isVisible()I

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->isAnimationFinished()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3996
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimation:Z

    if-nez v1, :cond_6

    .line 3997
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mTransformation:Landroid/view/animation/Transformation;

    if-eqz v1, :cond_2

    .line 3998
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 3999
    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mHideAfterAnimation:Z

    if-eqz v1, :cond_3

    .line 4000
    invoke-virtual {p0, v4}, Lcom/samsung/android/glview/GLView;->setVisibility(I)V

    .line 4002
    :cond_3
    iget v1, p0, Lcom/samsung/android/glview/GLView;->mAlpha:F

    invoke-static {v1}, Lcom/samsung/android/glview/GLUtil;->getAlphaOnAnimation(F)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 4003
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->startAnimation()V

    .line 4016
    .end local v7    # "degree":I
    .end local v8    # "tempOrientation":I
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->setLongClick:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3988
    .restart local v8    # "tempOrientation":I
    :cond_5
    if-ne v8, v2, :cond_1

    iget v1, p0, Lcom/samsung/android/glview/GLView;->mLastOrientation:I

    if-nez v1, :cond_1

    .line 3989
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mLastOrientation:I

    goto :goto_1

    .line 4005
    .restart local v7    # "degree":I
    :cond_6
    new-instance v0, Landroid/view/animation/RotateAnimation;

    int-to-float v1, v7

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v5

    div-float/2addr v5, v9

    add-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v6

    div-float/2addr v6, v9

    add-float/2addr v6, v5

    move v5, v3

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 4006
    .local v0, "anim":Landroid/view/animation/RotateAnimation;
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v2

    float-to-int v2, v2

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v3

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/RotateAnimation;->initialize(IIII)V

    .line 4007
    iget v1, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimationDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 4008
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v1, :cond_7

    .line 4009
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4010
    :cond_7
    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 4011
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->startAnimation()V

    goto :goto_2
.end method

.method protected onOutOfScreen()V
    .locals 1

    .prologue
    .line 4020
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mInScreen:Z

    .line 4021
    return-void
.end method

.method protected abstract onReset()V
.end method

.method protected onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 4035
    const/4 v0, 0x0

    return v0
.end method

.method protected onVisibilityChanged(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 4042
    if-eqz p1, :cond_0

    .line 4043
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLongClickable:Z

    if-eqz v0, :cond_0

    .line 4044
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->setLongClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4045
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickWhenLongClicked:Z

    if-eqz v0, :cond_0

    .line 4046
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->repeatClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4050
    :cond_0
    return-void
.end method

.method protected parentClipRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 4058
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 4059
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->mClipRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 4061
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected refreshClipRect()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x3f000000    # 0.5f

    .line 4070
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v4

    add-float/2addr v4, v6

    float-to-int v4, v4

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int v1, v4, v5

    .line 4071
    .local v1, "left":I
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v4

    add-float/2addr v4, v6

    float-to-int v4, v4

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int v3, v4, v5

    .line 4072
    .local v3, "top":I
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v4

    add-float/2addr v4, v6

    float-to-int v4, v4

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v2, v4, v5

    .line 4073
    .local v2, "right":I
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v4

    add-float/2addr v4, v6

    float-to-int v4, v4

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v4, v5

    .line 4074
    .local v0, "bottom":I
    invoke-direct {p0, v1, v3, v2, v0}, Lcom/samsung/android/glview/GLView;->transformScreenCoordinates(IIII)V

    .line 4076
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    aget v4, v4, v7

    add-float/2addr v4, v6

    float-to-int v1, v4

    .line 4077
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    aget v4, v4, v8

    add-float/2addr v4, v6

    float-to-int v3, v4

    .line 4078
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mRightBottom:[F

    aget v4, v4, v7

    add-float/2addr v4, v6

    float-to-int v2, v4

    .line 4079
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mRightBottom:[F

    aget v4, v4, v8

    add-float/2addr v4, v6

    float-to-int v0, v4

    .line 4081
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getOrientation()I

    move-result v4

    iget v5, p0, Lcom/samsung/android/glview/GLView;->mDefaultOrientation:I

    add-int/2addr v4, v5

    rem-int/lit8 v4, v4, 0x4

    packed-switch v4, :pswitch_data_0

    .line 4105
    :goto_0
    if-gt v1, v2, :cond_0

    if-gt v3, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getRotateDegree()I

    move-result v4

    if-eqz v4, :cond_1

    .line 4108
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v4

    add-float/2addr v4, v6

    float-to-int v4, v4

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int v1, v4, v5

    .line 4109
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v4

    add-float/2addr v4, v6

    float-to-int v4, v4

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int v3, v4, v5

    .line 4110
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v4

    add-float/2addr v4, v6

    float-to-int v4, v4

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v2, v4, v5

    .line 4111
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v4

    add-float/2addr v4, v6

    float-to-int v4, v4

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v4, v5

    .line 4114
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    if-nez v4, :cond_2

    .line 4115
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    .line 4117
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 4118
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalClipRect:Landroid/graphics/Rect;

    if-nez v4, :cond_3

    .line 4119
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalClipRect:Landroid/graphics/Rect;

    .line 4121
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalClipRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 4122
    return-void

    .line 4083
    :pswitch_0
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mRightTop:[F

    aget v4, v4, v7

    add-float/2addr v4, v6

    float-to-int v1, v4

    .line 4084
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mRightTop:[F

    aget v4, v4, v8

    add-float/2addr v4, v6

    float-to-int v3, v4

    .line 4085
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mLeftBottom:[F

    aget v4, v4, v7

    add-float/2addr v4, v6

    float-to-int v2, v4

    .line 4086
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mLeftBottom:[F

    aget v4, v4, v8

    add-float/2addr v4, v6

    float-to-int v0, v4

    .line 4087
    goto :goto_0

    .line 4089
    :pswitch_1
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mLeftBottom:[F

    aget v4, v4, v7

    add-float/2addr v4, v6

    float-to-int v1, v4

    .line 4090
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mLeftBottom:[F

    aget v4, v4, v8

    add-float/2addr v4, v6

    float-to-int v3, v4

    .line 4091
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mRightTop:[F

    aget v4, v4, v7

    add-float/2addr v4, v6

    float-to-int v2, v4

    .line 4092
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mRightTop:[F

    aget v4, v4, v8

    add-float/2addr v4, v6

    float-to-int v0, v4

    .line 4093
    goto/16 :goto_0

    .line 4095
    :pswitch_2
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mRightBottom:[F

    aget v4, v4, v7

    add-float/2addr v4, v6

    float-to-int v1, v4

    .line 4096
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mRightBottom:[F

    aget v4, v4, v8

    add-float/2addr v4, v6

    float-to-int v3, v4

    .line 4097
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    aget v4, v4, v7

    add-float/2addr v4, v6

    float-to-int v2, v4

    .line 4098
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    aget v4, v4, v8

    add-float/2addr v4, v6

    float-to-int v0, v4

    .line 4099
    goto/16 :goto_0

    .line 4081
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public removeView(Lcom/samsung/android/glview/GLView;)V
    .locals 0
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 2753
    return-void
.end method

.method public final requestFocus()Z
    .locals 1

    .prologue
    .line 2756
    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->requestFocus(I)Z

    move-result v0

    return v0
.end method

.method public final requestFocus(I)Z
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 2760
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v0

    return v0
.end method

.method public requestFocus(ILcom/samsung/android/glview/GLView;)Z
    .locals 7
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedView"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v5, -0x1

    .line 2764
    if-nez p2, :cond_1

    .line 2765
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mViewFlags:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_6

    .line 2766
    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLView;->isHoverSwipeEvent(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2767
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2, p0, v6}, Lcom/samsung/android/glview/GLContext;->onHoverChanged(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)V

    :goto_0
    move v2, v3

    .line 2826
    :goto_1
    return v2

    .line 2769
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/samsung/android/glview/GLContext;->onFocusChanged(Lcom/samsung/android/glview/GLView;)V

    goto :goto_0

    .line 2775
    :cond_1
    const/4 v0, 0x0

    .line 2776
    .local v0, "nextViewToFocus":Lcom/samsung/android/glview/GLView;
    move v1, p1

    .line 2779
    .local v1, "revisedDirection":I
    sparse-switch v1, :sswitch_data_0

    .line 2808
    :cond_2
    :goto_2
    if-nez v0, :cond_4

    .line 2809
    invoke-virtual {p2}, Lcom/samsung/android/glview/GLView;->getId()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getId()I

    move-result v5

    if-ne v2, v5, :cond_3

    iget-boolean v2, p0, Lcom/samsung/android/glview/GLView;->mInternalFocus:Z

    if-eqz v2, :cond_3

    move v2, v4

    .line 2810
    goto :goto_1

    .line 2782
    :sswitch_0
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mNextFocusLeftId:I

    if-eq v2, v5, :cond_2

    .line 2783
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    iget v5, p0, Lcom/samsung/android/glview/GLView;->mNextFocusLeftId:I

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLContext;->findViewById(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    goto :goto_2

    .line 2788
    :sswitch_1
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mNextFocusRightId:I

    if-eq v2, v5, :cond_2

    .line 2789
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    iget v5, p0, Lcom/samsung/android/glview/GLView;->mNextFocusRightId:I

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLContext;->findViewById(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    goto :goto_2

    .line 2794
    :sswitch_2
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mNextFocusUpId:I

    if-eq v2, v5, :cond_2

    .line 2795
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    iget v5, p0, Lcom/samsung/android/glview/GLView;->mNextFocusUpId:I

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLContext;->findViewById(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    goto :goto_2

    .line 2800
    :sswitch_3
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mNextFocusDownId:I

    if-eq v2, v5, :cond_2

    .line 2801
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    iget v5, p0, Lcom/samsung/android/glview/GLView;->mNextFocusDownId:I

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLContext;->findViewById(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    goto :goto_2

    .line 2812
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getInternalFocus()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2813
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getInternalFocusParent()Lcom/samsung/android/glview/GLView;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v5, v2, p2, v1}, Lcom/samsung/android/glview/GLContext;->findNextFocusFromView(Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLView;I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    .line 2819
    :cond_4
    :goto_3
    if-eqz v0, :cond_6

    .line 2820
    invoke-virtual {v0, p1, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move v2, v3

    .line 2822
    goto :goto_1

    .line 2815
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2, v6, p2, v1}, Lcom/samsung/android/glview/GLContext;->findNextFocusFromView(Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLView;I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    goto :goto_3

    .end local v0    # "nextViewToFocus":Lcom/samsung/android/glview/GLView;
    .end local v1    # "revisedDirection":I
    :cond_6
    move v2, v4

    .line 2826
    goto/16 :goto_1

    .line 2779
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x31 -> :sswitch_0
        0x41 -> :sswitch_2
        0x42 -> :sswitch_1
        0x52 -> :sswitch_3
        0x62 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method public final reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2833
    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLoaded:Z

    .line 2834
    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLoading:Z

    .line 2835
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 2836
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->reset()V

    .line 2838
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_1

    .line 2839
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->reset()V

    .line 2841
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_2

    .line 2842
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->reset()V

    .line 2844
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->onReset()V

    .line 2845
    return-void
.end method

.method public final resetBaseDepth()V
    .locals 1

    .prologue
    .line 2848
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mOriginalDepth:F

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    .line 2849
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 2850
    return-void
.end method

.method public final resetBaseLayout()V
    .locals 4

    .prologue
    .line 2853
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v1

    .line 2854
    .local v1, "width":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v0

    .line 2856
    .local v0, "height":F
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mOriginalLeft:F

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 2857
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mOriginalTop:F

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 2858
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 2859
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 2861
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 2862
    return-void
.end method

.method public resetClipRect()V
    .locals 1

    .prologue
    .line 2865
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mManualClip:Z

    .line 2866
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->refreshClipRect()V

    .line 2867
    return-void
.end method

.method public final resetDepth()V
    .locals 1

    .prologue
    .line 2870
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    .line 2872
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 2873
    return-void
.end method

.method protected resetDrag()V
    .locals 2

    .prologue
    .line 4128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDragging:Z

    .line 4129
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->setDragging:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4130
    return-void
.end method

.method public final resetLayout()V
    .locals 4

    .prologue
    .line 2879
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v1

    .line 2880
    .local v1, "width":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v0

    .line 2882
    .local v0, "height":F
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 2883
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 2884
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 2885
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 2887
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 2888
    return-void
.end method

.method public resetNextFocusId()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 2894
    iput v0, p0, Lcom/samsung/android/glview/GLView;->mNextFocusDownId:I

    .line 2895
    iput v0, p0, Lcom/samsung/android/glview/GLView;->mNextFocusUpId:I

    .line 2896
    iput v0, p0, Lcom/samsung/android/glview/GLView;->mNextFocusLeftId:I

    .line 2897
    iput v0, p0, Lcom/samsung/android/glview/GLView;->mNextFocusRightId:I

    .line 2898
    return-void
.end method

.method public final resetScale()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2904
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLView;->mScaleChanged:Z

    .line 2906
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mScaleMatrix:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2908
    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    .line 2910
    iput v1, p0, Lcom/samsung/android/glview/GLView;->mScaleX:F

    .line 2911
    iput v1, p0, Lcom/samsung/android/glview/GLView;->mScaleY:F

    .line 2912
    return-void
.end method

.method public final declared-synchronized resetTransformMatrix()V
    .locals 2

    .prologue
    .line 2918
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2926
    :goto_0
    monitor-exit p0

    return-void

    .line 2921
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2922
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2923
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mCombinedMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2924
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mScaleMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2925
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2918
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final resetTranslate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2932
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 2944
    :goto_0
    return-void

    .line 2935
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2937
    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    .line 2939
    iput v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    .line 2940
    iput v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    .line 2941
    iput v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    .line 2943
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    goto :goto_0
.end method

.method public declared-synchronized rotateDegree(I)V
    .locals 1
    .param p1, "degree"    # I

    .prologue
    .line 2952
    monitor-enter p0

    :try_start_0
    rem-int/lit16 v0, p1, 0x168

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mRotateDegree:I

    .line 2953
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2954
    monitor-exit p0

    return-void

    .line 2952
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final scale(FF)V
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2963
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    if-nez v1, :cond_0

    .line 2979
    :goto_0
    return-void

    .line 2965
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, v7

    aput v2, v1, v4

    .line 2966
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, v7

    aput v2, v1, v5

    .line 2968
    const/4 v1, 0x2

    new-array v0, v1, [F

    .line 2969
    .local v0, "currentPivot":[F
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    aget v2, v2, v4

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    aget v3, v3, v5

    invoke-static {v1, v0, v2, v3}, Lcom/samsung/android/glview/GLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/samsung/android/glview/GLContext;[FFF)V

    .line 2971
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mScaleMatrix:[F

    aget v2, v0, v4

    aget v3, v0, v5

    invoke-static {v1, v4, v2, v3, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2972
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mScaleMatrix:[F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v4, p1, p2, v2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 2973
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mScaleMatrix:[F

    aget v2, v0, v4

    neg-float v2, v2

    aget v3, v0, v5

    neg-float v3, v3

    invoke-static {v1, v4, v2, v3, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2975
    iget v1, p0, Lcom/samsung/android/glview/GLView;->mScaleX:F

    mul-float/2addr v1, p1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mScaleX:F

    .line 2976
    iget v1, p0, Lcom/samsung/android/glview/GLView;->mScaleY:F

    mul-float/2addr v1, p2

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mScaleY:F

    .line 2978
    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    goto :goto_0
.end method

.method public sendAccessibilityEvent()V
    .locals 3

    .prologue
    .line 2986
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->isEnableAccessibilityNode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2987
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 2988
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getGLSurfaceView()Landroid/opengl/GLSurfaceView;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mViewId:I

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 2989
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2990
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2991
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2992
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2995
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getGLSurfaceView()Landroid/opengl/GLSurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->getGLSurfaceView()Landroid/opengl/GLSurfaceView;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2997
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void

    .line 2994
    .restart local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_1
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getObjectTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 1419
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mAlpha:F

    invoke-static {v0, p1}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1420
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mAlpha:F

    .line 1421
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mOldAlpha:F

    .line 1422
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->updateAlpha()V

    .line 1424
    :cond_0
    return-void
.end method

.method public final setAnimation(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 3005
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/glview/GLView;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 3006
    return-void
.end method

.method public final declared-synchronized setAnimation(Landroid/view/animation/Animation;Z)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;
    .param p2, "hideAfterAnimation"    # Z

    .prologue
    .line 3015
    monitor-enter p0

    :try_start_0
    iput-boolean p2, p0, Lcom/samsung/android/glview/GLView;->mHideAfterAnimation:Z

    .line 3016
    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3017
    monitor-exit p0

    return-void

    .line 3015
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .prologue
    .line 3020
    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mAnimationEventListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 3021
    return-void
.end method

.method public setAsyncLoad(Z)V
    .locals 0
    .param p1, "async"    # Z

    .prologue
    .line 3024
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLView;->mAsyncLoad:Z

    .line 3025
    return-void
.end method

.method public setBackground(I)Z
    .locals 7
    .param p1, "resId"    # I

    .prologue
    const/4 v2, 0x0

    .line 3033
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mBackgroundResId:I

    if-ne v0, p1, :cond_0

    .line 3034
    const/4 v0, 0x0

    .line 3043
    :goto_0
    return v0

    .line 3036
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    .line 3037
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->clear()V

    .line 3038
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    .line 3040
    :cond_1
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mBackgroundResId:I

    .line 3041
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v5

    move v3, v2

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    .line 3042
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    iput-object p0, v0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    .line 3043
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setBackgroundAlpha(F)Z
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 3052
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    if-nez v0, :cond_0

    .line 3053
    const/4 v0, 0x0

    .line 3056
    :goto_0
    return v0

    .line 3055
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->setAlpha(F)V

    .line 3056
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setBypassTouch(Z)V
    .locals 0
    .param p1, "bypass"    # Z

    .prologue
    .line 1450
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLView;->mBypassTouch:Z

    .line 1451
    return-void
.end method

.method public setCenterPivot(Z)V
    .locals 0
    .param p1, "centerPivot"    # Z

    .prologue
    .line 1468
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLView;->mCenterPivot:Z

    .line 1469
    return-void
.end method

.method public setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/glview/GLView$ClickListener;

    .prologue
    .line 1476
    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    .line 1477
    return-void
.end method

.method public setClickable(Z)V
    .locals 2
    .param p1, "clickable"    # Z

    .prologue
    .line 2331
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mViewFlags:I

    and-int/lit16 v1, v0, -0x4001

    if-eqz p1, :cond_0

    const/16 v0, 0x4000

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mViewFlags:I

    .line 2332
    return-void

    .line 2331
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setClipRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "clipRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1497
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mManualClipRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 1498
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLView;->mManualClipRect:Landroid/graphics/Rect;

    .line 1502
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mManualClip:Z

    .line 1503
    return-void

    .line 1500
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mManualClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public setClipping(Z)V
    .locals 1
    .param p1, "clipping"    # Z

    .prologue
    .line 3065
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLView;->mClipping:Z

    .line 3066
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mClipping:Z

    if-eqz v0, :cond_0

    .line 3067
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->refreshClipRect()V

    .line 3069
    :cond_0
    return-void
.end method

.method public setContentDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 1546
    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mContentDescription:Ljava/lang/String;

    .line 1547
    return-void
.end method

.method public final setContinuousDrawMode(Z)V
    .locals 0
    .param p1, "continuousDrawMode"    # Z

    .prologue
    .line 3077
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLView;->mContinuousDrawMode:Z

    .line 3078
    return-void
.end method

.method public final setDefaultOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 3086
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mDefaultOrientation:I

    .line 3087
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->updateRotationMatrix()V

    .line 3088
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 3089
    return-void
.end method

.method public setDim(Z)V
    .locals 2
    .param p1, "dimmed"    # Z

    .prologue
    .line 2356
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDimmed:Z

    if-ne v0, p1, :cond_0

    .line 2362
    :goto_0
    return-void

    .line 2359
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLView;->mDimmed:Z

    .line 2360
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    goto :goto_0
.end method

.method public setDragListener(Lcom/samsung/android/glview/GLView$DragListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/glview/GLView$DragListener;

    .prologue
    .line 3092
    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    .line 3093
    return-void
.end method

.method public setDragSensitivity(I)V
    .locals 1
    .param p1, "sensitivity"    # I

    .prologue
    .line 3101
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 3102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 3105
    :cond_0
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mDragSensitivity:I

    .line 3106
    return-void
.end method

.method public setDraggable(Z)V
    .locals 0
    .param p1, "draggable"    # Z

    .prologue
    .line 1636
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLView;->mDraggable:Z

    .line 1637
    return-void
.end method

.method public setFocusListener(Lcom/samsung/android/glview/GLView$FocusListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/glview/GLView$FocusListener;

    .prologue
    .line 1644
    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    .line 1645
    return-void
.end method

.method public setFocusable(Z)V
    .locals 2
    .param p1, "focusable"    # Z

    .prologue
    .line 2379
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mViewFlags:I

    and-int/lit8 v1, v0, -0x2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mViewFlags:I

    .line 2380
    return-void

    .line 2379
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setForcedClipping(Z)V
    .locals 0
    .param p1, "forced"    # Z

    .prologue
    .line 3114
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLView;->mForcedClipping:Z

    .line 3115
    return-void
.end method

.method public setHeight(F)V
    .locals 3
    .param p1, "height"    # F

    .prologue
    .line 1660
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mSizeSpecified:Z

    if-nez v0, :cond_0

    .line 1675
    :goto_0
    return-void

    .line 1663
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 1664
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    .line 1665
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->setHeight(F)V

    .line 1667
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_2

    .line 1668
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setHeight(F)V

    .line 1671
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_3

    .line 1672
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setHeight(F)V

    .line 1674
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    goto :goto_0
.end method

.method public setInternalFocus(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 1698
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLView;->mInternalFocus:Z

    .line 1699
    return-void
.end method

.method public setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/glview/GLView$KeyListener;

    .prologue
    .line 3118
    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    .line 3119
    return-void
.end method

.method public final setLeftTop(IFF)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "left"    # F
    .param p3, "top"    # F

    .prologue
    .line 3129
    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 3130
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 3132
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    if-eqz v0, :cond_2

    .line 3133
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v0, v0, p1

    iput p2, v0, Landroid/graphics/RectF;->left:F

    .line 3134
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v0, v0, p1

    iput p3, v0, Landroid/graphics/RectF;->top:F

    .line 3136
    :cond_2
    return-void
.end method

.method public final setLeftTop(IFFZ)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "update"    # Z

    .prologue
    const/4 v1, 0x1

    .line 3146
    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 3147
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 3149
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    if-eqz v0, :cond_2

    .line 3150
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v0, v0, p1

    iput p2, v0, Landroid/graphics/RectF;->left:F

    .line 3151
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v0, v0, p1

    iput p3, v0, Landroid/graphics/RectF;->top:F

    .line 3154
    :cond_2
    if-eqz p4, :cond_3

    .line 3155
    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLView;->setRotatable(Z)V

    .line 3156
    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 3158
    :cond_3
    return-void
.end method

.method public final setLeftTop(I[F)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "leftTops"    # [F

    .prologue
    .line 3167
    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 3168
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 3170
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    aget v1, p2, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 3171
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    aget v1, p2, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 3172
    return-void
.end method

.method public setLongClickListener(Lcom/samsung/android/glview/GLView$LongClickListener;)V
    .locals 1
    .param p1, "l"    # Lcom/samsung/android/glview/GLView$LongClickListener;

    .prologue
    .line 1818
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLongClickable:Z

    .line 1819
    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mLongClickListener:Lcom/samsung/android/glview/GLView$LongClickListener;

    .line 1820
    return-void
.end method

.method public setLongClickable(Z)V
    .locals 0
    .param p1, "longClickable"    # Z

    .prologue
    .line 2402
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLView;->mLongClickable:Z

    .line 2403
    return-void
.end method

.method public setNextFocusDownId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 1848
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusDownId:I

    .line 1849
    return-void
.end method

.method public setNextFocusDownView(Lcom/samsung/android/glview/GLView;)Z
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 3175
    if-eqz p1, :cond_0

    .line 3176
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mNextFocusDownId:I

    .line 3177
    const/4 v0, 0x1

    .line 3179
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNextFocusForwardId(I)V
    .locals 0
    .param p1, "nextFocusForwardId"    # I

    .prologue
    .line 1866
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusForwardId:I

    .line 1867
    return-void
.end method

.method public setNextFocusLeftId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 1874
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusLeftId:I

    .line 1875
    return-void
.end method

.method public setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 3183
    if-eqz p1, :cond_0

    .line 3184
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mNextFocusLeftId:I

    .line 3185
    const/4 v0, 0x1

    .line 3187
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNextFocusRightId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 1882
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusRightId:I

    .line 1883
    return-void
.end method

.method public setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 3191
    if-eqz p1, :cond_0

    .line 3192
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mNextFocusRightId:I

    .line 3193
    const/4 v0, 0x1

    .line 3195
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNextFocusUpId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 1890
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusUpId:I

    .line 1891
    return-void
.end method

.method public setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 3199
    if-eqz p1, :cond_0

    .line 3200
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mNextFocusUpId:I

    .line 3201
    const/4 v0, 0x1

    .line 3203
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNinePatchBackground(I)Z
    .locals 7
    .param p1, "resId"    # I

    .prologue
    const/4 v2, 0x0

    .line 3212
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mBackgroundResId:I

    if-ne v0, p1, :cond_0

    .line 3213
    const/4 v0, 0x0

    .line 3223
    :goto_0
    return v0

    .line 3215
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    .line 3216
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->clear()V

    .line 3217
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    .line 3219
    :cond_1
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mBackgroundResId:I

    .line 3220
    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v5

    move v3, v2

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    .line 3221
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    iput-object p0, v0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    .line 3222
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->setPaddings(Landroid/graphics/Rect;)V

    .line 3223
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setNinePatchBackground(II)Z
    .locals 8
    .param p1, "resId"    # I
    .param p2, "alpha"    # I

    .prologue
    const/4 v2, 0x0

    .line 3233
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mBackgroundResId:I

    if-ne v0, p1, :cond_0

    .line 3234
    const/4 v0, 0x0

    .line 3244
    :goto_0
    return v0

    .line 3236
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    .line 3237
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->clear()V

    .line 3238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    .line 3240
    :cond_1
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mBackgroundResId:I

    .line 3241
    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v5

    int-to-float v7, p2

    move v3, v2

    move v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    .line 3242
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    iput-object p0, v0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    .line 3243
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->setPaddings(Landroid/graphics/Rect;)V

    .line 3244
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final setObjectTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "commandString"    # Ljava/lang/String;

    .prologue
    .line 1910
    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mObjectTag:Ljava/lang/String;

    .line 1911
    return-void
.end method

.method public final declared-synchronized setOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    const/4 v0, 0x1

    .line 1932
    monitor-enter p0

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 1933
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1932
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1936
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 1949
    :goto_0
    monitor-exit p0

    return-void

    .line 1940
    :cond_1
    :try_start_2
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mOrientation:I

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mLastOrientation:I

    .line 1941
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mOrientation:I

    .line 1943
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->updateRotationMatrix()V

    .line 1945
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mOrientationChangeListener:Lcom/samsung/android/glview/GLView$OrientationChangeListener;

    if-eqz v0, :cond_2

    .line 1946
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mOrientationChangeListener:Lcom/samsung/android/glview/GLView$OrientationChangeListener;

    iget v1, p0, Lcom/samsung/android/glview/GLView;->mOrientation:I

    invoke-interface {v0, v1}, Lcom/samsung/android/glview/GLView$OrientationChangeListener;->onOrientationChanged(I)V

    .line 1948
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/glview/GLView$OrientationChangeListener;

    .prologue
    .line 3253
    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mOrientationChangeListener:Lcom/samsung/android/glview/GLView$OrientationChangeListener;

    .line 3254
    return-void
.end method

.method public setPaddings(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "paddings"    # Landroid/graphics/Rect;

    .prologue
    .line 1978
    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    .line 1979
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_0

    .line 1980
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setSize(FF)V

    .line 1982
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_1

    .line 1983
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setSize(FF)V

    .line 1985
    :cond_1
    return-void
.end method

.method public final setParentHAlign(I)V
    .locals 0
    .param p1, "halign"    # I

    .prologue
    .line 2019
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mParentHAlign:I

    .line 2020
    return-void
.end method

.method public setParentId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 2035
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mParentViewId:I

    .line 2036
    return-void
.end method

.method public final setParentVAlign(I)V
    .locals 0
    .param p1, "valign"    # I

    .prologue
    .line 2053
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mParentVAlign:I

    .line 2054
    return-void
.end method

.method public setRepeatClickInterval(I)V
    .locals 0
    .param p1, "milliSeconds"    # I

    .prologue
    .line 2061
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickInterval:I

    .line 2062
    return-void
.end method

.method public setRepeatClickWhenLongClicked(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 2438
    if-eqz p1, :cond_0

    .line 2439
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLView;->mLongClickable:Z

    .line 2441
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickWhenLongClicked:Z

    .line 2442
    return-void
.end method

.method public setRotatable(Z)V
    .locals 0
    .param p1, "rotatable"    # Z

    .prologue
    .line 2094
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLView;->mRotatable:Z

    .line 2095
    return-void
.end method

.method public setRotateAnimation(Z)V
    .locals 0
    .param p1, "rotateAnimation"    # Z

    .prologue
    .line 2112
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimation:Z

    .line 2113
    return-void
.end method

.method public setRotateAnimationDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 3257
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimationDuration:I

    .line 3258
    return-void
.end method

.method public setRotateAnimationInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 3261
    if-eqz p1, :cond_0

    .line 3262
    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 3263
    :cond_0
    return-void
.end method

.method public setShaderParameter(F)V
    .locals 0
    .param p1, "parameter"    # F

    .prologue
    .line 3271
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mShaderParameter:F

    .line 3272
    return-void
.end method

.method public setShaderProgram(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 3280
    return-void
.end method

.method public setShaderStep(F)V
    .locals 0
    .param p1, "step"    # F

    .prologue
    .line 3289
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mShaderStep:F

    .line 3290
    return-void
.end method

.method public setSize(FF)V
    .locals 4
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    const/4 v2, 0x1

    .line 3299
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 3300
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 3302
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLView;->mSizeSpecified:Z

    .line 3303
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLView;->mSizeGiven:Z

    .line 3305
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 3306
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLView;->setSize(FF)V

    .line 3308
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_1

    .line 3309
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setSize(FF)V

    .line 3312
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_2

    .line 3313
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setSize(FF)V

    .line 3316
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 3317
    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 2140
    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mSubTitle:Ljava/lang/String;

    .line 2141
    return-void
.end method

.method public final setTag(I)V
    .locals 0
    .param p1, "viewTag"    # I

    .prologue
    .line 2158
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mViewTag:I

    .line 2159
    return-void
.end method

.method public abstract setTint(I)V
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 2166
    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mTitle:Ljava/lang/String;

    .line 2167
    return-void
.end method

.method public setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/glview/GLView$TouchListener;

    .prologue
    .line 3330
    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    .line 3331
    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 2271
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    if-eq v0, p1, :cond_1

    .line 2272
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    .line 2273
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    if-eqz v0, :cond_0

    .line 2274
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 2276
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLView;->onVisibilityChanged(I)V

    .line 2278
    :cond_1
    return-void
.end method

.method public setVisibility(IZ)V
    .locals 2
    .param p1, "visibility"    # I
    .param p2, "update"    # Z

    .prologue
    .line 3334
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    if-ne v0, p1, :cond_0

    .line 3342
    :goto_0
    return-void

    .line 3337
    :cond_0
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    .line 3338
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    if-eqz v0, :cond_1

    .line 3339
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 3341
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLView;->onVisibilityChanged(I)V

    goto :goto_0
.end method

.method public setWidth(F)V
    .locals 3
    .param p1, "width"    # F

    .prologue
    .line 2293
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mSizeSpecified:Z

    if-nez v0, :cond_0

    .line 2308
    :goto_0
    return-void

    .line 2296
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 2297
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    .line 2298
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->setWidth(F)V

    .line 2300
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_2

    .line 2301
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setWidth(F)V

    .line 2304
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_3

    .line 2305
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setWidth(F)V

    .line 2307
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    goto :goto_0
.end method

.method public final startAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3348
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 3362
    :goto_0
    return-void

    .line 3351
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLoaded:Z

    if-eqz v0, :cond_1

    .line 3352
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 3353
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationPending:Z

    .line 3354
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLView;->mAnimationStarted:Z

    .line 3359
    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationFinished:Z

    .line 3361
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    goto :goto_0

    .line 3356
    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLView;->mAnimationPending:Z

    .line 3357
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationStarted:Z

    goto :goto_1
.end method

.method public touchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    .line 3372
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mDragSensitivity:I

    packed-switch v0, :pswitch_data_0

    .line 3381
    const/16 v6, 0x1f4

    .line 3385
    .local v6, "dragHoldTime":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    .line 3386
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mIsTouchCanceled:Z

    .line 3387
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mPreviousDragX:F

    .line 3388
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mPreviousDragY:F

    .line 3389
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->resetDrag()V

    .line 3390
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDraggable:Z

    if-eqz v0, :cond_0

    .line 3391
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mTempOrientation:I

    .line 3392
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mDragSensitivity:I

    if-nez v0, :cond_3

    .line 3393
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->setDragging:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3398
    :cond_0
    :goto_1
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLongClickable:Z

    if-eqz v0, :cond_1

    .line 3399
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->setLongClick:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3473
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    if-eqz v0, :cond_14

    .line 3474
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/glview/GLView$TouchListener;->onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3475
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDraggable:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDragging:Z

    if-nez v0, :cond_2

    .line 3476
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->resetDrag()V

    :cond_2
    move v0, v7

    .line 3492
    :goto_3
    return v0

    .line 3374
    .end local v6    # "dragHoldTime":I
    :pswitch_0
    const/4 v6, 0x0

    .line 3375
    .restart local v6    # "dragHoldTime":I
    goto :goto_0

    .line 3377
    .end local v6    # "dragHoldTime":I
    :pswitch_1
    const/16 v6, 0x12c

    .line 3378
    .restart local v6    # "dragHoldTime":I
    goto :goto_0

    .line 3395
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->setDragging:Ljava/lang/Runnable;

    int-to-long v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 3401
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 3402
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDraggable:Z

    if-eqz v0, :cond_a

    .line 3403
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDragging:Z

    if-eqz v0, :cond_8

    .line 3404
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mTempOrientation:I

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getOrientation()I

    move-result v1

    if-eq v0, v1, :cond_6

    .line 3405
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    if-eqz v0, :cond_5

    .line 3406
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/samsung/android/glview/GLView$DragListener;->onDragEnd(Lcom/samsung/android/glview/GLView;FF)V

    .line 3408
    :cond_5
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    .line 3409
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->resetDrag()V

    move v0, v7

    .line 3410
    goto :goto_3

    .line 3412
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    if-eqz v0, :cond_7

    .line 3413
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v4, p0, Lcom/samsung/android/glview/GLView;->mPreviousDragX:F

    sub-float v4, v1, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v5, p0, Lcom/samsung/android/glview/GLView;->mPreviousDragY:F

    sub-float v5, v1, v5

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/glview/GLView$DragListener;->onDrag(Lcom/samsung/android/glview/GLView;FFFF)V

    .line 3415
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mPreviousDragX:F

    .line 3416
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mPreviousDragY:F

    .line 3417
    if-eqz v6, :cond_1

    move v0, v7

    .line 3418
    goto :goto_3

    .line 3419
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/glview/GLView;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_9

    .line 3420
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->resetDrag()V

    goto/16 :goto_2

    .line 3422
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mPreviousDragX:F

    .line 3423
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mPreviousDragY:F

    goto/16 :goto_2

    .line 3425
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/glview/GLView;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3427
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLongClickable:Z

    if-eqz v0, :cond_1

    .line 3428
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->setLongClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3429
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickWhenLongClicked:Z

    if-eqz v0, :cond_1

    .line 3430
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->repeatClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 3434
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v7, :cond_11

    .line 3435
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDraggable:Z

    if-eqz v0, :cond_10

    .line 3436
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDragging:Z

    if-eqz v0, :cond_d

    .line 3437
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    if-eqz v0, :cond_c

    .line 3438
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/samsung/android/glview/GLView$DragListener;->onDragEnd(Lcom/samsung/android/glview/GLView;FF)V

    .line 3440
    :cond_c
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    .line 3442
    :cond_d
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->resetDrag()V

    .line 3448
    :cond_e
    :goto_4
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLongClickable:Z

    if-eqz v0, :cond_f

    .line 3449
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->setLongClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3450
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickWhenLongClicked:Z

    if-eqz v0, :cond_f

    .line 3451
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->repeatClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3454
    :cond_f
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->sendAccessibilityEvent()V

    goto/16 :goto_2

    .line 3444
    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/glview/GLView;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_e

    .line 3445
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_4

    .line 3455
    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v8, :cond_1

    .line 3456
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDraggable:Z

    if-eqz v0, :cond_13

    .line 3457
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDragging:Z

    if-eqz v0, :cond_12

    .line 3458
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    if-eqz v0, :cond_12

    .line 3459
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/samsung/android/glview/GLView$DragListener;->onDragEnd(Lcom/samsung/android/glview/GLView;FF)V

    .line 3462
    :cond_12
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->resetDrag()V

    .line 3464
    :cond_13
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLongClickable:Z

    if-eqz v0, :cond_1

    .line 3465
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->setLongClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3466
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickWhenLongClicked:Z

    if-eqz v0, :cond_1

    .line 3467
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->repeatClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 3482
    :cond_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v7, :cond_15

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/glview/GLView;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_15

    .line 3483
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    .line 3486
    :cond_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v8, :cond_17

    .line 3487
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mIsTouchCanceled:Z

    if-eqz v0, :cond_16

    move v0, v7

    .line 3488
    goto/16 :goto_3

    .line 3490
    :cond_16
    iput-boolean v7, p0, Lcom/samsung/android/glview/GLView;->mIsTouchCanceled:Z

    .line 3492
    :cond_17
    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_3

    .line 3372
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final translate(FF)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    .line 3502
    cmpl-float v2, p1, v5

    if-nez v2, :cond_0

    cmpl-float v2, p2, v5

    if-nez v2, :cond_0

    .line 3521
    :goto_0
    return-void

    .line 3505
    :cond_0
    move v0, p1

    .line 3506
    .local v0, "alignedX":F
    move v1, p2

    .line 3509
    .local v1, "alignedY":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->getAlignToPixel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3510
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    add-float/2addr v2, p1

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    sub-float v0, v2, v3

    .line 3511
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    add-float/2addr v2, p2

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    sub-float v1, v2, v3

    .line 3514
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-static {v3, v0}, Lcom/samsung/android/glview/GLUtil;->getGLDistanceFromScreenDistanceX(Lcom/samsung/android/glview/GLContext;F)F

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-static {v4, v1}, Lcom/samsung/android/glview/GLUtil;->getGLDistanceFromScreenDistanceY(Lcom/samsung/android/glview/GLContext;F)F

    move-result v4

    invoke-static {v2, v6, v3, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 3516
    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    .line 3518
    invoke-virtual {p0, v6}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 3519
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    .line 3520
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    add-float/2addr v2, p2

    iput v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    goto :goto_0
.end method

.method public final translate(FFF)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    .line 3548
    cmpl-float v2, p1, v5

    if-nez v2, :cond_0

    cmpl-float v2, p2, v5

    if-nez v2, :cond_0

    .line 3571
    :goto_0
    return-void

    .line 3551
    :cond_0
    move v0, p1

    .line 3552
    .local v0, "alignedX":F
    move v1, p2

    .line 3555
    .local v1, "alignedY":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->getAlignToPixel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3556
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    add-float/2addr v2, p1

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    sub-float v0, v2, v3

    .line 3557
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    add-float/2addr v2, p2

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    sub-float v1, v2, v3

    .line 3560
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    invoke-static {v2, v6, v0, v1, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 3561
    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    .line 3563
    cmpl-float v2, p3, v5

    if-eqz v2, :cond_2

    .line 3564
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 3568
    :goto_1
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    .line 3569
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    add-float/2addr v2, p2

    iput v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    .line 3570
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    add-float/2addr v2, p3

    iput v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    goto :goto_0

    .line 3566
    :cond_2
    invoke-virtual {p0, v6}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    goto :goto_1
.end method

.method public final translate(FFFZ)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "update"    # Z

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    .line 3574
    cmpl-float v2, p1, v4

    if-nez v2, :cond_0

    cmpl-float v2, p2, v4

    if-nez v2, :cond_0

    cmpl-float v2, p3, v4

    if-nez v2, :cond_0

    .line 3598
    :goto_0
    return-void

    .line 3577
    :cond_0
    move v0, p1

    .line 3578
    .local v0, "alignedX":F
    move v1, p2

    .line 3581
    .local v1, "alignedY":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->getAlignToPixel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3582
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    add-float/2addr v2, p1

    add-float/2addr v2, v5

    float-to-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    add-float/2addr v3, v5

    float-to-int v3, v3

    int-to-float v3, v3

    sub-float v0, v2, v3

    .line 3583
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    add-float/2addr v2, p2

    add-float/2addr v2, v5

    float-to-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    add-float/2addr v3, v5

    float-to-int v3, v3

    int-to-float v3, v3

    sub-float v1, v2, v3

    .line 3585
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    invoke-static {v2, v6, v0, v1, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 3586
    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    .line 3588
    if-eqz p4, :cond_2

    .line 3589
    cmpl-float v2, p3, v4

    if-eqz v2, :cond_3

    .line 3590
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 3595
    :cond_2
    :goto_1
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    .line 3596
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    add-float/2addr v2, p2

    iput v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    .line 3597
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    add-float/2addr v2, p3

    iput v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    goto :goto_0

    .line 3592
    :cond_3
    invoke-virtual {p0, v6}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    goto :goto_1
.end method

.method public final translate(FFZ)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "update"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    .line 3524
    cmpl-float v2, p1, v5

    if-nez v2, :cond_0

    cmpl-float v2, p2, v5

    if-nez v2, :cond_0

    .line 3545
    :goto_0
    return-void

    .line 3527
    :cond_0
    move v0, p1

    .line 3528
    .local v0, "alignedX":F
    move v1, p2

    .line 3531
    .local v1, "alignedY":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->getAlignToPixel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3532
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    add-float/2addr v2, p1

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    sub-float v0, v2, v3

    .line 3533
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    add-float/2addr v2, p2

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    sub-float v1, v2, v3

    .line 3536
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-static {v3, v0}, Lcom/samsung/android/glview/GLUtil;->getGLDistanceFromScreenDistanceX(Lcom/samsung/android/glview/GLContext;F)F

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-static {v4, v1}, Lcom/samsung/android/glview/GLUtil;->getGLDistanceFromScreenDistanceY(Lcom/samsung/android/glview/GLContext;F)F

    move-result v4

    invoke-static {v2, v6, v3, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 3538
    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    .line 3540
    if-eqz p3, :cond_2

    .line 3541
    invoke-virtual {p0, v6}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 3543
    :cond_2
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    .line 3544
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    add-float/2addr v2, p2

    iput v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    goto :goto_0
.end method

.method public final translateAbsolute(FF)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    .line 3601
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    invoke-static {v2, p1}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    invoke-static {v2, p2}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3633
    :goto_0
    return-void

    .line 3604
    :cond_0
    move v0, p1

    .line 3605
    .local v0, "alignedX":F
    move v1, p2

    .line 3608
    .local v1, "alignedY":F
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    invoke-static {v2, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 3609
    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    .line 3612
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->getAlignToPixel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3613
    cmpl-float v2, v0, v5

    if-ltz v2, :cond_2

    .line 3614
    add-float v2, p1, v3

    float-to-int v2, v2

    int-to-float v0, v2

    .line 3618
    :goto_1
    cmpl-float v2, v1, v5

    if-ltz v2, :cond_3

    .line 3619
    add-float v2, p2, v3

    float-to-int v2, v2

    int-to-float v1, v2

    .line 3625
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-static {v3, v0}, Lcom/samsung/android/glview/GLUtil;->getGLDistanceFromScreenDistanceX(Lcom/samsung/android/glview/GLContext;F)F

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-static {v4, v1}, Lcom/samsung/android/glview/GLUtil;->getGLDistanceFromScreenDistanceY(Lcom/samsung/android/glview/GLContext;F)F

    move-result v4

    invoke-static {v2, v6, v3, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 3627
    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    .line 3629
    invoke-virtual {p0, v6}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 3631
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    .line 3632
    iput p2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    goto :goto_0

    .line 3616
    :cond_2
    sub-float v2, p1, v3

    float-to-int v2, v2

    int-to-float v0, v2

    goto :goto_1

    .line 3621
    :cond_3
    sub-float v2, p2, v3

    float-to-int v2, v2

    int-to-float v1, v2

    goto :goto_2
.end method

.method public final translateAbsolute(FFF)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    .line 3672
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    invoke-static {v2, p1}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    invoke-static {v2, p2}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    invoke-static {v2, p3}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3708
    :goto_0
    return-void

    .line 3675
    :cond_0
    move v0, p1

    .line 3676
    .local v0, "alignedX":F
    move v1, p2

    .line 3679
    .local v1, "alignedY":F
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    invoke-static {v2, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 3680
    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    .line 3683
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->getAlignToPixel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3684
    cmpl-float v2, v0, v4

    if-ltz v2, :cond_2

    .line 3685
    add-float v2, p1, v3

    float-to-int v2, v2

    int-to-float v0, v2

    .line 3689
    :goto_1
    cmpl-float v2, v1, v4

    if-ltz v2, :cond_3

    .line 3690
    add-float v2, p2, v3

    float-to-int v2, v2

    int-to-float v1, v2

    .line 3696
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-static {v3, v0}, Lcom/samsung/android/glview/GLUtil;->getGLDistanceFromScreenDistanceX(Lcom/samsung/android/glview/GLContext;F)F

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-static {v4, v1}, Lcom/samsung/android/glview/GLUtil;->getGLDistanceFromScreenDistanceY(Lcom/samsung/android/glview/GLContext;F)F

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    .line 3697
    invoke-static {v5, p3}, Lcom/samsung/android/glview/GLUtil;->getGLDistanceFromScreenDistanceY(Lcom/samsung/android/glview/GLContext;F)F

    move-result v5

    .line 3696
    invoke-static {v2, v6, v3, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 3698
    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    .line 3700
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    invoke-static {v2, p3}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3701
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 3705
    :goto_3
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    .line 3706
    iput p2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    .line 3707
    iput p3, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    goto :goto_0

    .line 3687
    :cond_2
    sub-float v2, p1, v3

    float-to-int v2, v2

    int-to-float v0, v2

    goto :goto_1

    .line 3692
    :cond_3
    sub-float v2, p2, v3

    float-to-int v2, v2

    int-to-float v1, v2

    goto :goto_2

    .line 3703
    :cond_4
    invoke-virtual {p0, v6}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    goto :goto_3
.end method

.method public final translateAbsolute(FFFZ)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "update"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    .line 3711
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    invoke-static {v2, p1}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    invoke-static {v2, p2}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    invoke-static {v2, p3}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3749
    :goto_0
    return-void

    .line 3714
    :cond_0
    move v0, p1

    .line 3715
    .local v0, "alignedX":F
    move v1, p2

    .line 3718
    .local v1, "alignedY":F
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    invoke-static {v2, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 3719
    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    .line 3722
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->getAlignToPixel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3723
    cmpl-float v2, v0, v4

    if-ltz v2, :cond_3

    .line 3724
    add-float v2, p1, v3

    float-to-int v2, v2

    int-to-float v0, v2

    .line 3728
    :goto_1
    cmpl-float v2, v1, v4

    if-ltz v2, :cond_4

    .line 3729
    add-float v2, p2, v3

    float-to-int v2, v2

    int-to-float v1, v2

    .line 3735
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-static {v3, v0}, Lcom/samsung/android/glview/GLUtil;->getGLDistanceFromScreenDistanceX(Lcom/samsung/android/glview/GLContext;F)F

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-static {v4, v1}, Lcom/samsung/android/glview/GLUtil;->getGLDistanceFromScreenDistanceY(Lcom/samsung/android/glview/GLContext;F)F

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    .line 3736
    invoke-static {v5, p3}, Lcom/samsung/android/glview/GLUtil;->getGLDistanceFromScreenDistanceY(Lcom/samsung/android/glview/GLContext;F)F

    move-result v5

    .line 3735
    invoke-static {v2, v6, v3, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 3737
    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    .line 3739
    if-eqz p4, :cond_2

    .line 3740
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    invoke-static {v2, p3}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v2

    if-nez v2, :cond_5

    .line 3741
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 3746
    :cond_2
    :goto_3
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    .line 3747
    iput p2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    .line 3748
    iput p3, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    goto :goto_0

    .line 3726
    :cond_3
    sub-float v2, p1, v3

    float-to-int v2, v2

    int-to-float v0, v2

    goto :goto_1

    .line 3731
    :cond_4
    sub-float v2, p2, v3

    float-to-int v2, v2

    int-to-float v1, v2

    goto :goto_2

    .line 3743
    :cond_5
    invoke-virtual {p0, v6}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    goto :goto_3
.end method

.method public final translateAbsolute(FFZ)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "update"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    .line 3636
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    invoke-static {v2, p1}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    invoke-static {v2, p2}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3669
    :goto_0
    return-void

    .line 3639
    :cond_0
    move v0, p1

    .line 3640
    .local v0, "alignedX":F
    move v1, p2

    .line 3643
    .local v1, "alignedY":F
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    invoke-static {v2, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 3644
    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    .line 3647
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->getAlignToPixel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3648
    cmpl-float v2, v0, v5

    if-ltz v2, :cond_3

    .line 3649
    add-float v2, p1, v3

    float-to-int v2, v2

    int-to-float v0, v2

    .line 3653
    :goto_1
    cmpl-float v2, v1, v5

    if-ltz v2, :cond_4

    .line 3654
    add-float v2, p2, v3

    float-to-int v2, v2

    int-to-float v1, v2

    .line 3660
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-static {v3, v0}, Lcom/samsung/android/glview/GLUtil;->getGLDistanceFromScreenDistanceX(Lcom/samsung/android/glview/GLContext;F)F

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-static {v4, v1}, Lcom/samsung/android/glview/GLUtil;->getGLDistanceFromScreenDistanceY(Lcom/samsung/android/glview/GLContext;F)F

    move-result v4

    invoke-static {v2, v6, v3, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 3662
    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    .line 3664
    if-eqz p3, :cond_2

    .line 3665
    invoke-virtual {p0, v6}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 3667
    :cond_2
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    .line 3668
    iput p2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    goto :goto_0

    .line 3651
    :cond_3
    sub-float v2, p1, v3

    float-to-int v2, v2

    int-to-float v0, v2

    goto :goto_1

    .line 3656
    :cond_4
    sub-float v2, p2, v3

    float-to-int v2, v2

    int-to-float v1, v2

    goto :goto_2
.end method

.method public updateAlpha()V
    .locals 2

    .prologue
    .line 3752
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 3753
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->onAlphaUpdated()V

    .line 3754
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 3755
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->onAlphaUpdated()V

    .line 3757
    :cond_0
    return-void
.end method

.method public updateLayout(Z)V
    .locals 2
    .param p1, "depthUpdated"    # Z

    .prologue
    const/4 v1, 0x1

    .line 3760
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mLayoutUpdated:Z

    .line 3761
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->onLayoutUpdated()V

    .line 3762
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 3763
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->onLayoutUpdated()V

    .line 3765
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_1

    .line 3766
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->onLayoutUpdated()V

    .line 3768
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_2

    .line 3769
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->onLayoutUpdated()V

    .line 3771
    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_3

    .line 3772
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->onDepthUpdated()V

    .line 3774
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 3776
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mRotatable:Z

    if-eqz v0, :cond_4

    .line 3777
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->updateRotationMatrix()V

    .line 3780
    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mScaleChanged:Z

    if-eqz v0, :cond_5

    .line 3781
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->updateScaleMatrix()V

    .line 3783
    :cond_5
    return-void
.end method

.method public final declared-synchronized updateRotationMatrix()V
    .locals 9

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 3786
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 3819
    :goto_0
    monitor-exit p0

    return-void

    .line 3789
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 3791
    const/4 v0, 0x2

    new-array v6, v0, [F

    .line 3792
    .local v6, "currentPivot":[F
    const/4 v0, 0x2

    new-array v8, v0, [F

    .line 3793
    .local v8, "rotationPivot":[F
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mOrientation:I

    iget v1, p0, Lcom/samsung/android/glview/GLView;->mDefaultOrientation:I

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->getLeftTop(I)[F

    move-result-object v7

    .line 3795
    .local v7, "leftTop":[F
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mCenterPivot:Z

    if-eqz v0, :cond_1

    .line 3796
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v2

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    aput v1, v7, v0

    .line 3797
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v2

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    aput v1, v7, v0

    .line 3799
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v1, 0x0

    aget v1, v7, v1

    const/4 v2, 0x1

    aget v2, v7, v2

    invoke-static {v0, v6, v1, v2}, Lcom/samsung/android/glview/GLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/samsung/android/glview/GLContext;[FFF)V

    .line 3801
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, v6, v2

    const/4 v3, 0x1

    aget v3, v6, v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 3802
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mOrientation:I

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mDefaultOrientation:I

    add-int/2addr v2, v3

    rem-int/lit8 v2, v2, 0x4

    neg-int v2, v2

    mul-int/lit8 v2, v2, 0x5a

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getRotateDegree()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 3803
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, v6, v2

    neg-float v2, v2

    const/4 v3, 0x1

    aget v3, v6, v3

    neg-float v3, v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 3818
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3786
    .end local v6    # "currentPivot":[F
    .end local v7    # "leftTop":[F
    .end local v8    # "rotationPivot":[F
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 3805
    .restart local v6    # "currentPivot":[F
    .restart local v7    # "leftTop":[F
    .restart local v8    # "rotationPivot":[F
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_2

    .line 3806
    const/4 v0, 0x0

    aget v1, v7, v0

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v2

    add-float/2addr v1, v2

    aput v1, v7, v0

    .line 3807
    const/4 v0, 0x1

    aget v1, v7, v0

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v2

    add-float/2addr v1, v2

    aput v1, v7, v0

    .line 3810
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v2

    invoke-static {v0, v6, v1, v2}, Lcom/samsung/android/glview/GLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/samsung/android/glview/GLContext;[FFF)V

    .line 3811
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v1, 0x0

    aget v1, v7, v1

    const/4 v2, 0x1

    aget v2, v7, v2

    invoke-static {v0, v8, v1, v2}, Lcom/samsung/android/glview/GLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/samsung/android/glview/GLContext;[FFF)V

    .line 3813
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, v8, v2

    const/4 v3, 0x1

    aget v3, v8, v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 3814
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mOrientation:I

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mDefaultOrientation:I

    add-int/2addr v2, v3

    rem-int/lit8 v2, v2, 0x4

    neg-int v2, v2

    mul-int/lit8 v2, v2, 0x5a

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getRotateDegree()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 3815
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, v6, v2

    neg-float v2, v2

    const/4 v3, 0x1

    aget v3, v6, v3

    neg-float v3, v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public final updateScaleMatrix()V
    .locals 8

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3822
    iput-boolean v6, p0, Lcom/samsung/android/glview/GLView;->mScaleChanged:Z

    .line 3824
    const/4 v1, 0x2

    new-array v0, v1, [F

    .line 3827
    .local v0, "currentPivot":[F
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, v4

    aput v2, v1, v5

    .line 3828
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, v4

    aput v2, v1, v6

    .line 3830
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    aget v2, v2, v5

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    aget v3, v3, v6

    invoke-static {v1, v0, v2, v3}, Lcom/samsung/android/glview/GLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/samsung/android/glview/GLContext;[FFF)V

    .line 3832
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mScaleMatrix:[F

    aget v2, v0, v5

    aget v3, v0, v6

    invoke-static {v1, v5, v2, v3, v7}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 3833
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mScaleMatrix:[F

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mScaleX:F

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mScaleY:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v1, v5, v2, v3, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 3834
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mScaleMatrix:[F

    aget v2, v0, v5

    neg-float v2, v2

    aget v3, v0, v6

    neg-float v3, v3

    invoke-static {v1, v5, v2, v3, v7}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 3836
    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    .line 3837
    return-void
.end method

.method protected updateSize(FF)V
    .locals 4
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 4133
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 4134
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 4136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mSizeSpecified:Z

    .line 4138
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 4139
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLView;->updateSize(FF)V

    .line 4141
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_1

    .line 4142
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLRectangle;->updateSize(FF)V

    .line 4145
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_2

    .line 4146
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLRectangle;->updateSize(FF)V

    .line 4148
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 4149
    return-void
.end method
