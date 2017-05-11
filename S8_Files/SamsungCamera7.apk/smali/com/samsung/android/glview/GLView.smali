.class public abstract Lcom/samsung/android/glview/GLView;
.super Ljava/lang/Object;
.source "GLView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/glview/GLView$TouchListener;,
        Lcom/samsung/android/glview/GLView$OrientationChangeListener;,
        Lcom/samsung/android/glview/GLView$LongClickListener;,
        Lcom/samsung/android/glview/GLView$LoadListener;,
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

.field private mLoadListener:Lcom/samsung/android/glview/GLView$LoadListener;

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

.field protected mTintColor:[F

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

    .line 701
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mInScreen:Z

    .line 232
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mIsClipped:Z

    .line 236
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTransformedScreenCoordinate:[F

    .line 240
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mDefaultOrientation:I

    .line 245
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mRotateDegree:I

    .line 250
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mSizeGiven:Z

    .line 254
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mLayoutUpdated:Z

    .line 262
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mPositionChanged:Z

    .line 266
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mScaleChanged:Z

    .line 270
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    .line 274
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mAlpha:F

    .line 278
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTintColor:[F

    .line 286
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mShaderStep:F

    .line 290
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mShaderParameter:F

    .line 294
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalLeft:F

    .line 298
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalTop:F

    .line 302
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalDepth:F

    .line 306
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    .line 310
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    .line 314
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    .line 318
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mManualClip:Z

    .line 322
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mDragging:Z

    .line 326
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mDrawFirstTime:Z

    .line 330
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mAsyncLoad:Z

    .line 335
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    .line 339
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    .line 343
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    .line 344
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    .line 345
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mAnimationEventListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 346
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    .line 347
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mLongClickListener:Lcom/samsung/android/glview/GLView$LongClickListener;

    .line 355
    iput v6, p0, Lcom/samsung/android/glview/GLView;->mViewId:I

    .line 363
    const-string v1, "NONE"

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mObjectTag:Ljava/lang/String;

    .line 367
    iput v6, p0, Lcom/samsung/android/glview/GLView;->mParentViewId:I

    .line 379
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mLoaded:Z

    .line 383
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mLoading:Z

    .line 387
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mAnimationPending:Z

    .line 391
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationFinished:Z

    .line 395
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mAnimationStarted:Z

    .line 399
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mAnimationStartedEvent:Z

    .line 403
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mHideAfterAnimation:Z

    .line 407
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mUpdateMatrixAfterAnimation:Z

    .line 411
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    .line 415
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mDimmed:Z

    .line 421
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mFocused:Z

    .line 425
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mHoverFocused:Z

    .line 429
    new-array v1, v5, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F

    .line 433
    new-array v1, v5, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    .line 437
    new-array v1, v5, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mScaleMatrix:[F

    .line 445
    new-array v1, v5, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTempMatrix:[F

    .line 449
    new-array v1, v5, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mCombinedMatrix:[F

    .line 453
    new-array v1, v5, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimMatrix:[F

    .line 457
    new-array v1, v5, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimGLMatrix:[F

    .line 461
    new-array v1, v5, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    .line 465
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->glCoordinate:[F

    .line 469
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->glTransformedCoordinate:[F

    .line 473
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTransformation:Landroid/view/animation/Transformation;

    .line 477
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mScaleX:F

    .line 481
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mScaleY:F

    .line 485
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    .line 489
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    .line 490
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    .line 494
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    .line 498
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mContinuousDrawMode:Z

    .line 502
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mOrientation:I

    .line 506
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mLastOrientation:I

    .line 510
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mRotatable:Z

    .line 514
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mCenterPivot:Z

    .line 518
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimation:Z

    .line 519
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 520
    const/16 v1, 0x12c

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimationDuration:I

    .line 524
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mParentHAlign:I

    .line 528
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mParentVAlign:I

    .line 532
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    .line 548
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mBackgroundResId:I

    .line 552
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mOldAlpha:F

    .line 556
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    .line 560
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftBottom:[F

    .line 564
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mRightTop:[F

    .line 568
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mRightBottom:[F

    .line 587
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mClipping:Z

    .line 591
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mForcedClipping:Z

    .line 603
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mDraggable:Z

    .line 607
    new-instance v1, Lcom/samsung/android/glview/GLView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLView$1;-><init>(Lcom/samsung/android/glview/GLView;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->setDragging:Ljava/lang/Runnable;

    .line 623
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mBypassTouch:Z

    .line 627
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mTempOrientation:I

    .line 631
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mInternalFocus:Z

    .line 632
    iput v6, p0, Lcom/samsung/android/glview/GLView;->mNextFocusLeftId:I

    .line 633
    iput v6, p0, Lcom/samsung/android/glview/GLView;->mNextFocusRightId:I

    .line 634
    iput v6, p0, Lcom/samsung/android/glview/GLView;->mNextFocusUpId:I

    .line 635
    iput v6, p0, Lcom/samsung/android/glview/GLView;->mNextFocusDownId:I

    .line 636
    iput v6, p0, Lcom/samsung/android/glview/GLView;->mNextFocusForwardId:I

    .line 637
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    .line 638
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    .line 639
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mLongClickable:Z

    .line 640
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickWhenLongClicked:Z

    .line 641
    const/16 v1, 0x64

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickInterval:I

    .line 645
    new-instance v1, Lcom/samsung/android/glview/GLView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLView$2;-><init>(Lcom/samsung/android/glview/GLView;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->repeatClick:Ljava/lang/Runnable;

    .line 662
    new-instance v1, Lcom/samsung/android/glview/GLView$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLView$3;-><init>(Lcom/samsung/android/glview/GLView;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->setLongClick:Ljava/lang/Runnable;

    .line 678
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mIsTouchCanceled:Z

    .line 682
    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mDragSensitivity:I

    .line 690
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 691
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    aput-object v2, v1, v0

    .line 690
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 702
    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    .line 703
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iput p2, v1, Landroid/graphics/RectF;->left:F

    .line 704
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iput p3, v1, Landroid/graphics/RectF;->top:F

    .line 705
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    .line 707
    iput p2, p0, Lcom/samsung/android/glview/GLView;->mOriginalLeft:F

    .line 708
    iput p3, p0, Lcom/samsung/android/glview/GLView;->mOriginalTop:F

    .line 709
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalDepth:F

    .line 711
    iput p2, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    .line 712
    iput p3, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    .line 713
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    .line 715
    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    .line 716
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->resetTransformMatrix()V

    .line 718
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mSizeSpecified:Z

    .line 719
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mSizeGiven:Z

    .line 721
    invoke-virtual {p0, v3, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 722
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 723
    const/4 v1, 0x2

    invoke-virtual {p0, v1, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 724
    const/4 v1, 0x3

    invoke-virtual {p0, v1, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 726
    iput-object p0, p0, Lcom/samsung/android/glview/GLView;->mThis:Lcom/samsung/android/glview/GLView;

    .line 728
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mViewId:I

    .line 729
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

    .line 739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mInScreen:Z

    .line 232
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mIsClipped:Z

    .line 236
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTransformedScreenCoordinate:[F

    .line 240
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mDefaultOrientation:I

    .line 245
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mRotateDegree:I

    .line 250
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mSizeGiven:Z

    .line 254
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mLayoutUpdated:Z

    .line 262
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mPositionChanged:Z

    .line 266
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mScaleChanged:Z

    .line 270
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    .line 274
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mAlpha:F

    .line 278
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTintColor:[F

    .line 286
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mShaderStep:F

    .line 290
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mShaderParameter:F

    .line 294
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalLeft:F

    .line 298
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalTop:F

    .line 302
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalDepth:F

    .line 306
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    .line 310
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    .line 314
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    .line 318
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mManualClip:Z

    .line 322
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mDragging:Z

    .line 326
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mDrawFirstTime:Z

    .line 330
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mAsyncLoad:Z

    .line 335
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    .line 339
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    .line 343
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    .line 344
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    .line 345
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mAnimationEventListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 346
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    .line 347
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mLongClickListener:Lcom/samsung/android/glview/GLView$LongClickListener;

    .line 355
    iput v6, p0, Lcom/samsung/android/glview/GLView;->mViewId:I

    .line 363
    const-string v1, "NONE"

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mObjectTag:Ljava/lang/String;

    .line 367
    iput v6, p0, Lcom/samsung/android/glview/GLView;->mParentViewId:I

    .line 379
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mLoaded:Z

    .line 383
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mLoading:Z

    .line 387
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mAnimationPending:Z

    .line 391
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationFinished:Z

    .line 395
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mAnimationStarted:Z

    .line 399
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mAnimationStartedEvent:Z

    .line 403
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mHideAfterAnimation:Z

    .line 407
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mUpdateMatrixAfterAnimation:Z

    .line 411
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    .line 415
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mDimmed:Z

    .line 421
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mFocused:Z

    .line 425
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mHoverFocused:Z

    .line 429
    new-array v1, v5, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F

    .line 433
    new-array v1, v5, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    .line 437
    new-array v1, v5, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mScaleMatrix:[F

    .line 445
    new-array v1, v5, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTempMatrix:[F

    .line 449
    new-array v1, v5, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mCombinedMatrix:[F

    .line 453
    new-array v1, v5, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimMatrix:[F

    .line 457
    new-array v1, v5, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimGLMatrix:[F

    .line 461
    new-array v1, v5, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    .line 465
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->glCoordinate:[F

    .line 469
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->glTransformedCoordinate:[F

    .line 473
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTransformation:Landroid/view/animation/Transformation;

    .line 477
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mScaleX:F

    .line 481
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mScaleY:F

    .line 485
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    .line 489
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    .line 490
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    .line 494
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    .line 498
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mContinuousDrawMode:Z

    .line 502
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mOrientation:I

    .line 506
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mLastOrientation:I

    .line 510
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mRotatable:Z

    .line 514
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mCenterPivot:Z

    .line 518
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimation:Z

    .line 519
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 520
    const/16 v1, 0x12c

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimationDuration:I

    .line 524
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mParentHAlign:I

    .line 528
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mParentVAlign:I

    .line 532
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    .line 548
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mBackgroundResId:I

    .line 552
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mOldAlpha:F

    .line 556
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    .line 560
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftBottom:[F

    .line 564
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mRightTop:[F

    .line 568
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mRightBottom:[F

    .line 587
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mClipping:Z

    .line 591
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mForcedClipping:Z

    .line 603
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mDraggable:Z

    .line 607
    new-instance v1, Lcom/samsung/android/glview/GLView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLView$1;-><init>(Lcom/samsung/android/glview/GLView;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->setDragging:Ljava/lang/Runnable;

    .line 623
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mBypassTouch:Z

    .line 627
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mTempOrientation:I

    .line 631
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mInternalFocus:Z

    .line 632
    iput v6, p0, Lcom/samsung/android/glview/GLView;->mNextFocusLeftId:I

    .line 633
    iput v6, p0, Lcom/samsung/android/glview/GLView;->mNextFocusRightId:I

    .line 634
    iput v6, p0, Lcom/samsung/android/glview/GLView;->mNextFocusUpId:I

    .line 635
    iput v6, p0, Lcom/samsung/android/glview/GLView;->mNextFocusDownId:I

    .line 636
    iput v6, p0, Lcom/samsung/android/glview/GLView;->mNextFocusForwardId:I

    .line 637
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    .line 638
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    .line 639
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mLongClickable:Z

    .line 640
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickWhenLongClicked:Z

    .line 641
    const/16 v1, 0x64

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickInterval:I

    .line 645
    new-instance v1, Lcom/samsung/android/glview/GLView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLView$2;-><init>(Lcom/samsung/android/glview/GLView;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->repeatClick:Ljava/lang/Runnable;

    .line 662
    new-instance v1, Lcom/samsung/android/glview/GLView$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLView$3;-><init>(Lcom/samsung/android/glview/GLView;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->setLongClick:Ljava/lang/Runnable;

    .line 678
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mIsTouchCanceled:Z

    .line 682
    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mDragSensitivity:I

    .line 690
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 691
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    aput-object v2, v1, v0

    .line 690
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 740
    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    .line 741
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iput p2, v1, Landroid/graphics/RectF;->left:F

    .line 742
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iput p3, v1, Landroid/graphics/RectF;->top:F

    .line 743
    iput p4, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    .line 745
    iput p2, p0, Lcom/samsung/android/glview/GLView;->mOriginalLeft:F

    .line 746
    iput p3, p0, Lcom/samsung/android/glview/GLView;->mOriginalTop:F

    .line 747
    iput p4, p0, Lcom/samsung/android/glview/GLView;->mOriginalDepth:F

    .line 749
    iput p2, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    .line 750
    iput p3, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    .line 751
    iput p4, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    .line 753
    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    .line 754
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->resetTransformMatrix()V

    .line 756
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mSizeSpecified:Z

    .line 757
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mSizeGiven:Z

    .line 759
    invoke-virtual {p0, v3, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 760
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 761
    const/4 v1, 0x2

    invoke-virtual {p0, v1, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 762
    const/4 v1, 0x3

    invoke-virtual {p0, v1, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 764
    iput-object p0, p0, Lcom/samsung/android/glview/GLView;->mThis:Lcom/samsung/android/glview/GLView;

    .line 766
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mViewId:I

    .line 767
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

    .line 778
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mInScreen:Z

    .line 232
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mIsClipped:Z

    .line 236
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTransformedScreenCoordinate:[F

    .line 240
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mDefaultOrientation:I

    .line 245
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mRotateDegree:I

    .line 250
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mSizeGiven:Z

    .line 254
    iput-boolean v6, p0, Lcom/samsung/android/glview/GLView;->mLayoutUpdated:Z

    .line 262
    iput-boolean v6, p0, Lcom/samsung/android/glview/GLView;->mPositionChanged:Z

    .line 266
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mScaleChanged:Z

    .line 270
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    .line 274
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mAlpha:F

    .line 278
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTintColor:[F

    .line 286
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mShaderStep:F

    .line 290
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mShaderParameter:F

    .line 294
    iput v5, p0, Lcom/samsung/android/glview/GLView;->mOriginalLeft:F

    .line 298
    iput v5, p0, Lcom/samsung/android/glview/GLView;->mOriginalTop:F

    .line 302
    iput v5, p0, Lcom/samsung/android/glview/GLView;->mOriginalDepth:F

    .line 306
    iput v5, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    .line 310
    iput v5, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    .line 314
    iput v5, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    .line 318
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mManualClip:Z

    .line 322
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mDragging:Z

    .line 326
    iput-boolean v6, p0, Lcom/samsung/android/glview/GLView;->mDrawFirstTime:Z

    .line 330
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mAsyncLoad:Z

    .line 335
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    .line 339
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    .line 343
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    .line 344
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    .line 345
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mAnimationEventListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 346
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    .line 347
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mLongClickListener:Lcom/samsung/android/glview/GLView$LongClickListener;

    .line 355
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mViewId:I

    .line 363
    const-string v1, "NONE"

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mObjectTag:Ljava/lang/String;

    .line 367
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mParentViewId:I

    .line 379
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mLoaded:Z

    .line 383
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mLoading:Z

    .line 387
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mAnimationPending:Z

    .line 391
    iput-boolean v6, p0, Lcom/samsung/android/glview/GLView;->mAnimationFinished:Z

    .line 395
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mAnimationStarted:Z

    .line 399
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mAnimationStartedEvent:Z

    .line 403
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mHideAfterAnimation:Z

    .line 407
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mUpdateMatrixAfterAnimation:Z

    .line 411
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    .line 415
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mDimmed:Z

    .line 421
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mFocused:Z

    .line 425
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mHoverFocused:Z

    .line 429
    new-array v1, v3, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F

    .line 433
    new-array v1, v3, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    .line 437
    new-array v1, v3, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mScaleMatrix:[F

    .line 445
    new-array v1, v3, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTempMatrix:[F

    .line 449
    new-array v1, v3, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mCombinedMatrix:[F

    .line 453
    new-array v1, v3, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimMatrix:[F

    .line 457
    new-array v1, v3, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimGLMatrix:[F

    .line 461
    new-array v1, v3, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    .line 465
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->glCoordinate:[F

    .line 469
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->glTransformedCoordinate:[F

    .line 473
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTransformation:Landroid/view/animation/Transformation;

    .line 477
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mScaleX:F

    .line 481
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mScaleY:F

    .line 485
    iput v5, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    .line 489
    iput v5, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    .line 490
    iput v5, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    .line 494
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    .line 498
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mContinuousDrawMode:Z

    .line 502
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mOrientation:I

    .line 506
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mLastOrientation:I

    .line 510
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mRotatable:Z

    .line 514
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mCenterPivot:Z

    .line 518
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimation:Z

    .line 519
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 520
    const/16 v1, 0x12c

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimationDuration:I

    .line 524
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mParentHAlign:I

    .line 528
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mParentVAlign:I

    .line 532
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    .line 548
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mBackgroundResId:I

    .line 552
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mOldAlpha:F

    .line 556
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    .line 560
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftBottom:[F

    .line 564
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mRightTop:[F

    .line 568
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mRightBottom:[F

    .line 587
    iput-boolean v6, p0, Lcom/samsung/android/glview/GLView;->mClipping:Z

    .line 591
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mForcedClipping:Z

    .line 603
    iput-boolean v6, p0, Lcom/samsung/android/glview/GLView;->mDraggable:Z

    .line 607
    new-instance v1, Lcom/samsung/android/glview/GLView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLView$1;-><init>(Lcom/samsung/android/glview/GLView;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->setDragging:Ljava/lang/Runnable;

    .line 623
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mBypassTouch:Z

    .line 627
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mTempOrientation:I

    .line 631
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mInternalFocus:Z

    .line 632
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusLeftId:I

    .line 633
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusRightId:I

    .line 634
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusUpId:I

    .line 635
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusDownId:I

    .line 636
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusForwardId:I

    .line 637
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    .line 638
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    .line 639
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mLongClickable:Z

    .line 640
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickWhenLongClicked:Z

    .line 641
    const/16 v1, 0x64

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickInterval:I

    .line 645
    new-instance v1, Lcom/samsung/android/glview/GLView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLView$2;-><init>(Lcom/samsung/android/glview/GLView;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->repeatClick:Ljava/lang/Runnable;

    .line 662
    new-instance v1, Lcom/samsung/android/glview/GLView$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLView$3;-><init>(Lcom/samsung/android/glview/GLView;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->setLongClick:Ljava/lang/Runnable;

    .line 678
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mIsTouchCanceled:Z

    .line 682
    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mDragSensitivity:I

    .line 690
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 691
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    aput-object v2, v1, v0

    .line 690
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 779
    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    add-float v2, p2, p4

    add-float v3, p3, p5

    invoke-direct {v1, p2, p3, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    .line 780
    iput v5, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    .line 782
    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    .line 783
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->resetTransformMatrix()V

    .line 785
    iput p2, p0, Lcom/samsung/android/glview/GLView;->mOriginalLeft:F

    .line 786
    iput p3, p0, Lcom/samsung/android/glview/GLView;->mOriginalTop:F

    .line 787
    iput v5, p0, Lcom/samsung/android/glview/GLView;->mOriginalDepth:F

    .line 789
    iput p2, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    .line 790
    iput p3, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    .line 791
    iput v5, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    .line 793
    iput-boolean v6, p0, Lcom/samsung/android/glview/GLView;->mSizeSpecified:Z

    .line 794
    iput-boolean v6, p0, Lcom/samsung/android/glview/GLView;->mSizeGiven:Z

    .line 796
    invoke-virtual {p0, v4, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 797
    invoke-virtual {p0, v6, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 798
    const/4 v1, 0x2

    invoke-virtual {p0, v1, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 799
    const/4 v1, 0x3

    invoke-virtual {p0, v1, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 801
    iput-object p0, p0, Lcom/samsung/android/glview/GLView;->mThis:Lcom/samsung/android/glview/GLView;

    .line 802
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mViewId:I

    .line 803
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

    .line 815
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mInScreen:Z

    .line 232
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mIsClipped:Z

    .line 236
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTransformedScreenCoordinate:[F

    .line 240
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mDefaultOrientation:I

    .line 245
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mRotateDegree:I

    .line 250
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mSizeGiven:Z

    .line 254
    iput-boolean v5, p0, Lcom/samsung/android/glview/GLView;->mLayoutUpdated:Z

    .line 262
    iput-boolean v5, p0, Lcom/samsung/android/glview/GLView;->mPositionChanged:Z

    .line 266
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mScaleChanged:Z

    .line 270
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    .line 274
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mAlpha:F

    .line 278
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTintColor:[F

    .line 286
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mShaderStep:F

    .line 290
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mShaderParameter:F

    .line 294
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mOriginalLeft:F

    .line 298
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mOriginalTop:F

    .line 302
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mOriginalDepth:F

    .line 306
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    .line 310
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    .line 314
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    .line 318
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mManualClip:Z

    .line 322
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mDragging:Z

    .line 326
    iput-boolean v5, p0, Lcom/samsung/android/glview/GLView;->mDrawFirstTime:Z

    .line 330
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mAsyncLoad:Z

    .line 335
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    .line 339
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    .line 343
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    .line 344
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    .line 345
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mAnimationEventListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 346
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    .line 347
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mLongClickListener:Lcom/samsung/android/glview/GLView$LongClickListener;

    .line 355
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mViewId:I

    .line 363
    const-string v1, "NONE"

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mObjectTag:Ljava/lang/String;

    .line 367
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mParentViewId:I

    .line 379
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mLoaded:Z

    .line 383
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mLoading:Z

    .line 387
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mAnimationPending:Z

    .line 391
    iput-boolean v5, p0, Lcom/samsung/android/glview/GLView;->mAnimationFinished:Z

    .line 395
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mAnimationStarted:Z

    .line 399
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mAnimationStartedEvent:Z

    .line 403
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mHideAfterAnimation:Z

    .line 407
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mUpdateMatrixAfterAnimation:Z

    .line 411
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    .line 415
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mDimmed:Z

    .line 421
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mFocused:Z

    .line 425
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mHoverFocused:Z

    .line 429
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F

    .line 433
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    .line 437
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mScaleMatrix:[F

    .line 445
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTempMatrix:[F

    .line 449
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mCombinedMatrix:[F

    .line 453
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimMatrix:[F

    .line 457
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimGLMatrix:[F

    .line 461
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    .line 465
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->glCoordinate:[F

    .line 469
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->glTransformedCoordinate:[F

    .line 473
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTransformation:Landroid/view/animation/Transformation;

    .line 477
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mScaleX:F

    .line 481
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mScaleY:F

    .line 485
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    .line 489
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    .line 490
    iput v3, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    .line 494
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    .line 498
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mContinuousDrawMode:Z

    .line 502
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mOrientation:I

    .line 506
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mLastOrientation:I

    .line 510
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mRotatable:Z

    .line 514
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mCenterPivot:Z

    .line 518
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimation:Z

    .line 519
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 520
    const/16 v1, 0x12c

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimationDuration:I

    .line 524
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mParentHAlign:I

    .line 528
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mParentVAlign:I

    .line 532
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    .line 548
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mBackgroundResId:I

    .line 552
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mOldAlpha:F

    .line 556
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    .line 560
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftBottom:[F

    .line 564
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mRightTop:[F

    .line 568
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mRightBottom:[F

    .line 587
    iput-boolean v5, p0, Lcom/samsung/android/glview/GLView;->mClipping:Z

    .line 591
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mForcedClipping:Z

    .line 603
    iput-boolean v5, p0, Lcom/samsung/android/glview/GLView;->mDraggable:Z

    .line 607
    new-instance v1, Lcom/samsung/android/glview/GLView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLView$1;-><init>(Lcom/samsung/android/glview/GLView;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->setDragging:Ljava/lang/Runnable;

    .line 623
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mBypassTouch:Z

    .line 627
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mTempOrientation:I

    .line 631
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mInternalFocus:Z

    .line 632
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusLeftId:I

    .line 633
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusRightId:I

    .line 634
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusUpId:I

    .line 635
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusDownId:I

    .line 636
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusForwardId:I

    .line 637
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    .line 638
    iput-object v2, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    .line 639
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mLongClickable:Z

    .line 640
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickWhenLongClicked:Z

    .line 641
    const/16 v1, 0x64

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickInterval:I

    .line 645
    new-instance v1, Lcom/samsung/android/glview/GLView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLView$2;-><init>(Lcom/samsung/android/glview/GLView;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->repeatClick:Ljava/lang/Runnable;

    .line 662
    new-instance v1, Lcom/samsung/android/glview/GLView$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/glview/GLView$3;-><init>(Lcom/samsung/android/glview/GLView;)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->setLongClick:Ljava/lang/Runnable;

    .line 678
    iput-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mIsTouchCanceled:Z

    .line 682
    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mDragSensitivity:I

    .line 690
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 691
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    aput-object v2, v1, v0

    .line 690
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 816
    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    add-float v2, p2, p4

    add-float v3, p3, p5

    invoke-direct {v1, p2, p3, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    .line 818
    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    .line 819
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->resetTransformMatrix()V

    .line 821
    iput p2, p0, Lcom/samsung/android/glview/GLView;->mOriginalLeft:F

    .line 822
    iput p3, p0, Lcom/samsung/android/glview/GLView;->mOriginalTop:F

    .line 824
    iput p2, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    .line 825
    iput p3, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    .line 827
    iput-boolean v5, p0, Lcom/samsung/android/glview/GLView;->mSizeSpecified:Z

    .line 828
    iput-boolean v5, p0, Lcom/samsung/android/glview/GLView;->mSizeGiven:Z

    .line 830
    iput p6, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    .line 832
    invoke-virtual {p0, v4, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 833
    invoke-virtual {p0, v5, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 834
    const/4 v1, 0x2

    invoke-virtual {p0, v1, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 835
    const/4 v1, 0x3

    invoke-virtual {p0, v1, p2, p3}, Lcom/samsung/android/glview/GLView;->setLeftTop(IFF)V

    .line 837
    iput-object p0, p0, Lcom/samsung/android/glview/GLView;->mThis:Lcom/samsung/android/glview/GLView;

    .line 838
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mViewId:I

    .line 839
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/glview/GLView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDraggable:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/glview/GLView;)F
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 44
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mPreviousDragX:F

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/glview/GLView;)F
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 44
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mPreviousDragY:F

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/glview/GLView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLongClickable:Z

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/glview/GLView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickWhenLongClicked:Z

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/glview/GLView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 44
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickInterval:I

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/glview/GLView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->repeatClick:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/glview/GLView;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private declared-synchronized combineMatrices()V
    .locals 3

    .prologue
    .line 4173
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mTempMatrix:[F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mScaleMatrix:[F

    invoke-static {v0, v1, v2}, Lcom/samsung/android/glview/GLUtil;->multiplyMM([F[F[F)V

    .line 4174
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mCombinedMatrix:[F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mTempMatrix:[F

    invoke-static {v0, v1, v2}, Lcom/samsung/android/glview/GLUtil;->multiplyMM([F[F[F)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4178
    :goto_0
    monitor-exit p0

    return-void

    .line 4173
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 4175
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

    .line 4182
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

    .line 4183
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

    .line 4184
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

    .line 4185
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

    .line 4186
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

    .line 4187
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

    .line 4188
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

    .line 4189
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

    .line 4190
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
    .line 845
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

    .line 850
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 848
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

    .line 849
    :cond_2
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 845
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
    .line 861
    return-void
.end method

.method public addView(Lcom/samsung/android/glview/GLView;)V
    .locals 0
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 858
    return-void
.end method

.method public final bringToFront()V
    .locals 1

    .prologue
    .line 864
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 865
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLView;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 866
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLView;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 868
    :cond_0
    return-void
.end method

.method public final cancelAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 871
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 881
    :goto_0
    return-void

    .line 874
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 875
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 876
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationPending:Z

    .line 877
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLView;->mAnimationFinished:Z

    .line 878
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationStarted:Z

    .line 880
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    goto :goto_0
.end method

.method public declared-synchronized clear()V
    .locals 3

    .prologue
    .line 887
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mRotatable:Z

    .line 888
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F

    .line 889
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    .line 891
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_0

    .line 892
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->clear()V

    .line 893
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    .line 895
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v1, :cond_1

    .line 896
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLRectangle;->clear()V

    .line 897
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    .line 899
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v1, :cond_2

    .line 900
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLRectangle;->clear()V

    .line 901
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    .line 903
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    .line 905
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    if-eqz v1, :cond_3

    .line 906
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    .line 909
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    if-eqz v1, :cond_4

    .line 910
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    .line 913
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    if-eqz v1, :cond_5

    .line 914
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    .line 916
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    if-eqz v1, :cond_7

    .line 917
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_6

    .line 918
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 917
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 919
    :cond_6
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    .line 921
    .end local v0    # "i":I
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_8

    .line 922
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, p0}, Lcom/samsung/android/glview/GLView;->removeView(Lcom/samsung/android/glview/GLView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 924
    :cond_8
    monitor-exit p0

    return-void

    .line 887
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected final clearClip()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3867
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v1

    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glScissor(IIII)V

    .line 3868
    return-void
.end method

.method protected final clip()V
    .locals 6

    .prologue
    .line 3874
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->isParentClippingForced()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3875
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getParentForcedClipRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 3876
    .local v0, "parentForcedRect":Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    .line 3877
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

    .line 3887
    .end local v0    # "parentForcedRect":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return-void

    .line 3880
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mClipping:Z

    if-eqz v1, :cond_2

    .line 3882
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

    .line 3884
    :cond_2
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

    .line 934
    iget-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mManualClip:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    if-nez v4, :cond_1

    .line 935
    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mManualClipRect:Landroid/graphics/Rect;

    float-to-int v4, p1

    float-to-int v5, p2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    .line 956
    :cond_0
    :goto_0
    return v3

    .line 938
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    if-nez v4, :cond_2

    .line 939
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->refreshClipRect()V

    .line 942
    :cond_2
    iget-boolean v4, p0, Lcom/samsung/android/glview/GLView;->mInScreen:Z

    if-eqz v4, :cond_0

    .line 946
    iget v4, p0, Lcom/samsung/android/glview/GLView;->mRotateDegree:I

    if-eqz v4, :cond_3

    .line 947
    const/4 v4, 0x2

    new-array v2, v4, [F

    .line 948
    .local v2, "rotationPivot":[F
    iget v4, p0, Lcom/samsung/android/glview/GLView;->mOrientation:I

    iget v5, p0, Lcom/samsung/android/glview/GLView;->mDefaultOrientation:I

    add-int/2addr v4, v5

    rem-int/lit8 v4, v4, 0x4

    invoke-virtual {p0, v4}, Lcom/samsung/android/glview/GLView;->getLeftTop(I)[F

    move-result-object v0

    .line 950
    .local v0, "leftTop":[F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v5

    add-float/2addr v4, v5

    div-float/2addr v4, v6

    aput v4, v0, v3

    .line 951
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v5

    add-float/2addr v4, v5

    div-float/2addr v4, v6

    aput v4, v0, v7

    .line 952
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    aget v5, v0, v3

    aget v6, v0, v7

    invoke-static {v4, v2, v5, v6}, Lcom/samsung/android/glview/GLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/samsung/android/glview/GLContext;[FFF)V

    .line 953
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

    .line 954
    .local v1, "rotatedPoint":Landroid/graphics/PointF;
    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    float-to-int v4, v4

    iget v5, v1, Landroid/graphics/PointF;->y:F

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    goto :goto_0

    .line 956
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

    .line 967
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mLoaded:Z

    if-nez v1, :cond_1

    .line 968
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->load()Z

    move-result v1

    if-nez v1, :cond_1

    .line 969
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1127
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 974
    :cond_1
    :try_start_1
    iget v1, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    if-eq v1, v4, :cond_0

    .line 978
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mDrawFirstTime:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mRotatable:Z

    if-eqz v1, :cond_2

    .line 979
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLView;->setOrientation(I)V

    .line 982
    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mContinuousDrawMode:Z

    if-eqz v1, :cond_3

    .line 983
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 989
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mCombinedMatrix:[F

    .line 991
    .local v0, "currentMatrix":[F
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_9

    .line 992
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationFinished:Z

    if-nez v1, :cond_6

    .line 993
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 994
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 995
    .local v2, "timeMillis":J
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationPending:Z

    if-eqz v1, :cond_4

    .line 996
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->startAnimation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 967
    .end local v0    # "currentMatrix":[F
    .end local v2    # "timeMillis":J
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1000
    .restart local v0    # "currentMatrix":[F
    .restart local v2    # "timeMillis":J
    :cond_4
    :try_start_2
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationStarted:Z

    if-eqz v1, :cond_5

    .line 1001
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationStarted:Z

    .line 1002
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationStartedEvent:Z

    .line 1003
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->reset()V

    .line 1004
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 1007
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1008
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mAnimMatrix:[F

    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1014
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimMatrix:[F

    invoke-static {v1}, Lcom/samsung/android/glview/GLUtil;->toGLMatrix([F)[F

    .line 1015
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimGLMatrix:[F

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mAnimMatrix:[F

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mCombinedMatrix:[F

    invoke-static {v1, v4, v5}, Lcom/samsung/android/glview/GLUtil;->multiplyMM([F[F[F)V

    .line 1017
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mAlpha:F

    .line 1023
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mAnimGLMatrix:[F

    .line 1044
    .end local v2    # "timeMillis":J
    :cond_6
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationFinished:Z

    if-eqz v1, :cond_8

    .line 1045
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mUpdateMatrixAfterAnimation:Z

    if-eqz v1, :cond_7

    .line 1046
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mUpdateMatrixAfterAnimation:Z

    .line 1047
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 1049
    :cond_7
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mLayoutUpdated:Z

    .line 1050
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->getFillAfter()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1051
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mAnimMatrix:[F

    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1052
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimMatrix:[F

    invoke-static {v1}, Lcom/samsung/android/glview/GLUtil;->toGLMatrix([F)[F

    .line 1053
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimGLMatrix:[F

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mAnimMatrix:[F

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mCombinedMatrix:[F

    invoke-static {v1, v4, v5}, Lcom/samsung/android/glview/GLUtil;->multiplyMM([F[F[F)V

    .line 1054
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mAnimGLMatrix:[F

    .line 1055
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mAlpha:F

    .line 1061
    :cond_8
    :goto_1
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationStartedEvent:Z

    if-eqz v1, :cond_9

    .line 1062
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationStartedEvent:Z

    .line 1063
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationEventListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    if-eqz v1, :cond_9

    .line 1064
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v4, Lcom/samsung/android/glview/GLView$5;

    invoke-direct {v4, p0}, Lcom/samsung/android/glview/GLView$5;-><init>(Lcom/samsung/android/glview/GLView;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1074
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    invoke-static {v1, p1, v0}, Lcom/samsung/android/glview/GLUtil;->multiplyMM([F[F[F)V

    .line 1076
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mLayoutUpdated:Z

    if-eqz v1, :cond_e

    .line 1077
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->refreshClipRect()V

    .line 1078
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mManualClip:Z

    if-eqz v1, :cond_13

    .line 1079
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mManualClipRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLContext;->getScreenGeometry()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 1080
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mClipping:Z

    if-eqz v1, :cond_d

    .line 1081
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mInScreen:Z

    .line 1082
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mIsClipped:Z

    .line 1083
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->onOutOfScreen()V

    goto/16 :goto_0

    .line 1025
    .restart local v2    # "timeMillis":J
    :cond_a
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationFinished:Z

    .line 1026
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mUpdateMatrixAfterAnimation:Z

    .line 1028
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationEventListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    if-eqz v1, :cond_b

    .line 1029
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v4, Lcom/samsung/android/glview/GLView$4;

    invoke-direct {v4, p0}, Lcom/samsung/android/glview/GLView$4;-><init>(Lcom/samsung/android/glview/GLView;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1037
    :cond_b
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mHideAfterAnimation:Z

    if-eqz v1, :cond_6

    .line 1038
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1057
    .end local v2    # "timeMillis":J
    :cond_c
    iget v1, p0, Lcom/samsung/android/glview/GLView;->mOldAlpha:F

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mAlpha:F

    goto :goto_1

    .line 1087
    :cond_d
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mManualClipRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1088
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mIsClipped:Z

    .line 1113
    :goto_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mInScreen:Z

    .line 1116
    :cond_e
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_f

    .line 1117
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/glview/GLView;->draw([FLandroid/graphics/Rect;)V

    .line 1119
    :cond_f
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->onDraw()V

    .line 1120
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mDrawFirstTime:Z

    .line 1121
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mHoverFocused:Z

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v1, :cond_10

    .line 1122
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/glview/GLRectangle;->draw([FLandroid/graphics/Rect;)V

    .line 1124
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

    .line 1125
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/glview/GLRectangle;->draw([FLandroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1089
    :cond_11
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mManualClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, p2}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1090
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mIsClipped:Z

    goto :goto_2

    .line 1092
    :cond_12
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 1093
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mIsClipped:Z

    goto :goto_2

    .line 1096
    :cond_13
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalClipRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLContext;->getScreenGeometry()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 1097
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mClipping:Z

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getRotateDegree()I

    move-result v1

    if-nez v1, :cond_14

    .line 1098
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mInScreen:Z

    .line 1099
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mIsClipped:Z

    .line 1100
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->onOutOfScreen()V

    goto/16 :goto_0

    .line 1104
    :cond_14
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mOriginalClipRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1105
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mIsClipped:Z

    goto/16 :goto_2

    .line 1106
    :cond_15
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, p2}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1107
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mIsClipped:Z

    goto/16 :goto_2

    .line 1109
    :cond_16
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 1110
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
    .line 1130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1131
    .local v1, "s":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 1132
    const-string v2, "| "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1135
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_2

    .line 1136
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1137
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

    .line 1138
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

    .line 1137
    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    :goto_1
    return-void

    .line 1140
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

    .line 1141
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

    .line 1140
    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1144
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1145
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

    .line 1146
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

    .line 1145
    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1148
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

    .line 1154
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->isFocusable()Z

    move-result v7

    if-eqz v7, :cond_0

    if-nez p1, :cond_2

    .line 1155
    :cond_0
    const/4 v5, 0x0

    .line 1203
    :cond_1
    :goto_0
    return-object v5

    .line 1157
    :cond_2
    const/4 v5, 0x0

    .line 1160
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

    .line 1161
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

    .line 1162
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

    .line 1163
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

    .line 1164
    .local v3, "focusedViewCenterY":F
    sub-float v7, v2, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 1165
    .local v4, "horizontalOffset":F
    sub-float v7, v3, v1

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 1167
    .local v6, "verticalOffset":F
    sparse-switch p2, :sswitch_data_0

    .line 1201
    const/4 v5, 0x0

    goto :goto_0

    .line 1170
    :sswitch_0
    cmpl-float v7, v2, v0

    if-lez v7, :cond_1

    .line 1171
    cmpl-float v7, v4, v6

    if-lez v7, :cond_1

    .line 1172
    move-object v5, p0

    goto :goto_0

    .line 1178
    :sswitch_1
    cmpg-float v7, v2, v0

    if-gez v7, :cond_1

    .line 1179
    cmpl-float v7, v4, v6

    if-lez v7, :cond_1

    .line 1180
    move-object v5, p0

    goto :goto_0

    .line 1186
    :sswitch_2
    cmpl-float v7, v3, v1

    if-lez v7, :cond_1

    .line 1187
    cmpg-float v7, v4, v6

    if-gez v7, :cond_1

    .line 1188
    move-object v5, p0

    goto :goto_0

    .line 1194
    :sswitch_3
    cmpg-float v7, v3, v1

    if-gez v7, :cond_1

    .line 1195
    cmpg-float v7, v4, v6

    if-gez v7, :cond_1

    .line 1196
    move-object v5, p0

    goto :goto_0

    .line 1167
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

    .line 1217
    iget v1, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    if-eqz v1, :cond_1

    move-object p0, v0

    .line 1229
    .end local p0    # "this":Lcom/samsung/android/glview/GLView;
    :cond_0
    :goto_0
    return-object p0

    .line 1221
    .restart local p0    # "this":Lcom/samsung/android/glview/GLView;
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mBypassTouch:Z

    if-eqz v1, :cond_2

    move-object p0, v0

    .line 1222
    goto :goto_0

    .line 1225
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/glview/GLView;->contains(FF)Z

    move-result v1

    if-nez v1, :cond_0

    move-object p0, v0

    .line 1229
    goto :goto_0
.end method

.method public findViewById(I)Lcom/samsung/android/glview/GLView;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 1239
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mViewId:I

    if-ne v0, p1, :cond_0

    .line 1242
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
    .line 1252
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mObjectTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1255
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
    .line 1265
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mViewTag:I

    if-ne v0, p1, :cond_0

    .line 1268
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

    .line 1278
    iget v1, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    if-eqz v1, :cond_1

    move-object p0, v0

    .line 1286
    .end local p0    # "this":Lcom/samsung/android/glview/GLView;
    :cond_0
    :goto_0
    return-object p0

    .line 1282
    .restart local p0    # "this":Lcom/samsung/android/glview/GLView;
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mBypassTouch:Z

    if-eqz v1, :cond_0

    move-object p0, v0

    .line 1283
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

    .line 1298
    iget v3, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    if-eqz v3, :cond_0

    move-object p0, v2

    .line 1334
    .end local p0    # "this":Lcom/samsung/android/glview/GLView;
    :goto_0
    return-object p0

    .line 1302
    .restart local p0    # "this":Lcom/samsung/android/glview/GLView;
    :cond_0
    iget-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mBypassTouch:Z

    if-eqz v3, :cond_1

    move-object p0, v2

    .line 1303
    goto :goto_0

    .line 1306
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

    .line 1307
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

    .line 1309
    .local v1, "centerY":F
    packed-switch p1, :pswitch_data_0

    :cond_2
    move-object p0, v2

    .line 1334
    goto :goto_0

    .line 1311
    :pswitch_0
    cmpl-float v3, v0, p2

    if-ltz v3, :cond_2

    cmpl-float v3, v1, p3

    if-ltz v3, :cond_2

    goto :goto_0

    .line 1316
    :pswitch_1
    cmpg-float v3, v0, p2

    if-gtz v3, :cond_2

    cmpg-float v3, v1, p3

    if-gtz v3, :cond_2

    goto :goto_0

    .line 1321
    :pswitch_2
    cmpg-float v3, v0, p2

    if-gtz v3, :cond_2

    cmpl-float v3, v1, p3

    if-ltz v3, :cond_2

    goto :goto_0

    .line 1326
    :pswitch_3
    cmpl-float v3, v0, p2

    if-ltz v3, :cond_2

    cmpg-float v3, v1, p3

    if-gtz v3, :cond_2

    goto :goto_0

    .line 1309
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

    .line 1345
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->isFocusable()Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez p1, :cond_2

    .line 1346
    :cond_0
    const/4 v4, 0x0

    .line 1383
    :cond_1
    :goto_0
    return-object v4

    .line 1348
    :cond_2
    const/4 v4, 0x0

    .line 1350
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

    .line 1351
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

    .line 1352
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

    .line 1353
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

    .line 1355
    .local v3, "focusedViewCenterY":F
    sparse-switch p2, :sswitch_data_0

    .line 1381
    const/4 v4, 0x0

    goto :goto_0

    .line 1358
    :sswitch_0
    cmpg-float v5, v0, v2

    if-gez v5, :cond_1

    invoke-static {v1, v3}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1359
    move-object v4, p0

    goto :goto_0

    .line 1364
    :sswitch_1
    cmpl-float v5, v0, v2

    if-lez v5, :cond_1

    invoke-static {v1, v3}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1365
    move-object v4, p0

    goto :goto_0

    .line 1370
    :sswitch_2
    cmpg-float v5, v1, v3

    if-gez v5, :cond_1

    invoke-static {v0, v2}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1371
    move-object v4, p0

    goto :goto_0

    .line 1376
    :sswitch_3
    cmpl-float v5, v1, v3

    if-lez v5, :cond_1

    invoke-static {v0, v2}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1377
    move-object v4, p0

    goto :goto_0

    .line 1355
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

    .line 1393
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v2, :cond_1

    .line 1394
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mAlpha:F

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLView;->getAlpha()F

    move-result v3

    mul-float/2addr v2, v3

    iget-boolean v3, p0, Lcom/samsung/android/glview/GLView;->mDimmed:Z

    if-eqz v3, :cond_0

    :goto_0
    mul-float/2addr v0, v2

    .line 1397
    :goto_1
    return v0

    :cond_0
    move v0, v1

    .line 1394
    goto :goto_0

    .line 1397
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
    .line 1434
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
    .line 1443
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mSizeSpecified:Z

    if-nez v0, :cond_0

    .line 1444
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->initSize()V

    .line 1446
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    .line 1447
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v1

    add-float/2addr v0, v1

    .line 1449
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
    .line 1453
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mBypassTouch:Z

    return v0
.end method

.method public final getCenterPivot()Z
    .locals 1

    .prologue
    .line 1466
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mCenterPivot:Z

    return v0
.end method

.method public getClickListener()Lcom/samsung/android/glview/GLView$ClickListener;
    .locals 1

    .prologue
    .line 1479
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    return-object v0
.end method

.method public getClipRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1492
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 1493
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->refreshClipRect()V

    .line 1495
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getClipRectArea()Landroid/graphics/RectF;
    .locals 5

    .prologue
    .line 1513
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
    .line 1517
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContentAreaLeft()F

    move-result v0

    .line 1518
    .local v0, "left":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContentAreaTop()F

    move-result v1

    .line 1519
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
    .line 1528
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
    .line 1532
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
    .line 1536
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
    .line 1545
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
    .line 1549
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mContentDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final getContext()Lcom/samsung/android/glview/GLContext;
    .locals 1

    .prologue
    .line 1562
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    return-object v0
.end method

.method public getCurrentArea()Landroid/graphics/RectF;
    .locals 7

    .prologue
    .line 1571
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTranslateX()F

    move-result v4

    .line 1572
    .local v4, "offsetX":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTranslateY()F

    move-result v5

    .line 1573
    .local v5, "offsetY":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v6

    add-float v1, v6, v4

    .line 1574
    .local v1, "currentLeft":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v6

    add-float v3, v6, v5

    .line 1575
    .local v3, "currentTop":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v6

    add-float v2, v1, v6

    .line 1576
    .local v2, "currentRight":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v6

    add-float v0, v3, v6

    .line 1578
    .local v0, "currentBottom":F
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v1, v3, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v6
.end method

.method public getCurrentBottom()F
    .locals 2

    .prologue
    .line 1587
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
    .line 1591
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getCurrentArea()Landroid/graphics/RectF;

    move-result-object v0

    .line 1592
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
    .line 1601
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
    .line 1610
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
    .line 1619
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
    .line 1628
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
    .line 1632
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 1633
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getDepth()F

    move-result v1

    add-float/2addr v0, v1

    .line 1635
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    goto :goto_0
.end method

.method public getDraggable()Z
    .locals 1

    .prologue
    .line 1639
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDraggable:Z

    return v0
.end method

.method public getFocusListener()Lcom/samsung/android/glview/GLView$FocusListener;
    .locals 1

    .prologue
    .line 1647
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    return-object v0
.end method

.method public final getHeight()F
    .locals 2

    .prologue
    .line 1660
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mSizeSpecified:Z

    if-nez v0, :cond_0

    .line 1661
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->initSize()V

    .line 1663
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
    .line 1685
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mViewId:I

    return v0
.end method

.method public getInternalFocus()Z
    .locals 2

    .prologue
    .line 1689
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mInternalFocus:Z

    .line 1690
    .local v0, "result":Z
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_1

    .line 1691
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getInternalFocus()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 1693
    :cond_1
    :goto_0
    return v0

    .line 1691
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInternalFocusParent()Lcom/samsung/android/glview/GLView;
    .locals 1

    .prologue
    .line 1709
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mInternalFocus:Z

    if-eqz v0, :cond_0

    .line 1714
    .end local p0    # "this":Lcom/samsung/android/glview/GLView;
    :goto_0
    return-object p0

    .line 1711
    .restart local p0    # "this":Lcom/samsung/android/glview/GLView;
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    .line 1712
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->getInternalFocusParent()Lcom/samsung/android/glview/GLView;

    move-result-object p0

    goto :goto_0

    .line 1714
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public getLayoutX()F
    .locals 1

    .prologue
    .line 1724
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    return v0
.end method

.method public getLayoutY()F
    .locals 1

    .prologue
    .line 1733
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    return v0
.end method

.method public getLayoutZ()F
    .locals 1

    .prologue
    .line 1742
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    return v0
.end method

.method public final getLeft()F
    .locals 2

    .prologue
    .line 1751
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mPositionChanged:Z

    if-eqz v0, :cond_1

    .line 1752
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 1753
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mLeft:F

    .line 1754
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mTop:F

    .line 1759
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mPositionChanged:Z

    .line 1760
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mLeft:F

    .line 1762
    :goto_1
    return v0

    .line 1756
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mLeft:F

    .line 1757
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mTop:F

    goto :goto_0

    .line 1762
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

    .line 1773
    const/4 v2, 0x3

    if-gt p1, v2, :cond_0

    if-gez p1, :cond_1

    .line 1774
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 1776
    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/glview/GLView;->mCenterPivot:Z

    if-eqz v2, :cond_3

    .line 1777
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v3

    add-float/2addr v2, v3

    div-float v0, v2, v4

    .line 1778
    .local v0, "centerX":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v3

    add-float/2addr v2, v3

    div-float v1, v2, v4

    .line 1780
    .local v1, "centerY":F
    packed-switch p1, :pswitch_data_0

    .line 1808
    .end local v0    # "centerX":F
    .end local v1    # "centerY":F
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    return-object v2

    .line 1782
    .restart local v0    # "centerX":F
    .restart local v1    # "centerY":F
    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v3

    aput v3, v2, v5

    .line 1783
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v3

    aput v3, v2, v6

    goto :goto_0

    .line 1786
    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v3

    div-float/2addr v3, v4

    add-float/2addr v3, v0

    aput v3, v2, v5

    .line 1787
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v3

    div-float/2addr v3, v4

    sub-float v3, v1, v3

    aput v3, v2, v6

    goto :goto_0

    .line 1790
    :pswitch_2
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    aput v3, v2, v5

    .line 1791
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v4

    add-float/2addr v3, v4

    aput v3, v2, v6

    goto :goto_0

    .line 1794
    :pswitch_3
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v3

    div-float/2addr v3, v4

    sub-float v3, v0, v3

    aput v3, v2, v5

    .line 1795
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v3

    div-float/2addr v3, v4

    add-float/2addr v3, v1

    aput v3, v2, v6

    goto :goto_0

    .line 1802
    .end local v0    # "centerX":F
    .end local v1    # "centerY":F
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    if-eqz v2, :cond_2

    .line 1803
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v3, v3, p1

    iget v3, v3, Landroid/graphics/RectF;->left:F

    aput v3, v2, v5

    .line 1804
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v3, v3, p1

    iget v3, v3, Landroid/graphics/RectF;->top:F

    aput v3, v2, v6

    goto :goto_0

    .line 1780
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
    .line 1817
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLoaded:Z

    return v0
.end method

.method public getLongClickListener()Lcom/samsung/android/glview/GLView$LongClickListener;
    .locals 1

    .prologue
    .line 1821
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mLongClickListener:Lcom/samsung/android/glview/GLView$LongClickListener;

    return-object v0
.end method

.method protected getMatrix()[F
    .locals 1

    .prologue
    .line 3895
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    return-object v0
.end method

.method public final getMoveLayoutX()F
    .locals 2

    .prologue
    .line 1830
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 1831
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getMoveLayoutX()F

    move-result v1

    add-float/2addr v0, v1

    .line 1833
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
    .line 1837
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 1838
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getMoveLayoutY()F

    move-result v1

    add-float/2addr v0, v1

    .line 1840
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
    .line 1844
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 1845
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    iget v1, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getMoveLayoutZ()F

    move-result v1

    add-float/2addr v0, v1

    .line 1847
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
    .line 1851
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mNextFocusDownId:I

    return v0
.end method

.method public getNextFocusForwardId()I
    .locals 1

    .prologue
    .line 1864
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mNextFocusForwardId:I

    return v0
.end method

.method public final getNextFocusLeftId()I
    .locals 1

    .prologue
    .line 1877
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mNextFocusLeftId:I

    return v0
.end method

.method public final getNextFocusRightId()I
    .locals 1

    .prologue
    .line 1885
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mNextFocusRightId:I

    return v0
.end method

.method public final getNextFocusUpId()I
    .locals 1

    .prologue
    .line 1893
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mNextFocusUpId:I

    return v0
.end method

.method public final getObjectTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1907
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mObjectTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getOrientation()I
    .locals 2

    .prologue
    .line 1926
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 1927
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mOrientation:I

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getOrientation()I

    move-result v1

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x4

    .line 1930
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mOrientation:I

    goto :goto_0
.end method

.method public getOriginalClipRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1964
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mOriginalClipRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 1965
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->refreshClipRect()V

    .line 1967
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mOriginalClipRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getPaddings()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1976
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getParentForcedClipRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 2000
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-nez v0, :cond_0

    .line 2001
    const/4 v0, 0x0

    .line 2008
    :goto_0
    return-object v0

    .line 2004
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->isClippingForced()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2005
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    .line 2008
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->getParentForcedClipRect()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0
.end method

.method public final getParentHAlign()I
    .locals 1

    .prologue
    .line 2017
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mParentHAlign:I

    return v0
.end method

.method public getParentId()I
    .locals 1

    .prologue
    .line 2034
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mParentViewId:I

    return v0
.end method

.method public final getParentVAlign()I
    .locals 1

    .prologue
    .line 2051
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mParentVAlign:I

    return v0
.end method

.method public getRepeatClickInterval()I
    .locals 1

    .prologue
    .line 2064
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickInterval:I

    return v0
.end method

.method public final getRight()F
    .locals 2

    .prologue
    .line 2077
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mSizeSpecified:Z

    if-nez v0, :cond_0

    .line 2078
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->initSize()V

    .line 2080
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    .line 2081
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v1

    add-float/2addr v0, v1

    .line 2083
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
    .line 2092
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mRotatable:Z

    return v0
.end method

.method public final getRotateAnimation()Z
    .locals 1

    .prologue
    .line 2110
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimation:Z

    return v0
.end method

.method public getRotateDegree()I
    .locals 2

    .prologue
    .line 2123
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 2124
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mRotateDegree:I

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getRotateDegree()I

    move-result v1

    add-int/2addr v0, v1

    .line 2126
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mRotateDegree:I

    goto :goto_0
.end method

.method public getScrollHint()Z
    .locals 1

    .prologue
    .line 2135
    const/4 v0, 0x0

    return v0
.end method

.method public final getSizeGiven()Z
    .locals 1

    .prologue
    .line 2139
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mSizeGiven:Z

    return v0
.end method

.method protected final getSizeSpecified()Z
    .locals 1

    .prologue
    .line 3904
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mSizeSpecified:Z

    return v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2143
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mSubTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getTag()I
    .locals 1

    .prologue
    .line 2156
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mViewTag:I

    return v0
.end method

.method public getTint()I
    .locals 6

    .prologue
    const/high16 v5, 0x437f0000    # 255.0f

    .line 2172
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mTintColor:[F

    const/4 v1, 0x3

    aget v0, v0, v1

    mul-float/2addr v0, v5

    float-to-int v0, v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mTintColor:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    mul-float/2addr v1, v5

    float-to-int v1, v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mTintColor:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mTintColor:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2186
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getTop()F
    .locals 2

    .prologue
    .line 2199
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mPositionChanged:Z

    if-eqz v0, :cond_1

    .line 2200
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 2201
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mLeft:F

    .line 2202
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mTop:F

    .line 2207
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mPositionChanged:Z

    .line 2208
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mTop:F

    .line 2210
    :goto_1
    return v0

    .line 2204
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mLeft:F

    .line 2205
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mTop:F

    goto :goto_0

    .line 2210
    :cond_1
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mTop:F

    goto :goto_1
.end method

.method public final getTranslateX()F
    .locals 2

    .prologue
    .line 2220
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 2221
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getTranslateX()F

    move-result v1

    add-float/2addr v0, v1

    .line 2223
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    goto :goto_0
.end method

.method public final getTranslateY()F
    .locals 2

    .prologue
    .line 2232
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 2233
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getTranslateY()F

    move-result v1

    add-float/2addr v0, v1

    .line 2235
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    goto :goto_0
.end method

.method public final getTranslateZ()F
    .locals 2

    .prologue
    .line 2244
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 2245
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getTranslateZ()F

    move-result v1

    add-float/2addr v0, v1

    .line 2247
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    goto :goto_0
.end method

.method public getTtsString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2258
    .local v1, "ttsString":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mContentDescription:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 2259
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mContentDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2263
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/glview/GLUtil;->isTimeInfo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2265
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/glview/GLUtil;->convertTimeInfoForTTS(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2266
    .local v0, "temp":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2267
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2269
    .end local v0    # "temp":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mSubTitle:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 2270
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2271
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mSubTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2273
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->isDim()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2274
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2275
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/samsung/android/glview/R$string;->disable:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2277
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2260
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mTitle:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2261
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public final getVisibility()I
    .locals 1

    .prologue
    .line 2286
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    return v0
.end method

.method public final getWidth()F
    .locals 2

    .prologue
    .line 2310
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mSizeSpecified:Z

    if-nez v0, :cond_0

    .line 2311
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->initSize()V

    .line 2313
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
    .line 2340
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mAnimationFinished:Z

    return v0
.end method

.method public final isClickable()Z
    .locals 2

    .prologue
    .line 2344
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
    .line 3908
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
    .line 2364
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mForcedClipping:Z

    return v0
.end method

.method public isDim()Z
    .locals 1

    .prologue
    .line 2368
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_2

    .line 2369
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->isDim()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDimmed:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 2371
    :goto_0
    return v0

    .line 2369
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2371
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDimmed:Z

    goto :goto_0
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 2387
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDragging:Z

    return v0
.end method

.method public final isFocusable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2392
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
    .line 2405
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mFocused:Z

    return v0
.end method

.method public isHoverSwipeEvent(I)Z
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 2409
    const/16 v0, 0x41

    if-eq p1, v0, :cond_0

    const/16 v0, 0x52

    if-eq p1, v0, :cond_0

    const/16 v0, 0x31

    if-eq p1, v0, :cond_0

    const/16 v0, 0x62

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInScreen()Z
    .locals 1

    .prologue
    .line 2413
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mInScreen:Z

    return v0
.end method

.method public isLongClickable()Z
    .locals 1

    .prologue
    .line 2417
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLongClickable:Z

    return v0
.end method

.method public isParentClippingForced()Z
    .locals 1

    .prologue
    .line 2430
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-nez v0, :cond_0

    .line 2431
    const/4 v0, 0x0

    .line 2438
    :goto_0
    return v0

    .line 2434
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->isClippingForced()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2435
    const/4 v0, 0x1

    goto :goto_0

    .line 2438
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->isParentClippingForced()Z

    move-result v0

    goto :goto_0
.end method

.method public isParentRotatable()Z
    .locals 1

    .prologue
    .line 2442
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    .line 2443
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->getRotatable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2444
    const/4 v0, 0x1

    .line 2449
    :goto_0
    return v0

    .line 2446
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->isParentRotatable()Z

    move-result v0

    goto :goto_0

    .line 2449
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRepeatClickWhenLongClicked()Z
    .locals 1

    .prologue
    .line 2453
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickWhenLongClicked:Z

    return v0
.end method

.method public final isVisible()I
    .locals 1

    .prologue
    .line 2464
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    .line 2465
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->isVisible()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    .line 2467
    :goto_0
    return v0

    .line 2465
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 2467
    :cond_1
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    goto :goto_0
.end method

.method public keyDownEvent(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2471
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    if-eqz v0, :cond_0

    .line 2472
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    invoke-interface {v0, p0, p2}, Lcom/samsung/android/glview/GLView$KeyListener;->onKeyDown(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2473
    const/4 v0, 0x1

    .line 2475
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
    .line 2479
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    if-eqz v0, :cond_0

    .line 2480
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    invoke-interface {v0, p0, p2}, Lcom/samsung/android/glview/GLView$KeyListener;->onKeyUp(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2481
    const/4 v0, 0x1

    .line 2483
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/glview/GLView;->onKeyUpEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final declared-synchronized load()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2492
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/samsung/android/glview/GLView;->mLoading:Z

    if-eqz v2, :cond_2

    .line 2493
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLoaded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2494
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mLoaded:Z

    .line 2495
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mLoading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2516
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    move v0, v1

    .line 2498
    goto :goto_0

    .line 2501
    :cond_2
    :try_start_1
    iget-boolean v2, p0, Lcom/samsung/android/glview/GLView;->mLoaded:Z

    if-nez v2, :cond_0

    .line 2504
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->onLoad()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2505
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLoaded:Z

    .line 2506
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLoading:Z

    .line 2507
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mLoadListener:Lcom/samsung/android/glview/GLView$LoadListener;

    if-eqz v0, :cond_3

    .line 2508
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mLoadListener:Lcom/samsung/android/glview/GLView$LoadListener;

    invoke-interface {v0}, Lcom/samsung/android/glview/GLView$LoadListener;->onLoaded()V

    .line 2510
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_4

    .line 2511
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->load()Z

    .line 2516
    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLoaded:Z

    goto :goto_0

    .line 2513
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLoading:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 2514
    goto :goto_0

    .line 2492
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected mClipRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 3915
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

    .line 2535
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->glCoordinate:[F

    aput p2, v0, v1

    .line 2536
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->glCoordinate:[F

    aput p3, v0, v6

    .line 2537
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->glCoordinate:[F

    aput v2, v0, v3

    .line 2538
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->glTransformedCoordinate:[F

    aput v2, v0, v3

    .line 2539
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->glTransformedCoordinate:[F

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->glCoordinate:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 2541
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->glTransformedCoordinate:[F

    aget v0, v0, v1

    aput v0, p1, v1

    .line 2542
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->glTransformedCoordinate:[F

    aget v0, v0, v6

    aput v0, p1, v6

    .line 2543
    return-void
.end method

.method protected final mapPointReverse([FFF)V
    .locals 11
    .param p1, "transformedScreenCoordinate"    # [F
    .param p2, "screenX"    # F
    .param p3, "screenY"    # F

    .prologue
    .line 3926
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getOrientation()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mDefaultOrientation:I

    add-int/2addr v2, v3

    rem-int/lit8 v10, v2, 0x4

    .line 3927
    .local v10, "orientation":I
    if-nez v10, :cond_0

    .line 3928
    const/4 v2, 0x0

    aput p2, p1, v2

    .line 3929
    const/4 v2, 0x1

    aput p3, p1, v2

    .line 3969
    :goto_0
    return-void

    .line 3933
    :cond_0
    const/16 v2, 0x10

    new-array v0, v2, [F

    .line 3937
    .local v0, "coordinateTransformMatrix":[F
    invoke-virtual {p0, v10}, Lcom/samsung/android/glview/GLView;->getLeftTop(I)[F

    move-result-object v9

    .line 3938
    .local v9, "leftTop":[F
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v2, :cond_1

    .line 3939
    const/4 v2, 0x0

    aget v3, v9, v2

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v4

    add-float/2addr v3, v4

    aput v3, v9, v2

    .line 3940
    const/4 v2, 0x1

    aget v3, v9, v2

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v4

    add-float/2addr v3, v4

    aput v3, v9, v2

    .line 3943
    :cond_1
    const/4 v2, 0x4

    new-array v7, v2, [F

    .line 3944
    .local v7, "glLeftTopCoordinate":[F
    const/4 v2, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v7, v2

    .line 3945
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v4

    invoke-static {v2, v7, v3, v4}, Lcom/samsung/android/glview/GLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/samsung/android/glview/GLContext;[FFF)V

    .line 3947
    const/4 v2, 0x4

    new-array v8, v2, [F

    .line 3948
    .local v8, "glRotatedLeftTopCoordinate":[F
    const/4 v2, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v8, v2

    .line 3949
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v3, 0x0

    aget v3, v9, v3

    const/4 v4, 0x1

    aget v4, v9, v4

    invoke-static {v2, v8, v3, v4}, Lcom/samsung/android/glview/GLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/samsung/android/glview/GLContext;[FFF)V

    .line 3951
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 3952
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v7, v3

    const/4 v4, 0x1

    aget v4, v7, v4

    const/4 v6, 0x0

    invoke-static {v0, v2, v3, v4, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 3953
    const/4 v1, 0x0

    mul-int/lit8 v2, v10, 0x5a

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 3954
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v8, v3

    neg-float v3, v3

    const/4 v4, 0x1

    aget v4, v8, v4

    neg-float v4, v4

    const/4 v6, 0x0

    invoke-static {v0, v2, v3, v4, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 3959
    const/4 v2, 0x4

    new-array v5, v2, [F

    .line 3960
    .local v5, "glCoordinate":[F
    const/4 v2, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v5, v2

    .line 3961
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-static {v2, v5, p2, p3}, Lcom/samsung/android/glview/GLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/samsung/android/glview/GLContext;[FFF)V

    .line 3963
    const/4 v2, 0x4

    new-array v1, v2, [F

    .line 3964
    .local v1, "glTransformedCoordinate":[F
    const/4 v2, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    .line 3965
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 3967
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
    .line 2546
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    .line 2547
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    .line 2554
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 2555
    return-void
.end method

.method public final moveBaseDepthLayout(FZ)V
    .locals 1
    .param p1, "z"    # F
    .param p2, "update"    # Z

    .prologue
    .line 2558
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    .line 2559
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    .line 2566
    if-eqz p2, :cond_0

    .line 2567
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 2569
    :cond_0
    return-void
.end method

.method public final moveBaseDepthLayoutAbsolute(F)V
    .locals 2
    .param p1, "z"    # F

    .prologue
    .line 2572
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getMoveLayoutZ()F

    move-result v0

    .line 2574
    .local v0, "moveZ":F
    iget v1, p0, Lcom/samsung/android/glview/GLView;->mOriginalDepth:F

    add-float/2addr v1, p1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    .line 2575
    iget v1, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    .line 2582
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 2583
    return-void
.end method

.method public final moveBaseDepthLayoutAbsolute(FZ)V
    .locals 2
    .param p1, "z"    # F
    .param p2, "update"    # Z

    .prologue
    .line 2586
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getMoveLayoutZ()F

    move-result v0

    .line 2588
    .local v0, "moveZ":F
    iget v1, p0, Lcom/samsung/android/glview/GLView;->mOriginalDepth:F

    add-float/2addr v1, p1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    .line 2589
    iget v1, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    .line 2596
    if-eqz p2, :cond_0

    .line 2597
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 2599
    :cond_0
    return-void
.end method

.method public final moveBaseLayout(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 2602
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v1

    .line 2603
    .local v1, "width":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v0

    .line 2605
    .local v0, "height":F
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    .line 2606
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    add-float/2addr v2, p2

    iput v2, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    .line 2608
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, p1

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 2609
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 2610
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 2611
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 2613
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 2614
    return-void
.end method

.method public final moveBaseLayoutAbsolute(FF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 2617
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v3

    .line 2618
    .local v3, "width":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v0

    .line 2619
    .local v0, "height":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getMoveLayoutX()F

    move-result v1

    .line 2620
    .local v1, "moveX":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getMoveLayoutY()F

    move-result v2

    .line 2622
    .local v2, "moveY":F
    iget v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalLeft:F

    add-float/2addr v4, p1

    iput v4, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    .line 2623
    iget v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalTop:F

    add-float/2addr v4, p2

    iput v4, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    .line 2625
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v5, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    add-float/2addr v5, v1

    iput v5, v4, Landroid/graphics/RectF;->left:F

    .line 2626
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v5, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    add-float/2addr v5, v2

    iput v5, v4, Landroid/graphics/RectF;->top:F

    .line 2627
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v3

    iput v5, v4, Landroid/graphics/RectF;->right:F

    .line 2628
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v0

    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    .line 2630
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 2631
    return-void
.end method

.method public final moveBaseLayoutAbsolute(FFZ)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "update"    # Z

    .prologue
    .line 2634
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v3

    .line 2635
    .local v3, "width":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v0

    .line 2636
    .local v0, "height":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getMoveLayoutX()F

    move-result v1

    .line 2637
    .local v1, "moveX":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getMoveLayoutY()F

    move-result v2

    .line 2639
    .local v2, "moveY":F
    iget v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalLeft:F

    add-float/2addr v4, p1

    iput v4, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    .line 2640
    iget v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalTop:F

    add-float/2addr v4, p2

    iput v4, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    .line 2642
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v5, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    add-float/2addr v5, v1

    iput v5, v4, Landroid/graphics/RectF;->left:F

    .line 2643
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v5, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    add-float/2addr v5, v2

    iput v5, v4, Landroid/graphics/RectF;->top:F

    .line 2644
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v3

    iput v5, v4, Landroid/graphics/RectF;->right:F

    .line 2645
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v0

    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    .line 2647
    if-eqz p3, :cond_0

    .line 2648
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 2650
    :cond_0
    return-void
.end method

.method public moveDepthLayout(F)V
    .locals 1
    .param p1, "z"    # F

    .prologue
    .line 2653
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    .line 2657
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 2658
    return-void
.end method

.method public moveDepthLayoutAbsolute(F)V
    .locals 1
    .param p1, "z"    # F

    .prologue
    .line 2661
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    .line 2668
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 2669
    return-void
.end method

.method public moveLayout(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 2678
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 2679
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 2680
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 2681
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, p2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 2683
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 2684
    return-void
.end method

.method public final moveLayoutAbsolute(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 2693
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v1

    .line 2694
    .local v1, "width":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v0

    .line 2696
    .local v0, "height":F
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    add-float/2addr v3, p1

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 2697
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 2698
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 2699
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 2701
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 2702
    return-void
.end method

.method public final moveLayoutAbsolute(FFZ)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "update"    # Z

    .prologue
    .line 2705
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v1

    .line 2706
    .local v1, "width":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v0

    .line 2708
    .local v0, "height":F
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    add-float/2addr v3, p1

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 2709
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 2710
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 2711
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 2713
    if-eqz p3, :cond_0

    .line 2714
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 2716
    :cond_0
    return-void
.end method

.method protected onAlphaUpdated()V
    .locals 0

    .prologue
    .line 3973
    return-void
.end method

.method protected onDepthUpdated()V
    .locals 0

    .prologue
    .line 3977
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

    .line 2719
    if-ne p1, v8, :cond_2

    .line 2720
    iput-boolean v8, p0, Lcom/samsung/android/glview/GLView;->mFocused:Z

    .line 2721
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-nez v0, :cond_0

    .line 2722
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

    .line 2723
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

    .line 2724
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v8}, Lcom/samsung/android/glview/GLRectangle;->setBypassTouch(Z)V

    .line 2725
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v9}, Lcom/samsung/android/glview/GLRectangle;->setClipping(Z)V

    .line 2726
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    iput-object p0, v0, Lcom/samsung/android/glview/GLRectangle;->mParent:Lcom/samsung/android/glview/GLView;

    .line 2731
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    if-eqz v0, :cond_1

    .line 2732
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/glview/GLView$FocusListener;->onFocusChanged(Lcom/samsung/android/glview/GLView;I)Z

    .line 2734
    :cond_1
    return-void

    .line 2729
    :cond_2
    iput-boolean v9, p0, Lcom/samsung/android/glview/GLView;->mFocused:Z

    goto :goto_0
.end method

.method public onHoverIndicatorColorChanged()V
    .locals 2

    .prologue
    .line 2740
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_0

    .line 2741
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getHoverIndicatorColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setColor(I)V

    .line 2743
    :cond_0
    return-void
.end method

.method public onHoverStatusChanged(I)V
    .locals 10
    .param p1, "hoverStatus"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2746
    if-nez p1, :cond_1

    .line 2747
    iput-boolean v9, p0, Lcom/samsung/android/glview/GLView;->mHoverFocused:Z

    .line 2748
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-nez v0, :cond_0

    .line 2749
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

    .line 2750
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

    .line 2751
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v9}, Lcom/samsung/android/glview/GLRectangle;->setBypassTouch(Z)V

    .line 2752
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v8}, Lcom/samsung/android/glview/GLRectangle;->setClipping(Z)V

    .line 2753
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    iput-object p0, v0, Lcom/samsung/android/glview/GLRectangle;->mParent:Lcom/samsung/android/glview/GLView;

    .line 2758
    :cond_0
    :goto_0
    return-void

    .line 2756
    :cond_1
    iput-boolean v8, p0, Lcom/samsung/android/glview/GLView;->mHoverFocused:Z

    goto :goto_0
.end method

.method public onKeyDownEvent(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2761
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUpEvent(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2765
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayoutUpdated()V
    .locals 1

    .prologue
    .line 3988
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mPositionChanged:Z

    .line 3989
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

    .line 4004
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mRotatable:Z

    if-eqz v1, :cond_4

    .line 4005
    iget v1, p0, Lcom/samsung/android/glview/GLView;->mOrientation:I

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mLastOrientation:I

    .line 4006
    iget v1, p0, Lcom/samsung/android/glview/GLView;->mLastOrientation:I

    if-ne v1, p1, :cond_0

    .line 4042
    :goto_0
    return-void

    .line 4010
    :cond_0
    move v8, p1

    .line 4011
    .local v8, "tempOrientation":I
    if-nez v8, :cond_5

    iget v1, p0, Lcom/samsung/android/glview/GLView;->mLastOrientation:I

    if-ne v1, v2, :cond_5

    .line 4012
    const/4 v8, 0x4

    .line 4017
    :cond_1
    :goto_1
    iget v1, p0, Lcom/samsung/android/glview/GLView;->mLastOrientation:I

    sub-int/2addr v1, v8

    mul-int/lit8 v7, v1, 0x5a

    .line 4018
    .local v7, "degree":I
    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLView;->setOrientation(I)V

    .line 4020
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mDrawFirstTime:Z

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->isVisible()I

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->isAnimationFinished()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4021
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimation:Z

    if-nez v1, :cond_6

    .line 4022
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mTransformation:Landroid/view/animation/Transformation;

    if-eqz v1, :cond_2

    .line 4023
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 4024
    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mHideAfterAnimation:Z

    if-eqz v1, :cond_3

    .line 4025
    invoke-virtual {p0, v4}, Lcom/samsung/android/glview/GLView;->setVisibility(I)V

    .line 4027
    :cond_3
    iget v1, p0, Lcom/samsung/android/glview/GLView;->mAlpha:F

    invoke-static {v1}, Lcom/samsung/android/glview/GLUtil;->getAlphaOnAnimation(F)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 4028
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->startAnimation()V

    .line 4041
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

    .line 4013
    .restart local v8    # "tempOrientation":I
    :cond_5
    if-ne v8, v2, :cond_1

    iget v1, p0, Lcom/samsung/android/glview/GLView;->mLastOrientation:I

    if-nez v1, :cond_1

    .line 4014
    iput v4, p0, Lcom/samsung/android/glview/GLView;->mLastOrientation:I

    goto :goto_1

    .line 4030
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

    .line 4031
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

    .line 4032
    iget v1, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimationDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 4033
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v1, :cond_7

    .line 4034
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4035
    :cond_7
    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 4036
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->startAnimation()V

    goto :goto_2
.end method

.method protected onOutOfScreen()V
    .locals 1

    .prologue
    .line 4045
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mInScreen:Z

    .line 4046
    return-void
.end method

.method protected abstract onReset()V
.end method

.method protected onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 4060
    const/4 v0, 0x0

    return v0
.end method

.method protected onVisibilityChanged(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 4067
    if-eqz p1, :cond_0

    .line 4068
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLongClickable:Z

    if-eqz v0, :cond_0

    .line 4069
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->setLongClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4070
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickWhenLongClicked:Z

    if-eqz v0, :cond_0

    .line 4071
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->repeatClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4075
    :cond_0
    return-void
.end method

.method protected parentClipRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 4083
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 4084
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->mClipRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 4086
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

    .line 4095
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v4

    add-float/2addr v4, v6

    float-to-int v4, v4

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int v1, v4, v5

    .line 4096
    .local v1, "left":I
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v4

    add-float/2addr v4, v6

    float-to-int v4, v4

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int v3, v4, v5

    .line 4097
    .local v3, "top":I
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v4

    add-float/2addr v4, v6

    float-to-int v4, v4

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v2, v4, v5

    .line 4098
    .local v2, "right":I
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v4

    add-float/2addr v4, v6

    float-to-int v4, v4

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v4, v5

    .line 4099
    .local v0, "bottom":I
    invoke-direct {p0, v1, v3, v2, v0}, Lcom/samsung/android/glview/GLView;->transformScreenCoordinates(IIII)V

    .line 4101
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    aget v4, v4, v7

    add-float/2addr v4, v6

    float-to-int v1, v4

    .line 4102
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    aget v4, v4, v8

    add-float/2addr v4, v6

    float-to-int v3, v4

    .line 4103
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mRightBottom:[F

    aget v4, v4, v7

    add-float/2addr v4, v6

    float-to-int v2, v4

    .line 4104
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mRightBottom:[F

    aget v4, v4, v8

    add-float/2addr v4, v6

    float-to-int v0, v4

    .line 4106
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getOrientation()I

    move-result v4

    iget v5, p0, Lcom/samsung/android/glview/GLView;->mDefaultOrientation:I

    add-int/2addr v4, v5

    rem-int/lit8 v4, v4, 0x4

    packed-switch v4, :pswitch_data_0

    .line 4130
    :goto_0
    if-gt v1, v2, :cond_0

    if-gt v3, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getRotateDegree()I

    move-result v4

    if-eqz v4, :cond_1

    .line 4133
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v4

    add-float/2addr v4, v6

    float-to-int v4, v4

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int v1, v4, v5

    .line 4134
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v4

    add-float/2addr v4, v6

    float-to-int v4, v4

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int v3, v4, v5

    .line 4135
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v4

    add-float/2addr v4, v6

    float-to-int v4, v4

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v2, v4, v5

    .line 4136
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v4

    add-float/2addr v4, v6

    float-to-int v4, v4

    iget-object v5, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v4, v5

    .line 4139
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    if-nez v4, :cond_2

    .line 4140
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    .line 4142
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 4143
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalClipRect:Landroid/graphics/Rect;

    if-nez v4, :cond_3

    .line 4144
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalClipRect:Landroid/graphics/Rect;

    .line 4146
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mOriginalClipRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 4147
    return-void

    .line 4108
    :pswitch_0
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mRightTop:[F

    aget v4, v4, v7

    add-float/2addr v4, v6

    float-to-int v1, v4

    .line 4109
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mRightTop:[F

    aget v4, v4, v8

    add-float/2addr v4, v6

    float-to-int v3, v4

    .line 4110
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mLeftBottom:[F

    aget v4, v4, v7

    add-float/2addr v4, v6

    float-to-int v2, v4

    .line 4111
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mLeftBottom:[F

    aget v4, v4, v8

    add-float/2addr v4, v6

    float-to-int v0, v4

    .line 4112
    goto :goto_0

    .line 4114
    :pswitch_1
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mLeftBottom:[F

    aget v4, v4, v7

    add-float/2addr v4, v6

    float-to-int v1, v4

    .line 4115
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mLeftBottom:[F

    aget v4, v4, v8

    add-float/2addr v4, v6

    float-to-int v3, v4

    .line 4116
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mRightTop:[F

    aget v4, v4, v7

    add-float/2addr v4, v6

    float-to-int v2, v4

    .line 4117
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mRightTop:[F

    aget v4, v4, v8

    add-float/2addr v4, v6

    float-to-int v0, v4

    .line 4118
    goto/16 :goto_0

    .line 4120
    :pswitch_2
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mRightBottom:[F

    aget v4, v4, v7

    add-float/2addr v4, v6

    float-to-int v1, v4

    .line 4121
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mRightBottom:[F

    aget v4, v4, v8

    add-float/2addr v4, v6

    float-to-int v3, v4

    .line 4122
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    aget v4, v4, v7

    add-float/2addr v4, v6

    float-to-int v2, v4

    .line 4123
    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    aget v4, v4, v8

    add-float/2addr v4, v6

    float-to-int v0, v4

    .line 4124
    goto/16 :goto_0

    .line 4106
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
    .line 2774
    return-void
.end method

.method public final requestFocus()Z
    .locals 1

    .prologue
    .line 2777
    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->requestFocus(I)Z

    move-result v0

    return v0
.end method

.method public final requestFocus(I)Z
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 2781
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

    .line 2785
    if-nez p2, :cond_1

    .line 2786
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mViewFlags:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_6

    .line 2787
    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLView;->isHoverSwipeEvent(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2788
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2, p0, v6}, Lcom/samsung/android/glview/GLContext;->onHoverChanged(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)V

    :goto_0
    move v2, v3

    .line 2847
    :goto_1
    return v2

    .line 2790
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/samsung/android/glview/GLContext;->onFocusChanged(Lcom/samsung/android/glview/GLView;)V

    goto :goto_0

    .line 2796
    :cond_1
    const/4 v0, 0x0

    .line 2797
    .local v0, "nextViewToFocus":Lcom/samsung/android/glview/GLView;
    move v1, p1

    .line 2800
    .local v1, "revisedDirection":I
    sparse-switch v1, :sswitch_data_0

    .line 2829
    :cond_2
    :goto_2
    if-nez v0, :cond_4

    .line 2830
    invoke-virtual {p2}, Lcom/samsung/android/glview/GLView;->getId()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getId()I

    move-result v5

    if-ne v2, v5, :cond_3

    iget-boolean v2, p0, Lcom/samsung/android/glview/GLView;->mInternalFocus:Z

    if-eqz v2, :cond_3

    move v2, v4

    .line 2831
    goto :goto_1

    .line 2803
    :sswitch_0
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mNextFocusLeftId:I

    if-eq v2, v5, :cond_2

    .line 2804
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    iget v5, p0, Lcom/samsung/android/glview/GLView;->mNextFocusLeftId:I

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLContext;->findViewById(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    goto :goto_2

    .line 2809
    :sswitch_1
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mNextFocusRightId:I

    if-eq v2, v5, :cond_2

    .line 2810
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    iget v5, p0, Lcom/samsung/android/glview/GLView;->mNextFocusRightId:I

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLContext;->findViewById(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    goto :goto_2

    .line 2815
    :sswitch_2
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mNextFocusUpId:I

    if-eq v2, v5, :cond_2

    .line 2816
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    iget v5, p0, Lcom/samsung/android/glview/GLView;->mNextFocusUpId:I

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLContext;->findViewById(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    goto :goto_2

    .line 2821
    :sswitch_3
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mNextFocusDownId:I

    if-eq v2, v5, :cond_2

    .line 2822
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    iget v5, p0, Lcom/samsung/android/glview/GLView;->mNextFocusDownId:I

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLContext;->findViewById(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    goto :goto_2

    .line 2833
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getInternalFocus()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2834
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getInternalFocusParent()Lcom/samsung/android/glview/GLView;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v5, v2, p2, v1}, Lcom/samsung/android/glview/GLContext;->findNextFocusFromView(Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLView;I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    .line 2840
    :cond_4
    :goto_3
    if-eqz v0, :cond_6

    .line 2841
    invoke-virtual {v0, p1, v6}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move v2, v3

    .line 2843
    goto :goto_1

    .line 2836
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

    .line 2847
    goto/16 :goto_1

    .line 2800
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

.method public final declared-synchronized reset()V
    .locals 1

    .prologue
    .line 2854
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLoaded:Z

    .line 2855
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLoading:Z

    .line 2856
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 2857
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->reset()V

    .line 2859
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_1

    .line 2860
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->reset()V

    .line 2862
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_2

    .line 2863
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->reset()V

    .line 2865
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->onReset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2866
    monitor-exit p0

    return-void

    .line 2854
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final resetBaseDepth()V
    .locals 1

    .prologue
    .line 2869
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mOriginalDepth:F

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    .line 2870
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 2871
    return-void
.end method

.method public final resetBaseLayout()V
    .locals 4

    .prologue
    .line 2874
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v1

    .line 2875
    .local v1, "width":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v0

    .line 2877
    .local v0, "height":F
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mOriginalLeft:F

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 2878
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mOriginalTop:F

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 2879
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 2880
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 2882
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 2883
    return-void
.end method

.method public resetClipRect()V
    .locals 1

    .prologue
    .line 2886
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mManualClip:Z

    .line 2887
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->refreshClipRect()V

    .line 2888
    return-void
.end method

.method public final resetDepth()V
    .locals 1

    .prologue
    .line 2891
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mBaseDepth:F

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mZCoordinate:F

    .line 2893
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 2894
    return-void
.end method

.method public resetDrag()V
    .locals 2

    .prologue
    .line 2900
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDragging:Z

    .line 2901
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->setDragging:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2902
    return-void
.end method

.method public final resetLayout()V
    .locals 4

    .prologue
    .line 2908
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v1

    .line 2909
    .local v1, "width":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v0

    .line 2911
    .local v0, "height":F
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mBaseLeft:F

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 2912
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mBaseTop:F

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 2913
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 2914
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 2916
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 2917
    return-void
.end method

.method public resetNextFocusId()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 2923
    iput v0, p0, Lcom/samsung/android/glview/GLView;->mNextFocusDownId:I

    .line 2924
    iput v0, p0, Lcom/samsung/android/glview/GLView;->mNextFocusUpId:I

    .line 2925
    iput v0, p0, Lcom/samsung/android/glview/GLView;->mNextFocusLeftId:I

    .line 2926
    iput v0, p0, Lcom/samsung/android/glview/GLView;->mNextFocusRightId:I

    .line 2927
    return-void
.end method

.method public final resetScale()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2933
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLView;->mScaleChanged:Z

    .line 2935
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mScaleMatrix:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2937
    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    .line 2939
    iput v1, p0, Lcom/samsung/android/glview/GLView;->mScaleX:F

    .line 2940
    iput v1, p0, Lcom/samsung/android/glview/GLView;->mScaleY:F

    .line 2941
    return-void
.end method

.method public final declared-synchronized resetTransformMatrix()V
    .locals 2

    .prologue
    .line 2947
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2955
    :goto_0
    monitor-exit p0

    return-void

    .line 2950
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2951
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2952
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mCombinedMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2953
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mScaleMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2954
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2947
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final resetTranslate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2961
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 2973
    :goto_0
    return-void

    .line 2964
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2966
    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    .line 2968
    iput v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    .line 2969
    iput v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    .line 2970
    iput v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    .line 2972
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    goto :goto_0
.end method

.method public declared-synchronized rotateDegree(I)V
    .locals 1
    .param p1, "degree"    # I

    .prologue
    .line 2981
    monitor-enter p0

    :try_start_0
    rem-int/lit16 v0, p1, 0x168

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mRotateDegree:I

    .line 2982
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2983
    monitor-exit p0

    return-void

    .line 2981
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

    .line 2992
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    if-nez v1, :cond_0

    .line 3008
    :goto_0
    return-void

    .line 2994
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, v7

    aput v2, v1, v4

    .line 2995
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, v7

    aput v2, v1, v5

    .line 2997
    const/4 v1, 0x2

    new-array v0, v1, [F

    .line 2998
    .local v0, "currentPivot":[F
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    aget v2, v2, v4

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    aget v3, v3, v5

    invoke-static {v1, v0, v2, v3}, Lcom/samsung/android/glview/GLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/samsung/android/glview/GLContext;[FFF)V

    .line 3000
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mScaleMatrix:[F

    aget v2, v0, v4

    aget v3, v0, v5

    invoke-static {v1, v4, v2, v3, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 3001
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mScaleMatrix:[F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v4, p1, p2, v2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 3002
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mScaleMatrix:[F

    aget v2, v0, v4

    neg-float v2, v2

    aget v3, v0, v5

    neg-float v3, v3

    invoke-static {v1, v4, v2, v3, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 3004
    iget v1, p0, Lcom/samsung/android/glview/GLView;->mScaleX:F

    mul-float/2addr v1, p1

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mScaleX:F

    .line 3005
    iget v1, p0, Lcom/samsung/android/glview/GLView;->mScaleY:F

    mul-float/2addr v1, p2

    iput v1, p0, Lcom/samsung/android/glview/GLView;->mScaleY:F

    .line 3007
    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    goto :goto_0
.end method

.method public sendAccessibilityEvent(I)V
    .locals 3
    .param p1, "eventType"    # I

    .prologue
    .line 3015
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->isEnableAccessibilityNode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3016
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 3017
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getGLSurfaceView()Landroid/opengl/GLSurfaceView;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mViewId:I

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 3018
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 3019
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 3020
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3021
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3024
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

    .line 3026
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void

    .line 3023
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
    .line 1426
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mAlpha:F

    invoke-static {v0, p1}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1427
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mAlpha:F

    .line 1428
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mOldAlpha:F

    .line 1429
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->updateAlpha()V

    .line 1431
    :cond_0
    return-void
.end method

.method public final setAnimation(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 3034
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/glview/GLView;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 3035
    return-void
.end method

.method public final declared-synchronized setAnimation(Landroid/view/animation/Animation;Z)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;
    .param p2, "hideAfterAnimation"    # Z

    .prologue
    .line 3044
    monitor-enter p0

    :try_start_0
    iput-boolean p2, p0, Lcom/samsung/android/glview/GLView;->mHideAfterAnimation:Z

    .line 3045
    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3046
    monitor-exit p0

    return-void

    .line 3044
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .prologue
    .line 3049
    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mAnimationEventListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    .line 3050
    return-void
.end method

.method public setAsyncLoad(Z)V
    .locals 0
    .param p1, "async"    # Z

    .prologue
    .line 3053
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLView;->mAsyncLoad:Z

    .line 3054
    return-void
.end method

.method public setBackground(I)Z
    .locals 7
    .param p1, "resId"    # I

    .prologue
    const/4 v2, 0x0

    .line 3062
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mBackgroundResId:I

    if-ne v0, p1, :cond_0

    .line 3063
    const/4 v0, 0x0

    .line 3072
    :goto_0
    return v0

    .line 3065
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    .line 3066
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->clear()V

    .line 3067
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    .line 3069
    :cond_1
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mBackgroundResId:I

    .line 3070
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

    .line 3071
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    iput-object p0, v0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    .line 3072
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setBackgroundAlpha(F)Z
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 3081
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    if-nez v0, :cond_0

    .line 3082
    const/4 v0, 0x0

    .line 3085
    :goto_0
    return v0

    .line 3084
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->setAlpha(F)V

    .line 3085
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setBypassTouch(Z)V
    .locals 0
    .param p1, "bypass"    # Z

    .prologue
    .line 1457
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLView;->mBypassTouch:Z

    .line 1458
    return-void
.end method

.method public setCenterPivot(Z)V
    .locals 0
    .param p1, "centerPivot"    # Z

    .prologue
    .line 1475
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLView;->mCenterPivot:Z

    .line 1476
    return-void
.end method

.method public setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/glview/GLView$ClickListener;

    .prologue
    .line 1483
    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;

    .line 1484
    return-void
.end method

.method public setClickable(Z)V
    .locals 2
    .param p1, "clickable"    # Z

    .prologue
    .line 2355
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mViewFlags:I

    and-int/lit16 v1, v0, -0x4001

    if-eqz p1, :cond_0

    const/16 v0, 0x4000

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mViewFlags:I

    .line 2356
    return-void

    .line 2355
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setClipRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "clipRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1504
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mManualClipRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 1505
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLView;->mManualClipRect:Landroid/graphics/Rect;

    .line 1509
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mManualClip:Z

    .line 1510
    return-void

    .line 1507
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mManualClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public setClipping(Z)V
    .locals 1
    .param p1, "clipping"    # Z

    .prologue
    .line 3094
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLView;->mClipping:Z

    .line 3095
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mClipping:Z

    if-eqz v0, :cond_0

    .line 3096
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->refreshClipRect()V

    .line 3098
    :cond_0
    return-void
.end method

.method public setContentDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 1553
    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mContentDescription:Ljava/lang/String;

    .line 1554
    return-void
.end method

.method public final setContinuousDrawMode(Z)V
    .locals 0
    .param p1, "continuousDrawMode"    # Z

    .prologue
    .line 3106
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLView;->mContinuousDrawMode:Z

    .line 3107
    return-void
.end method

.method public final setDefaultOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 3115
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mDefaultOrientation:I

    .line 3116
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->updateRotationMatrix()V

    .line 3117
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 3118
    return-void
.end method

.method public setDim(Z)V
    .locals 2
    .param p1, "dimmed"    # Z

    .prologue
    .line 2380
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDimmed:Z

    if-eq v0, p1, :cond_0

    .line 2381
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLView;->mDimmed:Z

    .line 2382
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 2384
    :cond_0
    return-void
.end method

.method public setDragListener(Lcom/samsung/android/glview/GLView$DragListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/glview/GLView$DragListener;

    .prologue
    .line 3121
    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    .line 3122
    return-void
.end method

.method public setDragSensitivity(I)V
    .locals 1
    .param p1, "sensitivity"    # I

    .prologue
    .line 3130
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 3131
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 3134
    :cond_0
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mDragSensitivity:I

    .line 3135
    return-void
.end method

.method public setDraggable(Z)V
    .locals 0
    .param p1, "draggable"    # Z

    .prologue
    .line 1643
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLView;->mDraggable:Z

    .line 1644
    return-void
.end method

.method public setFocusListener(Lcom/samsung/android/glview/GLView$FocusListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/glview/GLView$FocusListener;

    .prologue
    .line 1651
    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;

    .line 1652
    return-void
.end method

.method public setFocusable(Z)V
    .locals 2
    .param p1, "focusable"    # Z

    .prologue
    .line 2401
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mViewFlags:I

    and-int/lit8 v1, v0, -0x2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mViewFlags:I

    .line 2402
    return-void

    .line 2401
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setForcedClipping(Z)V
    .locals 0
    .param p1, "forced"    # Z

    .prologue
    .line 3143
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLView;->mForcedClipping:Z

    .line 3144
    return-void
.end method

.method public setHeight(F)V
    .locals 3
    .param p1, "height"    # F

    .prologue
    .line 1667
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mSizeSpecified:Z

    if-nez v0, :cond_0

    .line 1682
    :goto_0
    return-void

    .line 1670
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 1671
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    .line 1672
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->setHeight(F)V

    .line 1674
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_2

    .line 1675
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

    .line 1678
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_3

    .line 1679
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

    .line 1681
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    goto :goto_0
.end method

.method public setInternalFocus(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 1705
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLView;->mInternalFocus:Z

    .line 1706
    return-void
.end method

.method public setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/glview/GLView$KeyListener;

    .prologue
    .line 3147
    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    .line 3148
    return-void
.end method

.method public final setLeftTop(IFF)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "left"    # F
    .param p3, "top"    # F

    .prologue
    .line 3158
    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 3159
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 3161
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    if-eqz v0, :cond_2

    .line 3162
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v0, v0, p1

    iput p2, v0, Landroid/graphics/RectF;->left:F

    .line 3163
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v0, v0, p1

    iput p3, v0, Landroid/graphics/RectF;->top:F

    .line 3165
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

    .line 3175
    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 3176
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 3178
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    if-eqz v0, :cond_2

    .line 3179
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v0, v0, p1

    iput p2, v0, Landroid/graphics/RectF;->left:F

    .line 3180
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v0, v0, p1

    iput p3, v0, Landroid/graphics/RectF;->top:F

    .line 3183
    :cond_2
    if-eqz p4, :cond_3

    .line 3184
    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLView;->setRotatable(Z)V

    .line 3185
    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 3187
    :cond_3
    return-void
.end method

.method public final setLeftTop(I[F)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "leftTops"    # [F

    .prologue
    .line 3196
    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 3197
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 3199
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    aget v1, p2, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 3200
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    aget v1, p2, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 3201
    return-void
.end method

.method public setLoadListener(Lcom/samsung/android/glview/GLView$LoadListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/glview/GLView$LoadListener;

    .prologue
    .line 3204
    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mLoadListener:Lcom/samsung/android/glview/GLView$LoadListener;

    .line 3205
    return-void
.end method

.method public setLongClickListener(Lcom/samsung/android/glview/GLView$LongClickListener;)V
    .locals 1
    .param p1, "l"    # Lcom/samsung/android/glview/GLView$LongClickListener;

    .prologue
    .line 1825
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLongClickable:Z

    .line 1826
    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mLongClickListener:Lcom/samsung/android/glview/GLView$LongClickListener;

    .line 1827
    return-void
.end method

.method public setLongClickable(Z)V
    .locals 0
    .param p1, "longClickable"    # Z

    .prologue
    .line 2421
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLView;->mLongClickable:Z

    .line 2422
    return-void
.end method

.method public setNextFocusDownId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 1855
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusDownId:I

    .line 1856
    return-void
.end method

.method public setNextFocusDownView(Lcom/samsung/android/glview/GLView;)Z
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 3208
    if-eqz p1, :cond_0

    .line 3209
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mNextFocusDownId:I

    .line 3210
    const/4 v0, 0x1

    .line 3212
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
    .line 1873
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusForwardId:I

    .line 1874
    return-void
.end method

.method public setNextFocusLeftId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 1881
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusLeftId:I

    .line 1882
    return-void
.end method

.method public setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 3216
    if-eqz p1, :cond_0

    .line 3217
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mNextFocusLeftId:I

    .line 3218
    const/4 v0, 0x1

    .line 3220
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
    .line 1889
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusRightId:I

    .line 1890
    return-void
.end method

.method public setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 3224
    if-eqz p1, :cond_0

    .line 3225
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mNextFocusRightId:I

    .line 3226
    const/4 v0, 0x1

    .line 3228
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
    .line 1897
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mNextFocusUpId:I

    .line 1898
    return-void
.end method

.method public setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 3232
    if-eqz p1, :cond_0

    .line 3233
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mNextFocusUpId:I

    .line 3234
    const/4 v0, 0x1

    .line 3236
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

    .line 3245
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mBackgroundResId:I

    if-ne v0, p1, :cond_0

    .line 3246
    const/4 v0, 0x0

    .line 3256
    :goto_0
    return v0

    .line 3248
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    .line 3249
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->clear()V

    .line 3250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    .line 3252
    :cond_1
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mBackgroundResId:I

    .line 3253
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

    .line 3254
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    iput-object p0, v0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    .line 3255
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->setPaddings(Landroid/graphics/Rect;)V

    .line 3256
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setNinePatchBackground(IF)Z
    .locals 8
    .param p1, "resId"    # I
    .param p2, "alpha"    # F

    .prologue
    const/4 v2, 0x0

    .line 3266
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mBackgroundResId:I

    if-ne v0, p1, :cond_0

    .line 3267
    const/4 v0, 0x0

    .line 3277
    :goto_0
    return v0

    .line 3269
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    .line 3270
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->clear()V

    .line 3271
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    .line 3273
    :cond_1
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mBackgroundResId:I

    .line 3274
    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v5

    move v3, v2

    move v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    .line 3275
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    iput-object p0, v0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    .line 3276
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->setPaddings(Landroid/graphics/Rect;)V

    .line 3277
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final setObjectTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "commandString"    # Ljava/lang/String;

    .prologue
    .line 1917
    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mObjectTag:Ljava/lang/String;

    .line 1918
    return-void
.end method

.method public final declared-synchronized setOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    const/4 v0, 0x1

    .line 1939
    monitor-enter p0

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 1940
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1939
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1943
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 1956
    :goto_0
    monitor-exit p0

    return-void

    .line 1947
    :cond_1
    :try_start_2
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mOrientation:I

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mLastOrientation:I

    .line 1948
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mOrientation:I

    .line 1950
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->updateRotationMatrix()V

    .line 1952
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mOrientationChangeListener:Lcom/samsung/android/glview/GLView$OrientationChangeListener;

    if-eqz v0, :cond_2

    .line 1953
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mOrientationChangeListener:Lcom/samsung/android/glview/GLView$OrientationChangeListener;

    iget v1, p0, Lcom/samsung/android/glview/GLView;->mOrientation:I

    invoke-interface {v0, v1}, Lcom/samsung/android/glview/GLView$OrientationChangeListener;->onOrientationChanged(I)V

    .line 1955
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
    .line 3286
    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mOrientationChangeListener:Lcom/samsung/android/glview/GLView$OrientationChangeListener;

    .line 3287
    return-void
.end method

.method public setPaddings(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "paddings"    # Landroid/graphics/Rect;

    .prologue
    .line 1985
    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mPaddings:Landroid/graphics/Rect;

    .line 1986
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_0

    .line 1987
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

    .line 1989
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_1

    .line 1990
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

    .line 1992
    :cond_1
    return-void
.end method

.method public final setParentHAlign(I)V
    .locals 0
    .param p1, "halign"    # I

    .prologue
    .line 2026
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mParentHAlign:I

    .line 2027
    return-void
.end method

.method public setParentId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 2042
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mParentViewId:I

    .line 2043
    return-void
.end method

.method public final setParentVAlign(I)V
    .locals 0
    .param p1, "valign"    # I

    .prologue
    .line 2060
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mParentVAlign:I

    .line 2061
    return-void
.end method

.method public setRepeatClickInterval(I)V
    .locals 0
    .param p1, "milliSeconds"    # I

    .prologue
    .line 2068
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickInterval:I

    .line 2069
    return-void
.end method

.method public setRepeatClickWhenLongClicked(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 2457
    if-eqz p1, :cond_0

    .line 2458
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLView;->mLongClickable:Z

    .line 2460
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickWhenLongClicked:Z

    .line 2461
    return-void
.end method

.method public setRotatable(Z)V
    .locals 0
    .param p1, "rotatable"    # Z

    .prologue
    .line 2101
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLView;->mRotatable:Z

    .line 2102
    return-void
.end method

.method public setRotateAnimation(Z)V
    .locals 0
    .param p1, "rotateAnimation"    # Z

    .prologue
    .line 2119
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimation:Z

    .line 2120
    return-void
.end method

.method public setRotateAnimationDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 3290
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimationDuration:I

    .line 3291
    return-void
.end method

.method public setRotateAnimationInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 3294
    if-eqz p1, :cond_0

    .line 3295
    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 3296
    :cond_0
    return-void
.end method

.method public setShaderParameter(F)V
    .locals 0
    .param p1, "parameter"    # F

    .prologue
    .line 3304
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mShaderParameter:F

    .line 3305
    return-void
.end method

.method public setShaderProgram(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 3313
    return-void
.end method

.method public setShaderStep(F)V
    .locals 0
    .param p1, "step"    # F

    .prologue
    .line 3321
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mShaderStep:F

    .line 3322
    return-void
.end method

.method public setSize(FF)V
    .locals 4
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    const/4 v2, 0x1

    .line 3331
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 3332
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 3334
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLView;->mSizeSpecified:Z

    .line 3335
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLView;->mSizeGiven:Z

    .line 3337
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 3338
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLView;->setSize(FF)V

    .line 3340
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_1

    .line 3341
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

    .line 3344
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_2

    .line 3345
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

    .line 3348
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 3349
    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 2147
    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mSubTitle:Ljava/lang/String;

    .line 2148
    return-void
.end method

.method public final setTag(I)V
    .locals 0
    .param p1, "viewTag"    # I

    .prologue
    .line 2165
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mViewTag:I

    .line 2166
    return-void
.end method

.method public setTint(I)V
    .locals 4
    .param p1, "color"    # I

    .prologue
    const/high16 v3, 0x437f0000    # 255.0f

    .line 2179
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mTintColor:[F

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 2180
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mTintColor:[F

    const/4 v1, 0x1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 2181
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mTintColor:[F

    const/4 v1, 0x2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 2182
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mTintColor:[F

    const/4 v1, 0x3

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 2183
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 2190
    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mTitle:Ljava/lang/String;

    .line 2191
    return-void
.end method

.method public setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/glview/GLView$TouchListener;

    .prologue
    .line 3357
    iput-object p1, p0, Lcom/samsung/android/glview/GLView;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    .line 3358
    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 2295
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    if-eq v0, p1, :cond_1

    .line 2296
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    .line 2297
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    if-eqz v0, :cond_0

    .line 2298
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 2300
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLView;->onVisibilityChanged(I)V

    .line 2302
    :cond_1
    return-void
.end method

.method public setVisibility(IZ)V
    .locals 2
    .param p1, "visibility"    # I
    .param p2, "update"    # Z

    .prologue
    .line 3361
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    if-ne v0, p1, :cond_0

    .line 3369
    :goto_0
    return-void

    .line 3364
    :cond_0
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mVisibility:I

    .line 3365
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    if-eqz v0, :cond_1

    .line 3366
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 3368
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLView;->onVisibilityChanged(I)V

    goto :goto_0
.end method

.method public setWidth(F)V
    .locals 3
    .param p1, "width"    # F

    .prologue
    .line 2317
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mSizeSpecified:Z

    if-nez v0, :cond_0

    .line 2332
    :goto_0
    return-void

    .line 2320
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 2321
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    .line 2322
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->setWidth(F)V

    .line 2324
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_2

    .line 2325
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

    .line 2328
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_3

    .line 2329
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

    .line 2331
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

    .line 3375
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 3389
    :goto_0
    return-void

    .line 3378
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLoaded:Z

    if-eqz v0, :cond_1

    .line 3379
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 3380
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationPending:Z

    .line 3381
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLView;->mAnimationStarted:Z

    .line 3386
    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationFinished:Z

    .line 3388
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    goto :goto_0

    .line 3383
    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLView;->mAnimationPending:Z

    .line 3384
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mAnimationStarted:Z

    goto :goto_1
.end method

.method public touchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    .line 3399
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mDragSensitivity:I

    packed-switch v0, :pswitch_data_0

    .line 3408
    const/16 v6, 0x1f4

    .line 3412
    .local v6, "dragHoldTime":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    .line 3413
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mIsTouchCanceled:Z

    .line 3414
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mPreviousDragX:F

    .line 3415
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mPreviousDragY:F

    .line 3416
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->resetDrag()V

    .line 3417
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDraggable:Z

    if-eqz v0, :cond_0

    .line 3418
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mTempOrientation:I

    .line 3419
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mDragSensitivity:I

    if-nez v0, :cond_3

    .line 3420
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->setDragging:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3425
    :cond_0
    :goto_1
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLongClickable:Z

    if-eqz v0, :cond_1

    .line 3426
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->setLongClick:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3500
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    if-eqz v0, :cond_14

    .line 3501
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/glview/GLView$TouchListener;->onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3502
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDraggable:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDragging:Z

    if-nez v0, :cond_2

    .line 3503
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->resetDrag()V

    :cond_2
    move v0, v7

    .line 3519
    :goto_3
    return v0

    .line 3401
    .end local v6    # "dragHoldTime":I
    :pswitch_0
    const/4 v6, 0x0

    .line 3402
    .restart local v6    # "dragHoldTime":I
    goto :goto_0

    .line 3404
    .end local v6    # "dragHoldTime":I
    :pswitch_1
    const/16 v6, 0x12c

    .line 3405
    .restart local v6    # "dragHoldTime":I
    goto :goto_0

    .line 3422
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->setDragging:Ljava/lang/Runnable;

    int-to-long v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 3428
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 3429
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDraggable:Z

    if-eqz v0, :cond_a

    .line 3430
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDragging:Z

    if-eqz v0, :cond_8

    .line 3431
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mTempOrientation:I

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getOrientation()I

    move-result v1

    if-eq v0, v1, :cond_6

    .line 3432
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    if-eqz v0, :cond_5

    .line 3433
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/samsung/android/glview/GLView$DragListener;->onDragEnd(Lcom/samsung/android/glview/GLView;FF)V

    .line 3435
    :cond_5
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    .line 3436
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->resetDrag()V

    move v0, v7

    .line 3437
    goto :goto_3

    .line 3439
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    if-eqz v0, :cond_7

    .line 3440
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

    .line 3442
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mPreviousDragX:F

    .line 3443
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mPreviousDragY:F

    .line 3444
    if-eqz v6, :cond_1

    move v0, v7

    .line 3445
    goto :goto_3

    .line 3446
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/glview/GLView;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_9

    .line 3447
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->resetDrag()V

    goto/16 :goto_2

    .line 3449
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mPreviousDragX:F

    .line 3450
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLView;->mPreviousDragY:F

    goto/16 :goto_2

    .line 3452
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/glview/GLView;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3454
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLongClickable:Z

    if-eqz v0, :cond_1

    .line 3455
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->setLongClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3456
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickWhenLongClicked:Z

    if-eqz v0, :cond_1

    .line 3457
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->repeatClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 3461
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v7, :cond_11

    .line 3462
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDraggable:Z

    if-eqz v0, :cond_10

    .line 3463
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDragging:Z

    if-eqz v0, :cond_d

    .line 3464
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    if-eqz v0, :cond_c

    .line 3465
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/samsung/android/glview/GLView$DragListener;->onDragEnd(Lcom/samsung/android/glview/GLView;FF)V

    .line 3467
    :cond_c
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    .line 3469
    :cond_d
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->resetDrag()V

    .line 3475
    :cond_e
    :goto_4
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLongClickable:Z

    if-eqz v0, :cond_f

    .line 3476
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->setLongClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3477
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickWhenLongClicked:Z

    if-eqz v0, :cond_f

    .line 3478
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->repeatClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3481
    :cond_f
    invoke-virtual {p0, v7}, Lcom/samsung/android/glview/GLView;->sendAccessibilityEvent(I)V

    goto/16 :goto_2

    .line 3471
    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/glview/GLView;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_e

    .line 3472
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_4

    .line 3482
    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v8, :cond_1

    .line 3483
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDraggable:Z

    if-eqz v0, :cond_13

    .line 3484
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mDragging:Z

    if-eqz v0, :cond_12

    .line 3485
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    if-eqz v0, :cond_12

    .line 3486
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/samsung/android/glview/GLView$DragListener;->onDragEnd(Lcom/samsung/android/glview/GLView;FF)V

    .line 3489
    :cond_12
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->resetDrag()V

    .line 3491
    :cond_13
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mLongClickable:Z

    if-eqz v0, :cond_1

    .line 3492
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->setLongClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3493
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mRepeatClickWhenLongClicked:Z

    if-eqz v0, :cond_1

    .line 3494
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->repeatClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 3509
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

    .line 3510
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    .line 3513
    :cond_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v8, :cond_17

    .line 3514
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mIsTouchCanceled:Z

    if-eqz v0, :cond_16

    move v0, v7

    .line 3515
    goto/16 :goto_3

    .line 3517
    :cond_16
    iput-boolean v7, p0, Lcom/samsung/android/glview/GLView;->mIsTouchCanceled:Z

    .line 3519
    :cond_17
    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_3

    .line 3399
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

    .line 3529
    cmpl-float v2, p1, v5

    if-nez v2, :cond_0

    cmpl-float v2, p2, v5

    if-nez v2, :cond_0

    .line 3548
    :goto_0
    return-void

    .line 3532
    :cond_0
    move v0, p1

    .line 3533
    .local v0, "alignedX":F
    move v1, p2

    .line 3536
    .local v1, "alignedY":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->getAlignToPixel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3537
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

    .line 3538
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

    .line 3541
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-static {v3, v0}, Lcom/samsung/android/glview/GLUtil;->getGLDistanceFromScreenDistanceX(Lcom/samsung/android/glview/GLContext;F)F

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-static {v4, v1}, Lcom/samsung/android/glview/GLUtil;->getGLDistanceFromScreenDistanceY(Lcom/samsung/android/glview/GLContext;F)F

    move-result v4

    invoke-static {v2, v6, v3, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 3543
    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    .line 3545
    invoke-virtual {p0, v6}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 3546
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    .line 3547
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

    .line 3575
    cmpl-float v2, p1, v5

    if-nez v2, :cond_0

    cmpl-float v2, p2, v5

    if-nez v2, :cond_0

    .line 3598
    :goto_0
    return-void

    .line 3578
    :cond_0
    move v0, p1

    .line 3579
    .local v0, "alignedX":F
    move v1, p2

    .line 3582
    .local v1, "alignedY":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->getAlignToPixel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3583
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

    .line 3584
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

    .line 3587
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    invoke-static {v2, v6, v0, v1, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 3588
    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    .line 3590
    cmpl-float v2, p3, v5

    if-eqz v2, :cond_2

    .line 3591
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 3595
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

    .line 3593
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

    .line 3601
    cmpl-float v2, p1, v4

    if-nez v2, :cond_0

    cmpl-float v2, p2, v4

    if-nez v2, :cond_0

    cmpl-float v2, p3, v4

    if-nez v2, :cond_0

    .line 3625
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
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->getAlignToPixel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3609
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

    .line 3610
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

    .line 3612
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    invoke-static {v2, v6, v0, v1, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 3613
    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    .line 3615
    if-eqz p4, :cond_2

    .line 3616
    cmpl-float v2, p3, v4

    if-eqz v2, :cond_3

    .line 3617
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 3622
    :cond_2
    :goto_1
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    .line 3623
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    add-float/2addr v2, p2

    iput v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    .line 3624
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    add-float/2addr v2, p3

    iput v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    goto :goto_0

    .line 3619
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

    .line 3551
    cmpl-float v2, p1, v5

    if-nez v2, :cond_0

    cmpl-float v2, p2, v5

    if-nez v2, :cond_0

    .line 3572
    :goto_0
    return-void

    .line 3554
    :cond_0
    move v0, p1

    .line 3555
    .local v0, "alignedX":F
    move v1, p2

    .line 3558
    .local v1, "alignedY":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->getAlignToPixel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3559
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

    .line 3560
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

    .line 3563
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-static {v3, v0}, Lcom/samsung/android/glview/GLUtil;->getGLDistanceFromScreenDistanceX(Lcom/samsung/android/glview/GLContext;F)F

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-static {v4, v1}, Lcom/samsung/android/glview/GLUtil;->getGLDistanceFromScreenDistanceY(Lcom/samsung/android/glview/GLContext;F)F

    move-result v4

    invoke-static {v2, v6, v3, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 3565
    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    .line 3567
    if-eqz p3, :cond_2

    .line 3568
    invoke-virtual {p0, v6}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 3570
    :cond_2
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    .line 3571
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

    .line 3628
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    invoke-static {v2, p1}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    invoke-static {v2, p2}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3660
    :goto_0
    return-void

    .line 3631
    :cond_0
    move v0, p1

    .line 3632
    .local v0, "alignedX":F
    move v1, p2

    .line 3635
    .local v1, "alignedY":F
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    invoke-static {v2, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 3636
    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    .line 3639
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->getAlignToPixel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3640
    cmpl-float v2, v0, v5

    if-ltz v2, :cond_2

    .line 3641
    add-float v2, p1, v3

    float-to-int v2, v2

    int-to-float v0, v2

    .line 3645
    :goto_1
    cmpl-float v2, v1, v5

    if-ltz v2, :cond_3

    .line 3646
    add-float v2, p2, v3

    float-to-int v2, v2

    int-to-float v1, v2

    .line 3652
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

    .line 3654
    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    .line 3656
    invoke-virtual {p0, v6}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 3658
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    .line 3659
    iput p2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    goto :goto_0

    .line 3643
    :cond_2
    sub-float v2, p1, v3

    float-to-int v2, v2

    int-to-float v0, v2

    goto :goto_1

    .line 3648
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

    .line 3699
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

    .line 3735
    :goto_0
    return-void

    .line 3702
    :cond_0
    move v0, p1

    .line 3703
    .local v0, "alignedX":F
    move v1, p2

    .line 3706
    .local v1, "alignedY":F
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    invoke-static {v2, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 3707
    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    .line 3710
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->getAlignToPixel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3711
    cmpl-float v2, v0, v4

    if-ltz v2, :cond_2

    .line 3712
    add-float v2, p1, v3

    float-to-int v2, v2

    int-to-float v0, v2

    .line 3716
    :goto_1
    cmpl-float v2, v1, v4

    if-ltz v2, :cond_3

    .line 3717
    add-float v2, p2, v3

    float-to-int v2, v2

    int-to-float v1, v2

    .line 3723
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

    .line 3724
    invoke-static {v5, p3}, Lcom/samsung/android/glview/GLUtil;->getGLDistanceFromScreenDistanceY(Lcom/samsung/android/glview/GLContext;F)F

    move-result v5

    .line 3723
    invoke-static {v2, v6, v3, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 3725
    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    .line 3727
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    invoke-static {v2, p3}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3728
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 3732
    :goto_3
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    .line 3733
    iput p2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    .line 3734
    iput p3, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    goto :goto_0

    .line 3714
    :cond_2
    sub-float v2, p1, v3

    float-to-int v2, v2

    int-to-float v0, v2

    goto :goto_1

    .line 3719
    :cond_3
    sub-float v2, p2, v3

    float-to-int v2, v2

    int-to-float v1, v2

    goto :goto_2

    .line 3730
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

    .line 3738
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

    .line 3776
    :goto_0
    return-void

    .line 3741
    :cond_0
    move v0, p1

    .line 3742
    .local v0, "alignedX":F
    move v1, p2

    .line 3745
    .local v1, "alignedY":F
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    invoke-static {v2, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 3746
    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    .line 3749
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->getAlignToPixel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3750
    cmpl-float v2, v0, v4

    if-ltz v2, :cond_3

    .line 3751
    add-float v2, p1, v3

    float-to-int v2, v2

    int-to-float v0, v2

    .line 3755
    :goto_1
    cmpl-float v2, v1, v4

    if-ltz v2, :cond_4

    .line 3756
    add-float v2, p2, v3

    float-to-int v2, v2

    int-to-float v1, v2

    .line 3762
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

    .line 3763
    invoke-static {v5, p3}, Lcom/samsung/android/glview/GLUtil;->getGLDistanceFromScreenDistanceY(Lcom/samsung/android/glview/GLContext;F)F

    move-result v5

    .line 3762
    invoke-static {v2, v6, v3, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 3764
    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    .line 3766
    if-eqz p4, :cond_2

    .line 3767
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    invoke-static {v2, p3}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v2

    if-nez v2, :cond_5

    .line 3768
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 3773
    :cond_2
    :goto_3
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    .line 3774
    iput p2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    .line 3775
    iput p3, p0, Lcom/samsung/android/glview/GLView;->mTranslateZ:F

    goto :goto_0

    .line 3753
    :cond_3
    sub-float v2, p1, v3

    float-to-int v2, v2

    int-to-float v0, v2

    goto :goto_1

    .line 3758
    :cond_4
    sub-float v2, p2, v3

    float-to-int v2, v2

    int-to-float v1, v2

    goto :goto_2

    .line 3770
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

    .line 3663
    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    invoke-static {v2, p1}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    invoke-static {v2, p2}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3696
    :goto_0
    return-void

    .line 3666
    :cond_0
    move v0, p1

    .line 3667
    .local v0, "alignedX":F
    move v1, p2

    .line 3670
    .local v1, "alignedY":F
    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mTranslationMatrix:[F

    invoke-static {v2, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 3671
    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    .line 3674
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->getAlignToPixel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3675
    cmpl-float v2, v0, v5

    if-ltz v2, :cond_3

    .line 3676
    add-float v2, p1, v3

    float-to-int v2, v2

    int-to-float v0, v2

    .line 3680
    :goto_1
    cmpl-float v2, v1, v5

    if-ltz v2, :cond_4

    .line 3681
    add-float v2, p2, v3

    float-to-int v2, v2

    int-to-float v1, v2

    .line 3687
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

    .line 3689
    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    .line 3691
    if-eqz p3, :cond_2

    .line 3692
    invoke-virtual {p0, v6}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 3694
    :cond_2
    iput p1, p0, Lcom/samsung/android/glview/GLView;->mTranslateX:F

    .line 3695
    iput p2, p0, Lcom/samsung/android/glview/GLView;->mTranslateY:F

    goto :goto_0

    .line 3678
    :cond_3
    sub-float v2, p1, v3

    float-to-int v2, v2

    int-to-float v0, v2

    goto :goto_1

    .line 3683
    :cond_4
    sub-float v2, p2, v3

    float-to-int v2, v2

    int-to-float v1, v2

    goto :goto_2
.end method

.method public updateAlpha()V
    .locals 2

    .prologue
    .line 3779
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 3780
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->onAlphaUpdated()V

    .line 3781
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 3782
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->onAlphaUpdated()V

    .line 3784
    :cond_0
    return-void
.end method

.method public updateLayout(Z)V
    .locals 2
    .param p1, "depthUpdated"    # Z

    .prologue
    const/4 v1, 0x1

    .line 3787
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLView;->mLayoutUpdated:Z

    .line 3788
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->onLayoutUpdated()V

    .line 3789
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 3790
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->onLayoutUpdated()V

    .line 3792
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_1

    .line 3793
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->onLayoutUpdated()V

    .line 3795
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_2

    .line 3796
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->onLayoutUpdated()V

    .line 3798
    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_3

    .line 3799
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->onDepthUpdated()V

    .line 3801
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 3803
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mRotatable:Z

    if-eqz v0, :cond_4

    .line 3804
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->updateRotationMatrix()V

    .line 3807
    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mScaleChanged:Z

    if-eqz v0, :cond_5

    .line 3808
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->updateScaleMatrix()V

    .line 3810
    :cond_5
    return-void
.end method

.method public final declared-synchronized updateRotationMatrix()V
    .locals 9

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 3813
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 3815
    const/4 v0, 0x2

    new-array v6, v0, [F

    .line 3816
    .local v6, "currentPivot":[F
    const/4 v0, 0x2

    new-array v8, v0, [F

    .line 3817
    .local v8, "rotationPivot":[F
    iget v0, p0, Lcom/samsung/android/glview/GLView;->mOrientation:I

    iget v1, p0, Lcom/samsung/android/glview/GLView;->mDefaultOrientation:I

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->getLeftTop(I)[F

    move-result-object v7

    .line 3819
    .local v7, "leftTop":[F
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mCenterPivot:Z

    if-eqz v0, :cond_0

    .line 3820
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v2

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    aput v1, v7, v0

    .line 3821
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v2

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    aput v1, v7, v0

    .line 3823
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v1, 0x0

    aget v1, v7, v1

    const/4 v2, 0x1

    aget v2, v7, v2

    invoke-static {v0, v6, v1, v2}, Lcom/samsung/android/glview/GLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/samsung/android/glview/GLContext;[FFF)V

    .line 3825
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, v6, v2

    const/4 v3, 0x1

    aget v3, v6, v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 3826
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

    .line 3827
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

    .line 3842
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3843
    monitor-exit p0

    return-void

    .line 3829
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    .line 3830
    const/4 v0, 0x0

    aget v1, v7, v0

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v2

    add-float/2addr v1, v2

    aput v1, v7, v0

    .line 3831
    const/4 v0, 0x1

    aget v1, v7, v0

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v2

    add-float/2addr v1, v2

    aput v1, v7, v0

    .line 3834
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v2

    invoke-static {v0, v6, v1, v2}, Lcom/samsung/android/glview/GLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/samsung/android/glview/GLContext;[FFF)V

    .line 3835
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v1, 0x0

    aget v1, v7, v1

    const/4 v2, 0x1

    aget v2, v7, v2

    invoke-static {v0, v8, v1, v2}, Lcom/samsung/android/glview/GLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/samsung/android/glview/GLContext;[FFF)V

    .line 3837
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, v8, v2

    const/4 v3, 0x1

    aget v3, v8, v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 3838
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

    .line 3839
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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3813
    .end local v6    # "currentPivot":[F
    .end local v7    # "leftTop":[F
    .end local v8    # "rotationPivot":[F
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final updateScaleMatrix()V
    .locals 8

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3846
    iput-boolean v6, p0, Lcom/samsung/android/glview/GLView;->mScaleChanged:Z

    .line 3848
    const/4 v1, 0x2

    new-array v0, v1, [F

    .line 3851
    .local v0, "currentPivot":[F
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, v4

    aput v2, v1, v5

    .line 3852
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, v4

    aput v2, v1, v6

    .line 3854
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget-object v2, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    aget v2, v2, v5

    iget-object v3, p0, Lcom/samsung/android/glview/GLView;->mLeftTop:[F

    aget v3, v3, v6

    invoke-static {v1, v0, v2, v3}, Lcom/samsung/android/glview/GLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/samsung/android/glview/GLContext;[FFF)V

    .line 3856
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mScaleMatrix:[F

    aget v2, v0, v5

    aget v3, v0, v6

    invoke-static {v1, v5, v2, v3, v7}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 3857
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mScaleMatrix:[F

    iget v2, p0, Lcom/samsung/android/glview/GLView;->mScaleX:F

    iget v3, p0, Lcom/samsung/android/glview/GLView;->mScaleY:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v1, v5, v2, v3, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 3858
    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mScaleMatrix:[F

    aget v2, v0, v5

    neg-float v2, v2

    aget v3, v0, v6

    neg-float v3, v3

    invoke-static {v1, v5, v2, v3, v7}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 3860
    invoke-direct {p0}, Lcom/samsung/android/glview/GLView;->combineMatrices()V

    .line 3861
    return-void
.end method

.method protected updateSize(FF)V
    .locals 4
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 4150
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 4151
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 4153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLView;->mSizeSpecified:Z

    .line 4155
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 4156
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLView;->updateSize(FF)V

    .line 4158
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mFocusIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_1

    .line 4159
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

    .line 4162
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView;->mHoverIndicator:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_2

    .line 4163
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

    .line 4165
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    .line 4166
    return-void
.end method
