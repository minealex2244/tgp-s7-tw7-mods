.class public Lcom/android/systemui/recents/views/TaskStackView;
.super Landroid/widget/FrameLayout;
.source "TaskStackView.java"

# interfaces
.implements Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;
.implements Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;
.implements Lcom/android/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;
.implements Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;
.implements Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/TaskStackView$-void_onBusEvent_com_android_systemui_recents_events_activity_MultiWindowSettingChangedEvent_event_LambdaImpl0;,
        Lcom/android/systemui/recents/views/TaskStackView$1;,
        Lcom/android/systemui/recents/views/TaskStackView$2;,
        Lcom/android/systemui/recents/views/TaskStackView$3;,
        Lcom/android/systemui/recents/views/TaskStackView$InitialStateAction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;",
        "Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;",
        "Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;",
        "Lcom/android/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;",
        "Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;",
        "Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer",
        "<",
        "Lcom/android/systemui/recents/views/TaskView;",
        "Lcom/android/systemui/recents/model/Task;",
        ">;"
    }
.end annotation


# instance fields
.field private mAnimationHelper:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

.field private mAwaitingFirstLayout:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mAwaitingPrepareAnimation:I

.field private mBlockRelayoutTaskViews:Z

.field private mCurrentTaskTransforms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;"
        }
    .end annotation
.end field

.field private mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/recents/views/AnimationProps;

.field private mDisplayOrientation:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mDisplayRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mDividerSize:I

.field private mDrageStartedScrollP:F

.field private mEnterAnimationComplete:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mFocusedTask:Lcom/android/systemui/recents/model/Task;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "focused_task_"
    .end annotation
.end field

.field private mFreeformWorkspaceBackground:Landroid/graphics/drawable/GradientDrawable;

.field private mFreeformWorkspaceBackgroundAnimator:Landroid/animation/ObjectAnimator;

.field private mFreeformWorkspaceDropTarget:Lcom/android/systemui/recents/views/DropTarget;

.field private mIgnoreTasks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            ">;"
        }
    .end annotation
.end field

.field private mInMeasureLayout:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitialState:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mLastHeight:I

.field private mLastWidth:I

.field mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "layout_"
    .end annotation
.end field

.field private mRequestUpdateClippingListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mResetToInitialStateWhenResized:Z

.field mScreenPinningEnabled:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mStableLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

.field private mStableStackBounds:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mStableWindowRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mStack:Lcom/android/systemui/recents/model/TaskStack;

.field private mStackBounds:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mStackDropTarget:Lcom/android/systemui/recents/views/DropTarget;

.field private mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "scroller_"
    .end annotation
.end field

.field private mStartTimerIndicatorDuration:I

.field private mTaskCornerRadiusPx:I

.field private mTaskViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskViewsClipDirty:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mTmpIntPair:[I

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTmpTaskViewMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            "Lcom/android/systemui/recents/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpTaskViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

.field private mTouchExplorationEnabled:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mTouchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "touch_"
    .end annotation
.end field

.field private mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "doze_"
    .end annotation
.end field

.field private mViewPool:Lcom/android/systemui/recents/views/ViewPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/recents/views/ViewPool",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field


# direct methods
.method static synthetic -com_android_systemui_recents_views_TaskStackView_lambda$1(Lcom/android/systemui/recents/views/TaskView;)V
    .locals 0
    .param p0, "t"    # Lcom/android/systemui/recents/views/TaskView;

    .prologue
    .line 2377
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->setNoUserInteractionState()V

    .line 0
    return-void
.end method

.method static synthetic -get0(Lcom/android/systemui/recents/views/TaskStackView;)Lcom/android/systemui/recents/views/TaskStackAnimationHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAnimationHelper:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/views/TaskStackView;)Lcom/android/systemui/recents/model/Task;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/recents/views/TaskStackView;)Lcom/android/systemui/recents/model/TaskStack;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/recents/views/TaskStackView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewsClipDirty:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/recents/views/TaskStackView;)Lcom/android/systemui/recents/misc/DozeTrigger;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/recents/views/TaskStackView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mBlockRelayoutTaskViews:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/recents/views/TaskStackView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewsClipDirty:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/recents/views/TaskStackView;IZZ)Z
    .locals 1
    .param p1, "taskIndex"    # I
    .param p2, "scrollToTask"    # Z
    .param p3, "requestViewFocus"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/recents/views/TaskStackView;->setFocusedTask(IZZ)Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 279
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 162
    new-instance v3, Lcom/android/systemui/recents/model/TaskStack;

    invoke-direct {v3}, Lcom/android/systemui/recents/model/TaskStack;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    .line 176
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViews:Ljava/util/ArrayList;

    .line 177
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    .line 178
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    .line 179
    iput-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/recents/views/AnimationProps;

    .line 191
    iput-boolean v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewsClipDirty:Z

    .line 193
    iput-boolean v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    .line 196
    iput v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInitialState:I

    .line 198
    iput-boolean v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInMeasureLayout:Z

    .line 200
    iput-boolean v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mEnterAnimationComplete:Z

    .line 208
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableStackBounds:Landroid/graphics/Rect;

    .line 211
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackBounds:Landroid/graphics/Rect;

    .line 214
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableWindowRect:Landroid/graphics/Rect;

    .line 217
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mWindowRect:Landroid/graphics/Rect;

    .line 220
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    .line 223
    iput v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayOrientation:I

    .line 225
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    .line 226
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViewMap:Landroid/util/ArrayMap;

    .line 227
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    .line 228
    new-instance v3, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v3}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 229
    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpIntPair:[I

    .line 236
    iput v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingPrepareAnimation:I

    .line 238
    iput-boolean v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mBlockRelayoutTaskViews:Z

    .line 243
    new-instance v3, Lcom/android/systemui/recents/views/TaskStackView$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/views/TaskStackView$1;-><init>(Lcom/android/systemui/recents/views/TaskStackView;)V

    .line 242
    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mRequestUpdateClippingListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 254
    new-instance v3, Lcom/android/systemui/recents/views/TaskStackView$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/views/TaskStackView$2;-><init>(Lcom/android/systemui/recents/views/TaskStackView;)V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    .line 266
    new-instance v3, Lcom/android/systemui/recents/views/TaskStackView$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/views/TaskStackView$3;-><init>(Lcom/android/systemui/recents/views/TaskStackView;)V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    .line 280
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    .line 281
    .local v1, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 284
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v3, p0}, Lcom/android/systemui/recents/model/TaskStack;->setCallbacks(Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;)V

    .line 285
    new-instance v3, Lcom/android/systemui/recents/views/ViewPool;

    invoke-direct {v3, p1, p0}, Lcom/android/systemui/recents/views/ViewPool;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer;)V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    .line 286
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInflater:Landroid/view/LayoutInflater;

    .line 287
    new-instance v3, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-direct {v3, p1, p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;)V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    .line 288
    new-instance v3, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-direct {v3, p1, v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;)V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    .line 289
    new-instance v3, Lcom/android/systemui/recents/views/TaskStackViewScroller;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-direct {v3, p1, p0, v4}, Lcom/android/systemui/recents/views/TaskStackViewScroller;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;)V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    .line 290
    new-instance v3, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-direct {v3, p1, p0, v4}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskStackViewScroller;)V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    .line 291
    new-instance v3, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    invoke-direct {v3, p1, p0}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackView;)V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAnimationHelper:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    .line 293
    sget-boolean v3, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableMoreRound:Z

    if-eqz v3, :cond_1

    .line 295
    const v3, 0x7f0d0317

    .line 294
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskCornerRadiusPx:I

    .line 301
    :goto_0
    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDockedDividerSize(Landroid/content/Context;)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDividerSize:I

    .line 302
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayOrientation:I

    .line 303
    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    .line 305
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 306
    const v4, 0x7f0c0039

    .line 305
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 307
    .local v2, "taskBarDismissDozeDelaySeconds":I
    new-instance v3, Lcom/android/systemui/recents/misc/DozeTrigger;

    new-instance v4, Lcom/android/systemui/recents/views/TaskStackView$4;

    invoke-direct {v4, p0}, Lcom/android/systemui/recents/views/TaskStackView$4;-><init>(Lcom/android/systemui/recents/views/TaskStackView;)V

    invoke-direct {v3, v2, v4}, Lcom/android/systemui/recents/misc/DozeTrigger;-><init>(ILjava/lang/Runnable;)V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    .line 319
    invoke-virtual {p0, v5}, Lcom/android/systemui/recents/views/TaskStackView;->setImportantForAccessibility(I)V

    .line 321
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 322
    const v4, 0x7f020431

    .line 321
    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 323
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3, p0}, Landroid/graphics/drawable/GradientDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 324
    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasFreeformWorkspaceSupport()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 325
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 326
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b00c5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    .line 325
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 278
    :cond_0
    return-void

    .line 299
    .end local v2    # "taskBarDismissDozeDelaySeconds":I
    :cond_1
    const v3, 0x7f0d0315

    .line 298
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskCornerRadiusPx:I

    goto :goto_0
.end method

.method private animateFreeformWorkspaceBackgroundAlpha(ILcom/android/systemui/recents/views/AnimationProps;)V
    .locals 6
    .param p1, "targetAlpha"    # I
    .param p2, "animation"    # Lcom/android/systemui/recents/views/AnimationProps;

    .prologue
    const/4 v5, 0x4

    .line 2428
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getAlpha()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 2429
    return-void

    .line 2432
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/Utilities;->cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V

    .line 2433
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 2434
    sget-object v1, Lcom/android/systemui/recents/misc/Utilities;->DRAWABLE_ALPHA:Landroid/util/Property;

    .line 2433
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 2434
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/GradientDrawable;->getAlpha()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    aput p1, v2, v3

    .line 2433
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackgroundAnimator:Landroid/animation/ObjectAnimator;

    .line 2435
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackgroundAnimator:Landroid/animation/ObjectAnimator;

    .line 2436
    invoke-virtual {p2, v5}, Lcom/android/systemui/recents/views/AnimationProps;->getDuration(I)J

    move-result-wide v2

    .line 2435
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2437
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackgroundAnimator:Landroid/animation/ObjectAnimator;

    .line 2438
    invoke-virtual {p2, v5}, Lcom/android/systemui/recents/views/AnimationProps;->getDuration(I)J

    move-result-wide v2

    .line 2437
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2439
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackgroundAnimator:Landroid/animation/ObjectAnimator;

    .line 2440
    invoke-virtual {p2, v5}, Lcom/android/systemui/recents/views/AnimationProps;->getInterpolator(I)Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 2439
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2441
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 2427
    return-void
.end method

.method private bindTaskView(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;)V
    .locals 3
    .param p1, "tv"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "task"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 1707
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchExplorationEnabled:Z

    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayOrientation:I

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/android/systemui/recents/views/TaskView;->onTaskBound(Lcom/android/systemui/recents/model/Task;ZILandroid/graphics/Rect;)V

    .line 1710
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTaskData(Lcom/android/systemui/recents/model/Task;)V

    .line 1705
    return-void
.end method

.method private clipTaskViews()V
    .locals 15

    .prologue
    .line 839
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v8

    .line 840
    .local v8, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    const/4 v9, 0x0

    .line 841
    .local v9, "tmpTv":Lcom/android/systemui/recents/views/TaskView;
    const/4 v5, 0x0

    .line 842
    .local v5, "prevVisibleTv":Lcom/android/systemui/recents/views/TaskView;
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    .line 843
    .local v7, "taskViewCount":I
    const/4 v3, 0x0

    .end local v5    # "prevVisibleTv":Lcom/android/systemui/recents/views/TaskView;
    .end local v9    # "tmpTv":Lcom/android/systemui/recents/views/TaskView;
    .local v3, "i":I
    :goto_0
    if-ge v3, v7, :cond_6

    .line 844
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/recents/views/TaskView;

    .line 845
    .local v10, "tv":Lcom/android/systemui/recents/views/TaskView;
    const/4 v2, 0x0

    .line 846
    .local v2, "frontTv":Lcom/android/systemui/recents/views/TaskView;
    const/4 v0, 0x0

    .line 848
    .local v0, "clipBottom":I
    invoke-virtual {v10}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/systemui/recents/views/TaskStackView;->isIgnoredTask(Lcom/android/systemui/recents/model/Task;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 851
    if-eqz v5, :cond_0

    .line 852
    invoke-virtual {v10}, Lcom/android/systemui/recents/views/TaskView;->getTranslationZ()F

    move-result v11

    .line 853
    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskView;->getTranslationZ()F

    move-result v12

    const v13, 0x3dcccccd    # 0.1f

    add-float/2addr v12, v13

    .line 852
    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/systemui/recents/views/TaskView;->setTranslationZ(F)V

    .line 857
    :cond_0
    add-int/lit8 v11, v7, -0x1

    if-ge v3, v11, :cond_2

    invoke-virtual {v10}, Lcom/android/systemui/recents/views/TaskView;->shouldClipViewInStack()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 859
    add-int/lit8 v4, v3, 0x1

    .local v4, "j":I
    :goto_1
    if-ge v4, v7, :cond_1

    .line 860
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/recents/views/TaskView;

    .line 862
    .local v9, "tmpTv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskView;->shouldClipViewInStack()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 863
    move-object v2, v9

    .line 871
    .end local v2    # "frontTv":Lcom/android/systemui/recents/views/TaskView;
    .end local v9    # "tmpTv":Lcom/android/systemui/recents/views/TaskView;
    :cond_1
    if-eqz v2, :cond_2

    .line 872
    invoke-virtual {v10}, Lcom/android/systemui/recents/views/TaskView;->getBottom()I

    move-result v11

    int-to-float v6, v11

    .line 873
    .local v6, "taskBottom":F
    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getTop()I

    move-result v11

    int-to-float v1, v11

    .line 874
    .local v1, "frontTaskTop":F
    cmpg-float v11, v1, v6

    if-gez v11, :cond_2

    .line 877
    sget-boolean v11, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableTransParentBehindTaskView:Z

    if-eqz v11, :cond_4

    .line 878
    sub-float v11, v6, v1

    float-to-int v11, v11

    invoke-virtual {v10}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v12

    iget v13, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskCornerRadiusPx:I

    int-to-float v13, v13

    mul-float/2addr v12, v13

    float-to-int v12, v12

    sub-int v0, v11, v12

    .line 890
    .end local v1    # "frontTaskTop":F
    .end local v4    # "j":I
    .end local v6    # "taskBottom":F
    :cond_2
    :goto_2
    invoke-virtual {v10}, Lcom/android/systemui/recents/views/TaskView;->getViewBounds()Lcom/android/systemui/recents/views/AnimateableViewBounds;

    move-result-object v11

    invoke-virtual {v11, v0}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->setClipBottom(I)V

    .line 891
    iget-object v11, v10, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v10}, Lcom/android/systemui/recents/views/TaskView;->getPaddingBottom()I

    move-result v12

    sub-int v12, v0, v12

    invoke-virtual {v11, v12}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateThumbnailVisibility(I)V

    .line 892
    move-object v5, v10

    .line 843
    .local v5, "prevVisibleTv":Lcom/android/systemui/recents/views/TaskView;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 859
    .end local v5    # "prevVisibleTv":Lcom/android/systemui/recents/views/TaskView;
    .restart local v2    # "frontTv":Lcom/android/systemui/recents/views/TaskView;
    .restart local v4    # "j":I
    .restart local v9    # "tmpTv":Lcom/android/systemui/recents/views/TaskView;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 879
    .end local v2    # "frontTv":Lcom/android/systemui/recents/views/TaskView;
    .end local v9    # "tmpTv":Lcom/android/systemui/recents/views/TaskView;
    .restart local v1    # "frontTaskTop":F
    .restart local v6    # "taskBottom":F
    :cond_4
    sget-boolean v11, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSecondViewExpanded:Z

    if-eqz v11, :cond_5

    .line 880
    invoke-virtual {v10}, Lcom/android/systemui/recents/views/TaskView;->getHeight()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v10}, Lcom/android/systemui/recents/views/TaskView;->getHeight()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v10}, Lcom/android/systemui/recents/views/TaskView;->getScaleY()F

    move-result v13

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    sub-float v11, v6, v11

    .line 881
    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getHeight()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getHeight()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getScaleY()F

    move-result v14

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    add-float/2addr v12, v1

    .line 880
    sub-float/2addr v11, v12

    float-to-int v0, v11

    .line 882
    int-to-float v11, v0

    invoke-virtual {v10}, Lcom/android/systemui/recents/views/TaskView;->getScaleY()F

    move-result v12

    div-float/2addr v11, v12

    float-to-int v0, v11

    goto :goto_2

    .line 885
    :cond_5
    sub-float v11, v6, v1

    float-to-int v11, v11

    iget v12, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskCornerRadiusPx:I

    sub-int v0, v11, v12

    goto :goto_2

    .line 894
    .end local v0    # "clipBottom":I
    .end local v1    # "frontTaskTop":F
    .end local v4    # "j":I
    .end local v6    # "taskBottom":F
    .end local v10    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_6
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewsClipDirty:Z

    .line 837
    return-void
.end method

.method private findTaskViewInsertIndex(Lcom/android/systemui/recents/model/Task;I)I
    .locals 7
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "taskIndex"    # I

    .prologue
    const/4 v6, -0x1

    .line 2453
    if-eq p2, v6, :cond_3

    .line 2454
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v3

    .line 2455
    .local v3, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    const/4 v0, 0x0

    .line 2456
    .local v0, "foundTaskView":Z
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 2457
    .local v2, "taskViewCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 2458
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v4

    .line 2459
    .local v4, "tvTask":Lcom/android/systemui/recents/model/Task;
    if-ne v4, p1, :cond_1

    .line 2460
    const/4 v0, 0x1

    .line 2457
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2461
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v5, v4}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v5

    if-ge p2, v5, :cond_0

    .line 2462
    if-eqz v0, :cond_2

    .line 2463
    add-int/lit8 v5, v1, -0x1

    return v5

    .line 2465
    :cond_2
    return v1

    .line 2470
    .end local v0    # "foundTaskView":Z
    .end local v1    # "i":I
    .end local v2    # "taskViewCount":I
    .end local v3    # "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    .end local v4    # "tvTask":Lcom/android/systemui/recents/model/Task;
    :cond_3
    return v6
.end method

.method private getFrontMostTaskView(Z)Lcom/android/systemui/recents/views/TaskView;
    .locals 6
    .param p1, "stackTasksOnly"    # Z

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v3

    .line 443
    .local v3, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 444
    .local v2, "taskViewCount":I
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 445
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/views/TaskView;

    .line 446
    .local v4, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    .line 447
    .local v1, "task":Lcom/android/systemui/recents/model/Task;
    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 444
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 450
    :cond_0
    return-object v4

    .line 452
    .end local v1    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v4    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_1
    const/4 v5, 0x0

    return-object v5
.end method

.method private layoutTaskView(ZLcom/android/systemui/recents/views/TaskView;)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "tv"    # Lcom/android/systemui/recents/views/TaskView;

    .prologue
    .line 1393
    if-eqz p1, :cond_1

    .line 1394
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1395
    .local v0, "padding":Landroid/graphics/Rect;
    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1396
    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1398
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v2, v2, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1399
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v2, v2, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1400
    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskView;->cancelTransformAnimation()V

    .line 1401
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    .line 1402
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    .line 1401
    invoke-virtual {p2, v1, v2, v3, v4}, Lcom/android/systemui/recents/views/TaskView;->layout(IIII)V

    .line 1392
    .end local v0    # "padding":Landroid/graphics/Rect;
    :goto_0
    return-void

    .line 1405
    :cond_1
    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskView;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskView;->getTop()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskView;->getRight()I

    move-result v3

    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskView;->getBottom()I

    move-result v4

    invoke-virtual {p2, v1, v2, v3, v4}, Lcom/android/systemui/recents/views/TaskView;->layout(IIII)V

    goto :goto_0
.end method

.method private measureTaskView(Lcom/android/systemui/recents/views/TaskView;)V
    .locals 5
    .param p1, "tv"    # Lcom/android/systemui/recents/views/TaskView;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 1344
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1345
    .local v0, "padding":Landroid/graphics/Rect;
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1346
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1348
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v2, v2, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1349
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v2, v2, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1351
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1353
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1350
    invoke-virtual {p1, v1, v2}, Lcom/android/systemui/recents/views/TaskView;->measure(II)V

    .line 1343
    return-void
.end method

.method private readSystemFlags()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2477
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 2478
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isTouchExplorationEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchExplorationEnabled:Z

    .line 2479
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 2480
    const-string/jumbo v3, "lock_to_app_enabled"

    .line 2479
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getSystemSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mScreenPinningEnabled:Z

    .line 2476
    return-void
.end method

.method private relayoutTaskViews(Lcom/android/systemui/recents/views/AnimationProps;Landroid/util/ArrayMap;Z)V
    .locals 9
    .param p1, "animation"    # Lcom/android/systemui/recents/views/AnimationProps;
    .param p3, "ignoreTaskOverrides"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/recents/views/AnimationProps;",
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            "Lcom/android/systemui/recents/views/AnimationProps;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 716
    .local p2, "animationOverrides":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/AnimationProps;>;"
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->cancelDeferredTaskViewLayoutAnimation()V

    .line 719
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v7

    invoke-virtual {p0, v7, p3}, Lcom/android/systemui/recents/views/TaskStackView;->bindVisibleTaskViews(FZ)V

    .line 723
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v4

    .line 724
    .local v4, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 725
    .local v3, "taskViewCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_4

    .line 726
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recents/views/TaskView;

    .line 727
    .local v6, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    .line 728
    .local v1, "task":Lcom/android/systemui/recents/model/Task;
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v7, v1}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v2

    .line 730
    .local v2, "taskIndex":I
    const/4 v7, -0x1

    if-ne v2, v7, :cond_1

    .line 725
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 732
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 734
    .local v5, "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    iget-object v8, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 738
    if-eqz p2, :cond_2

    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 739
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "animation":Lcom/android/systemui/recents/views/AnimationProps;
    check-cast p1, Lcom/android/systemui/recents/views/AnimationProps;

    .line 743
    .restart local p1    # "animation":Lcom/android/systemui/recents/views/AnimationProps;
    :cond_2
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v7

    iget-boolean v7, v7, Lcom/android/systemui/recents/RecentsConfiguration;->forceOpacity:Z

    if-eqz v7, :cond_3

    .line 744
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 748
    :cond_3
    invoke-virtual {p0, v6, v5, p1}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto :goto_1

    .line 714
    .end local v1    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v2    # "taskIndex":I
    .end local v5    # "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v6    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_4
    return-void
.end method

.method private setFocusedTask(IZZ)Z
    .locals 1
    .param p1, "taskIndex"    # I
    .param p2, "scrollToTask"    # Z
    .param p3, "requestViewFocus"    # Z

    .prologue
    .line 940
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/TaskStackView;->setFocusedTask(IZZI)Z

    move-result v0

    return v0
.end method

.method private setFocusedTask(IZZI)Z
    .locals 8
    .param p1, "focusTaskIndex"    # I
    .param p2, "scrollToTask"    # Z
    .param p3, "requestViewFocus"    # Z
    .param p4, "timerIndicatorDuration"    # I

    .prologue
    const/4 v5, -0x1

    const/4 v7, 0x0

    .line 951
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v6}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v6

    if-lez v6, :cond_5

    .line 952
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v6}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {p1, v7, v6}, Lcom/android/systemui/recents/misc/Utilities;->clamp(III)I

    move-result v1

    .line 953
    .local v1, "newFocusedTaskIndex":I
    :goto_0
    if-eq v1, v5, :cond_6

    .line 954
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/model/Task;

    .line 957
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v5, :cond_1

    .line 959
    if-lez p4, :cond_0

    .line 960
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v5}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v3

    .line 961
    .local v3, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v3, :cond_0

    .line 962
    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->getHeaderView()Lcom/android/systemui/recents/views/TaskViewHeader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskViewHeader;->cancelFocusTimerIndicator()V

    .line 966
    .end local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v5}, Lcom/android/systemui/recents/views/TaskStackView;->resetFocusedTask(Lcom/android/systemui/recents/model/Task;)V

    .line 969
    :cond_1
    const/4 v4, 0x0

    .line 970
    .local v4, "willScroll":Z
    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    .line 972
    if-eqz v0, :cond_4

    .line 974
    if-lez p4, :cond_2

    .line 975
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v5}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v3

    .line 976
    .restart local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v3, :cond_7

    .line 977
    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->getHeaderView()Lcom/android/systemui/recents/views/TaskViewHeader;

    move-result-object v5

    invoke-virtual {v5, p4}, Lcom/android/systemui/recents/views/TaskViewHeader;->startFocusTimerIndicator(I)V

    .line 984
    .end local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_2
    :goto_2
    if-eqz p2, :cond_8

    .line 986
    iget-boolean v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mEnterAnimationComplete:Z

    if-nez v5, :cond_3

    .line 987
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->cancelAllTaskViewAnimations()V

    .line 990
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->clearUnfocusedTaskOverrides()V

    .line 991
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAnimationHelper:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    invoke-virtual {v5, v0, p3}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->startScrollToFocusedTaskAnimation(Lcom/android/systemui/recents/model/Task;Z)Z

    move-result v4

    .line 1001
    .end local v4    # "willScroll":Z
    :cond_4
    :goto_3
    return v4

    .end local v1    # "newFocusedTaskIndex":I
    :cond_5
    move v1, v5

    .line 952
    goto :goto_0

    .line 954
    .restart local v1    # "newFocusedTaskIndex":I
    :cond_6
    const/4 v0, 0x0

    .local v0, "newFocusedTask":Lcom/android/systemui/recents/model/Task;
    goto :goto_1

    .line 980
    .end local v0    # "newFocusedTask":Lcom/android/systemui/recents/model/Task;
    .restart local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .restart local v4    # "willScroll":Z
    :cond_7
    iput p4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStartTimerIndicatorDuration:I

    goto :goto_2

    .line 995
    .end local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_8
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v2

    .line 996
    .local v2, "newFocusedTaskView":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v2, :cond_4

    .line 997
    const/4 v5, 0x1

    invoke-virtual {v2, v5, p3}, Lcom/android/systemui/recents/views/TaskView;->setFocusedState(ZZ)V

    goto :goto_3
.end method

.method private unbindTaskView(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;)V
    .locals 1
    .param p1, "tv"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "task"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 1715
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->unloadTaskData(Lcom/android/systemui/recents/model/Task;)V

    .line 1713
    return-void
.end method

.method private updateLayoutToStableBounds()V
    .locals 5

    .prologue
    .line 920
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mWindowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 921
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 922
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setSystemInsets(Landroid/graphics/Rect;)Z

    .line 923
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mWindowRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackBounds:Landroid/graphics/Rect;

    .line 924
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-static {v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->getStackStateForStack(Lcom/android/systemui/recents/model/TaskStack;)Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    move-result-object v4

    .line 923
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->initialize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;)V

    .line 925
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 919
    return-void
.end method


# virtual methods
.method addIgnoreTask(Lcom/android/systemui/recents/model/Task;)V
    .locals 2
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 485
    return-void
.end method

.method public bindVisibleTaskViews(F)V
    .locals 1
    .param p1, "targetStackScroll"    # F

    .prologue
    .line 585
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/recents/views/TaskStackView;->bindVisibleTaskViews(FZ)V

    .line 584
    return-void
.end method

.method bindVisibleTaskViews(FZ)V
    .locals 20
    .param p1, "targetStackScroll"    # F
    .param p2, "ignoreTaskOverrides"    # Z

    .prologue
    .line 603
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v5

    .line 604
    .local v5, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    .line 605
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    move-object/from16 v3, p0

    move/from16 v7, p1

    move/from16 v9, p2

    .line 604
    invoke-virtual/range {v3 .. v9}, Lcom/android/systemui/recents/views/TaskStackView;->computeVisibleTaskTransforms(Ljava/util/ArrayList;Ljava/util/ArrayList;FFLandroid/util/ArraySet;Z)[I

    move-result-object v19

    .line 609
    .local v19, "visibleTaskRange":[I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViewMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 610
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v16

    .line 611
    .local v16, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    const/4 v12, -0x1

    .line 612
    .local v12, "lastFocusedTaskIndex":I
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v15

    .line 613
    .local v15, "taskViewCount":I
    add-int/lit8 v10, v15, -0x1

    .local v10, "i":I
    :goto_0
    if-ltz v10, :cond_6

    .line 614
    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/systemui/recents/views/TaskView;

    .line 615
    .local v18, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v13

    .line 618
    .local v13, "task":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    iget-object v4, v13, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 613
    :goto_1
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    .line 625
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v3, v13}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v14

    .line 626
    .local v14, "taskIndex":I
    const/16 v17, 0x0

    .line 627
    .local v17, "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    const/4 v3, -0x1

    if-eq v14, v3, :cond_1

    .line 628
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    check-cast v17, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 631
    :cond_1
    sget-boolean v3, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformInTaskStack:Z

    if-nez v3, :cond_2

    invoke-virtual {v13}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v3

    if-nez v3, :cond_3

    .line 632
    :cond_2
    if-eqz v17, :cond_4

    move-object/from16 v0, v17

    iget-boolean v3, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    .line 631
    if-eqz v3, :cond_4

    .line 633
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViewMap:Landroid/util/ArrayMap;

    iget-object v4, v13, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v0, v18

    invoke-virtual {v3, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 635
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchExplorationEnabled:Z

    if-eqz v3, :cond_5

    .line 636
    move v12, v14

    .line 637
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/systemui/recents/views/TaskStackView;->resetFocusedTask(Lcom/android/systemui/recents/model/Task;)V

    .line 639
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/systemui/recents/views/ViewPool;->returnViewToPool(Ljava/lang/Object;)V

    goto :goto_1

    .line 644
    .end local v13    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v14    # "taskIndex":I
    .end local v18    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v10, v3, -0x1

    :goto_2
    if-ltz v10, :cond_d

    .line 645
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/recents/model/Task;

    .line 646
    .restart local v13    # "task":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 649
    .local v17, "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    iget-object v4, v13, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 644
    :cond_7
    :goto_3
    add-int/lit8 v10, v10, -0x1

    goto :goto_2

    .line 654
    :cond_8
    sget-boolean v3, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformInTaskStack:Z

    if-nez v3, :cond_9

    invoke-virtual {v13}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 659
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViewMap:Landroid/util/ArrayMap;

    iget-object v4, v13, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/systemui/recents/views/TaskView;

    .line 660
    .restart local v18    # "tv":Lcom/android/systemui/recents/views/TaskView;
    if-nez v18, :cond_c

    .line 661
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-virtual {v3, v13, v13}, Lcom/android/systemui/recents/views/ViewPool;->pickUpViewFromPool(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "tv":Lcom/android/systemui/recents/views/TaskView;
    check-cast v18, Lcom/android/systemui/recents/views/TaskView;

    .line 662
    .restart local v18    # "tv":Lcom/android/systemui/recents/views/TaskView;
    sget-boolean v3, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformInTaskStack:Z

    if-nez v3, :cond_a

    invoke-virtual {v13}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 663
    sget-object v3, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto :goto_3

    .line 655
    .end local v18    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_9
    move-object/from16 v0, v17

    iget-boolean v3, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    if-eqz v3, :cond_7

    goto :goto_4

    .line 665
    .restart local v18    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_a
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v4, v4, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_b

    .line 666
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getBackOfStackTransform()Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v3

    .line 667
    sget-object v4, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    .line 666
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto :goto_3

    .line 669
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getFrontOfStackTransform()Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v3

    .line 670
    sget-object v4, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    .line 669
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto :goto_3

    .line 675
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v3, v13}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v14

    .line 676
    .restart local v14    # "taskIndex":I
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/systemui/recents/views/TaskStackView;->findTaskViewInsertIndex(Lcom/android/systemui/recents/model/Task;I)I

    move-result v11

    .line 677
    .local v11, "insertIndex":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v11, v3, :cond_7

    .line 678
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->detachViewFromParent(Landroid/view/View;)V

    .line 679
    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/recents/views/TaskView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v11, v3}, Lcom/android/systemui/recents/views/TaskStackView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 680
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewsList()V

    goto/16 :goto_3

    .line 686
    .end local v11    # "insertIndex":I
    .end local v13    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v14    # "taskIndex":I
    .end local v17    # "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v18    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_d
    const/4 v3, -0x1

    if-eq v12, v3, :cond_e

    .line 687
    const/4 v3, 0x1

    aget v3, v19, v3

    if-ge v12, v3, :cond_f

    .line 688
    const/4 v3, 0x1

    aget v3, v19, v3

    const/4 v4, 0x0

    .line 689
    const/4 v6, 0x1

    .line 688
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v6}, Lcom/android/systemui/recents/views/TaskStackView;->setFocusedTask(IZZ)Z

    .line 601
    :cond_e
    :goto_5
    return-void

    .line 691
    :cond_f
    const/4 v3, 0x0

    aget v3, v19, v3

    const/4 v4, 0x0

    .line 692
    const/4 v6, 0x1

    .line 691
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v6}, Lcom/android/systemui/recents/views/TaskStackView;->setFocusedTask(IZZ)Z

    goto :goto_5
.end method

.method cancelAllTaskViewAnimations()V
    .locals 5

    .prologue
    .line 825
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    .line 826
    .local v1, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 827
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    .line 828
    .local v2, "tv":Lcom/android/systemui/recents/views/TaskView;
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 829
    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->cancelTransformAnimation()V

    .line 826
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 824
    .end local v2    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_1
    return-void
.end method

.method cancelDeferredTaskViewLayoutAnimation()V
    .locals 1

    .prologue
    .line 818
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/recents/views/AnimationProps;

    .line 817
    return-void
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1244
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->computeScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1246
    const/16 v0, 0x1000

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->sendAccessibilityEvent(I)V

    .line 1248
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/recents/views/AnimationProps;

    if-eqz v0, :cond_1

    .line 1249
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/recents/views/AnimationProps;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/recents/views/AnimationProps;)V

    .line 1250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewsClipDirty:Z

    .line 1251
    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/recents/views/AnimationProps;

    .line 1253
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewsClipDirty:Z

    if-eqz v0, :cond_2

    .line 1254
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackView;->clipTaskViews()V

    .line 1243
    :cond_2
    return-void
.end method

.method public computeStackVisibilityReport()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;
    .locals 2

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->computeStackVisibilityReport(Ljava/util/ArrayList;)Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;

    move-result-object v0

    return-object v0
.end method

.method computeVisibleTaskTransforms(Ljava/util/ArrayList;Ljava/util/ArrayList;FFLandroid/util/ArraySet;Z)[I
    .locals 14
    .param p3, "curStackScroll"    # F
    .param p4, "targetStackScroll"    # F
    .param p6, "ignoreTaskOverrides"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;FF",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            ">;Z)[I"
        }
    .end annotation

    .prologue
    .line 526
    .local p1, "taskTransforms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/views/TaskViewTransform;>;"
    .local p2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    .local p5, "ignoreTasksSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/systemui/recents/model/Task$TaskKey;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 527
    .local v9, "taskCount":I
    iget-object v13, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpIntPair:[I

    .line 528
    .local v13, "visibleTaskRange":[I
    const/4 v1, -0x1

    const/4 v3, 0x0

    aput v1, v13, v3

    .line 529
    const/4 v1, -0x1

    const/4 v3, 0x1

    aput v1, v13, v3

    .line 530
    invoke-static/range {p3 .. p4}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v12, 0x1

    .line 533
    .local v12, "useTargetStackScroll":Z
    :goto_0
    move-object/from16 v0, p2

    invoke-static {v0, p1}, Lcom/android/systemui/recents/misc/Utilities;->matchTaskListSize(Ljava/util/List;Ljava/util/List;)V

    .line 536
    const/4 v5, 0x0

    .line 537
    .local v5, "frontTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    const/4 v7, 0x0

    .line 538
    .local v7, "frontTransformAtTarget":Lcom/android/systemui/recents/views/TaskViewTransform;
    const/4 v10, 0x0

    .line 539
    .local v10, "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    const/4 v11, 0x0

    .line 540
    .local v11, "transformAtTarget":Lcom/android/systemui/recents/views/TaskViewTransform;
    add-int/lit8 v8, v9, -0x1

    .end local v5    # "frontTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v7    # "frontTransformAtTarget":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v10    # "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v11    # "transformAtTarget":Lcom/android/systemui/recents/views/TaskViewTransform;
    .local v8, "i":I
    :goto_1
    if-ltz v8, :cond_7

    .line 541
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    .line 544
    .local v2, "task":Lcom/android/systemui/recents/model/Task;
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    .line 545
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/views/TaskViewTransform;

    move/from16 v3, p3

    move/from16 v6, p6

    .line 544
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;Z)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v10

    .line 546
    .local v10, "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    if-eqz v12, :cond_0

    iget-boolean v1, v10, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    if-eqz v1, :cond_3

    .line 559
    :cond_0
    :goto_2
    iget-object v1, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 540
    :cond_1
    :goto_3
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 530
    .end local v2    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v8    # "i":I
    .end local v10    # "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v12    # "useTargetStackScroll":Z
    :cond_2
    const/4 v12, 0x0

    .restart local v12    # "useTargetStackScroll":Z
    goto :goto_0

    .line 550
    .restart local v2    # "task":Lcom/android/systemui/recents/model/Task;
    .restart local v8    # "i":I
    .restart local v10    # "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    .line 551
    new-instance v3, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v3}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    .line 550
    move/from16 v0, p4

    invoke-virtual {v1, v2, v0, v3, v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v11

    .line 552
    .local v11, "transformAtTarget":Lcom/android/systemui/recents/views/TaskViewTransform;
    iget-boolean v1, v11, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    if-eqz v1, :cond_0

    .line 553
    invoke-virtual {v10, v11}, Lcom/android/systemui/recents/views/TaskViewTransform;->copyFrom(Lcom/android/systemui/recents/views/TaskViewTransform;)V

    goto :goto_2

    .line 565
    .end local v11    # "transformAtTarget":Lcom/android/systemui/recents/views/TaskViewTransform;
    :cond_4
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformInTaskStack:Z

    if-nez v1, :cond_5

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v1

    if-nez v1, :cond_1

    .line 569
    :cond_5
    move-object v5, v10

    .line 570
    .local v5, "frontTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    move-object v7, v11

    .line 571
    .local v7, "frontTransformAtTarget":Lcom/android/systemui/recents/views/TaskViewTransform;
    iget-boolean v1, v10, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    if-eqz v1, :cond_1

    .line 572
    const/4 v1, 0x0

    aget v1, v13, v1

    if-gez v1, :cond_6

    .line 573
    const/4 v1, 0x0

    aput v8, v13, v1

    .line 575
    :cond_6
    const/4 v1, 0x1

    aput v8, v13, v1

    goto :goto_3

    .line 578
    .end local v2    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v5    # "frontTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v7    # "frontTransformAtTarget":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v10    # "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    :cond_7
    return-object v13
.end method

.method public createView(Landroid/content/Context;)Lcom/android/systemui/recents/views/TaskView;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1616
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040124

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskView;

    return-object v0
.end method

.method public bridge synthetic createView(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1615
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackView;->createView(Landroid/content/Context;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v0

    return-object v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 2484
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2485
    .local v1, "innerPrefix":Ljava/lang/String;
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 2487
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "TaskStackView"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2488
    const-string/jumbo v2, " hasDefRelayout="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2489
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/recents/views/AnimationProps;

    if-eqz v2, :cond_1

    const-string/jumbo v2, "Y"

    :goto_0
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2490
    const-string/jumbo v2, " clipDirty="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewsClipDirty:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "Y"

    :goto_1
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2491
    const-string/jumbo v2, " awaitingFirstLayout="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "Y"

    :goto_2
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2492
    const-string/jumbo v2, " initialState="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInitialState:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2493
    const-string/jumbo v2, " inMeasureLayout="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInMeasureLayout:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "Y"

    :goto_3
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2494
    const-string/jumbo v2, " enterAnimCompleted="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mEnterAnimationComplete:Z

    if-eqz v2, :cond_5

    const-string/jumbo v2, "Y"

    :goto_4
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2495
    const-string/jumbo v2, " touchExplorationOn="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchExplorationEnabled:Z

    if-eqz v2, :cond_6

    const-string/jumbo v2, "Y"

    :goto_5
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2496
    const-string/jumbo v2, " screenPinningOn="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mScreenPinningEnabled:Z

    if-eqz v2, :cond_7

    const-string/jumbo v2, "Y"

    :goto_6
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2497
    const-string/jumbo v2, " numIgnoreTasks="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2498
    const-string/jumbo v2, " numViewPool="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/ViewPool;->getViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2499
    const-string/jumbo v2, " stableStackBounds="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableStackBounds:Landroid/graphics/Rect;

    invoke-static {v2}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2500
    const-string/jumbo v2, " stackBounds="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackBounds:Landroid/graphics/Rect;

    invoke-static {v2}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2501
    const-string/jumbo v2, " stableWindow="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableWindowRect:Landroid/graphics/Rect;

    invoke-static {v2}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2502
    const-string/jumbo v2, " window="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mWindowRect:Landroid/graphics/Rect;

    invoke-static {v2}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2503
    const-string/jumbo v2, " display="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    invoke-static {v2}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2504
    const-string/jumbo v2, " orientation="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayOrientation:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2505
    const-string/jumbo v2, " [0x"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "]"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2506
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2508
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v2, :cond_0

    .line 2509
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2510
    const-string/jumbo v2, "Focused task: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2511
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3, p2}, Lcom/android/systemui/recents/model/Task;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2514
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v2, v1, p2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2515
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2, v1, p2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2483
    return-void

    .line 2489
    :cond_1
    const-string/jumbo v2, "N"

    goto/16 :goto_0

    .line 2490
    :cond_2
    const-string/jumbo v2, "N"

    goto/16 :goto_1

    .line 2491
    :cond_3
    const-string/jumbo v2, "N"

    goto/16 :goto_2

    .line 2493
    :cond_4
    const-string/jumbo v2, "N"

    goto/16 :goto_3

    .line 2494
    :cond_5
    const-string/jumbo v2, "N"

    goto/16 :goto_4

    .line 2495
    :cond_6
    const-string/jumbo v2, "N"

    goto/16 :goto_5

    .line 2496
    :cond_7
    const-string/jumbo v2, "N"

    goto/16 :goto_6
.end method

.method public findAnchorTask(Ljava/util/List;Landroid/util/MutableBoolean;)Lcom/android/systemui/recents/model/Task;
    .locals 3
    .param p2, "isFrontMostTask"    # Landroid/util/MutableBoolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;",
            "Landroid/util/MutableBoolean;",
            ")",
            "Lcom/android/systemui/recents/model/Task;"
        }
    .end annotation

    .prologue
    .line 1452
    .local p1, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/model/Task;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1453
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task;

    .line 1456
    .local v1, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->isIgnoredTask(Lcom/android/systemui/recents/model/Task;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1457
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1458
    const/4 v2, 0x1

    iput-boolean v2, p2, Landroid/util/MutableBoolean;->value:Z

    .line 1452
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1462
    :cond_1
    return-object v1

    .line 1464
    .end local v1    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1206
    const-class v0, Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;
    .locals 5
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    .line 460
    .local v2, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 461
    .local v1, "taskViewCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 462
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/TaskView;

    .line 463
    .local v3, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 464
    return-object v3

    .line 461
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 467
    .end local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_1
    const/4 v4, 0x0

    return-object v4
.end method

.method public getCurrentTaskTransforms(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    .local p2, "transformsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/views/TaskViewTransform;>;"
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 781
    invoke-static {p1, p2}, Lcom/android/systemui/recents/misc/Utilities;->matchTaskListSize(Ljava/util/List;Ljava/util/List;)V

    .line 782
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getFocusState()I

    move-result v3

    .line 783
    .local v3, "focusState":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_1

    .line 784
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task;

    .line 785
    .local v1, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 786
    .local v4, "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v9

    .line 787
    .local v9, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v9, :cond_0

    .line 788
    invoke-virtual {v4, v9}, Lcom/android/systemui/recents/views/TaskViewTransform;->fillIn(Lcom/android/systemui/recents/views/TaskView;)V

    .line 794
    :goto_1
    iput-boolean v6, v4, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    .line 783
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 790
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)Lcom/android/systemui/recents/views/TaskViewTransform;

    goto :goto_1

    .line 780
    .end local v1    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v4    # "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v9    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_1
    return-void
.end method

.method getFocusedTask()Lcom/android/systemui/recents/model/Task;
    .locals 1

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    return-object v0
.end method

.method public getLayoutTaskTransforms(FILjava/util/ArrayList;ZLjava/util/ArrayList;)V
    .locals 9
    .param p1, "stackScroll"    # F
    .param p2, "focusState"    # I
    .param p4, "ignoreTaskOverrides"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FI",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    .local p5, "transformsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/views/TaskViewTransform;>;"
    const/4 v6, 0x1

    .line 804
    invoke-static {p3, p5}, Lcom/android/systemui/recents/misc/Utilities;->matchTaskListSize(Ljava/util/List;Ljava/util/List;)V

    .line 805
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_0

    .line 806
    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task;

    .line 807
    .local v1, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {p5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 808
    .local v4, "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    const/4 v5, 0x0

    move v2, p1

    move v3, p2

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 810
    iput-boolean v6, v4, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    .line 805
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 803
    .end local v1    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v4    # "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    :cond_0
    return-void
.end method

.method public getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;
    .locals 1

    .prologue
    .line 930
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    return-object v0
.end method

.method public getStack()Lcom/android/systemui/recents/model/TaskStack;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    return-object v0
.end method

.method public getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    return-object v0
.end method

.method getTaskViews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTouchHandler()Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    return-object v0
.end method

.method public hasPreferredData(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;)Z
    .locals 1
    .param p1, "tv"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "preferredData"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 1702
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic hasPreferredData(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "tv"    # Ljava/lang/Object;
    .param p2, "preferredData"    # Ljava/lang/Object;

    .prologue
    .line 1701
    check-cast p1, Lcom/android/systemui/recents/views/TaskView;

    .end local p1    # "tv":Ljava/lang/Object;
    check-cast p2, Lcom/android/systemui/recents/model/Task;

    .end local p2    # "preferredData":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/views/TaskStackView;->hasPreferredData(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;)Z

    move-result v0

    return v0
.end method

.method isIgnoredTask(Lcom/android/systemui/recents/model/Task;)Z
    .locals 2
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isTouchPointInView(FFLcom/android/systemui/recents/views/TaskView;)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "tv"    # Lcom/android/systemui/recents/views/TaskView;

    .prologue
    .line 1442
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p3}, Lcom/android/systemui/recents/views/TaskView;->getLeft()I

    move-result v1

    invoke-virtual {p3}, Lcom/android/systemui/recents/views/TaskView;->getTop()I

    move-result v2

    invoke-virtual {p3}, Lcom/android/systemui/recents/views/TaskView;->getRight()I

    move-result v3

    invoke-virtual {p3}, Lcom/android/systemui/recents/views/TaskView;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1443
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p3}, Lcom/android/systemui/recents/views/TaskView;->getTranslationX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p3}, Lcom/android/systemui/recents/views/TaskView;->getTranslationY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 1444
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public launchFreeformTasks()Z
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 1492
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskStack;->getFreeformTasks()Ljava/util/ArrayList;

    move-result-object v7

    .line 1493
    .local v7, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1494
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    .line 1495
    .local v2, "frontTask":Lcom/android/systemui/recents/model/Task;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1496
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v8

    new-instance v0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v1

    .line 1497
    const/4 v4, -0x1

    move v6, v5

    .line 1496
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZZ)V

    invoke-virtual {v8, v0}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1498
    const/4 v0, 0x1

    return v0

    .line 1501
    .end local v2    # "frontTask":Lcom/android/systemui/recents/model/Task;
    :cond_0
    return v5
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 332
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    .line 333
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 334
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackView;->readSystemFlags()V

    .line 331
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;

    .prologue
    const/4 v1, 0x1

    .line 2382
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->fromDeviceOrientationChange:Z

    if-eqz v0, :cond_0

    .line 2385
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopScroller()V

    .line 2387
    :cond_0
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->fromDeviceOrientationChange:Z

    if-nez v0, :cond_2

    .line 2388
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->fromDisplayDensityChange:Z

    .line 2387
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->reloadOnConfigurationChange(Z)V

    .line 2391
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->fromMultiWindow:Z

    if-eqz v0, :cond_3

    .line 2392
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInitialState:I

    .line 2393
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->requestLayout()V

    .line 2381
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 2387
    goto :goto_0

    .line 2394
    :cond_3
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->fromDeviceOrientationChange:Z

    if-eqz v0, :cond_1

    .line 2395
    iput v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInitialState:I

    .line 2396
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->requestLayout()V

    goto :goto_1
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;)V
    .locals 5
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;

    .prologue
    const/4 v4, 0x0

    .line 1903
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mBlockRelayoutTaskViews:Z

    .line 1906
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->cancelNonDismissTaskAnimations()V

    .line 1907
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopScroller()V

    .line 1908
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopBoundScrollAnimation()V

    .line 1909
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->cancelDeferredTaskViewLayoutAnimation()V

    .line 1912
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableMoreButton:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableAppList:Z

    if-eqz v1, :cond_1

    .line 1913
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/ui/ToggleRecentsButtonsContainerEvent;

    invoke-direct {v2, v4}, Lcom/android/systemui/recents/events/ui/ToggleRecentsButtonsContainerEvent;-><init>(Z)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1915
    :cond_1
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableCloseAllLayout:Z

    if-eqz v1, :cond_2

    .line 1916
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;

    invoke-direct {v2, v4}, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;-><init>(Z)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1921
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAnimationHelper:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    iget-boolean v2, p1, Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;->animated:Z

    invoke-virtual {p1}, Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->startExitToHomeAnimation(ZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    .line 1923
    new-instance v1, Lcom/android/systemui/recents/views/TaskStackView$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/TaskStackView$6;-><init>(Lcom/android/systemui/recents/views/TaskStackView;)V

    invoke-virtual {p1, v1}, Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;->addPostAnimationCallback(Ljava/lang/Runnable;)V

    .line 1932
    const/16 v0, 0xc8

    .line 1933
    .local v0, "taskViewExitToHomeDuration":I
    new-instance v1, Lcom/android/systemui/recents/views/AnimationProps;

    .line 1934
    sget-object v2, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 1933
    invoke-direct {v1, v0, v2}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    invoke-direct {p0, v4, v1}, Lcom/android/systemui/recents/views/TaskStackView;->animateFreeformWorkspaceBackgroundAlpha(ILcom/android/systemui/recents/views/AnimationProps;)V

    .line 1901
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2255
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSpreadAnimation:Z

    if-eqz v0, :cond_1

    .line 2256
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mEnterAnimationComplete:Z

    if-eqz v0, :cond_0

    .line 2257
    iput v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingPrepareAnimation:I

    .line 2261
    return-void

    .line 2263
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingPrepareAnimation:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 2268
    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingPrepareAnimation:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingPrepareAnimation:I

    .line 2269
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 2270
    return-void

    .line 2273
    :cond_1
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableMoreButton:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableAppList:Z

    if-eqz v0, :cond_3

    .line 2274
    :cond_2
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/ToggleRecentsButtonsContainerEvent;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/ToggleRecentsButtonsContainerEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 2276
    :cond_3
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableCloseAllLayout:Z

    if-eqz v0, :cond_4

    .line 2277
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 2281
    :cond_4
    iput-boolean v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mEnterAnimationComplete:Z

    .line 2283
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 2285
    const-string/jumbo v0, "TaskStackView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startEnterAnimation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingPrepareAnimation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2288
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAnimationHelper:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    invoke-virtual {p1}, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->startEnterAnimation(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    .line 2291
    new-instance v0, Lcom/android/systemui/recents/views/TaskStackView$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/views/TaskStackView$9;-><init>(Lcom/android/systemui/recents/views/TaskStackView;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;->addPostAnimationCallback(Ljava/lang/Runnable;)V

    .line 2313
    :cond_5
    iput v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingPrepareAnimation:I

    .line 2253
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/IterateRecentsEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/IterateRecentsEvent;

    .prologue
    .line 2247
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mEnterAnimationComplete:Z

    if-nez v0, :cond_0

    .line 2249
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;-><init>(Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 2246
    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;)V
    .locals 13
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 1855
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getLaunchTarget()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v10

    .line 1856
    .local v10, "launchTaskIndex":I
    if-eq v10, v4, :cond_2

    .line 1857
    add-int/lit8 v0, v10, -0x1

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1861
    :goto_0
    if-eq v10, v4, :cond_4

    .line 1863
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->cancelAllTaskViewAnimations()V

    .line 1865
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    .line 1866
    .local v2, "launchTask":Lcom/android/systemui/recents/model/Task;
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v8

    .line 1867
    .local v8, "curScroll":F
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTaskAtInitialOffset(Lcom/android/systemui/recents/model/Task;)F

    move-result v11

    .line 1868
    .local v11, "targetScroll":F
    sub-float v0, v11, v8

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 1869
    .local v7, "absScrollDiff":F
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v0

    if-eqz v0, :cond_0

    const v0, 0x3eb33333    # 0.35f

    cmpl-float v0, v7, v0

    if-lez v0, :cond_3

    .line 1871
    :cond_0
    const/high16 v0, 0x42000000    # 32.0f

    mul-float/2addr v0, v7

    .line 1870
    const/high16 v1, 0x43580000    # 216.0f

    add-float/2addr v0, v1

    float-to-int v9, v0

    .line 1872
    .local v9, "duration":I
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    .line 1873
    new-instance v1, Lcom/android/systemui/recents/views/TaskStackView$5;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/recents/views/TaskStackView$5;-><init>(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/model/Task;)V

    .line 1872
    invoke-virtual {v0, v11, v9, v1}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->animateScroll(FILjava/lang/Runnable;)V

    .line 1888
    .end local v9    # "duration":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1889
    iget-object v1, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1888
    const/16 v3, 0x13e

    invoke-static {v0, v3, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 1854
    .end local v2    # "launchTask":Lcom/android/systemui/recents/model/Task;
    .end local v7    # "absScrollDiff":F
    .end local v8    # "curScroll":F
    .end local v11    # "targetScroll":F
    :cond_1
    :goto_2
    return-void

    .line 1859
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v0

    add-int/lit8 v10, v0, -0x1

    goto :goto_0

    .line 1883
    .restart local v2    # "launchTask":Lcom/android/systemui/recents/model/Task;
    .restart local v7    # "absScrollDiff":F
    .restart local v8    # "curScroll":F
    .restart local v11    # "targetScroll":F
    :cond_3
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v12

    new-instance v0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v1

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZZ)V

    invoke-virtual {v12, v0}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_1

    .line 1890
    .end local v2    # "launchTask":Lcom/android/systemui/recents/model/Task;
    .end local v7    # "absScrollDiff":F
    .end local v8    # "curScroll":F
    .end local v11    # "targetScroll":F
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1892
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;

    const/4 v3, 0x1

    invoke-direct {v1, v5, v3}, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;-><init>(ZZ)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_2
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;)V
    .locals 13
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 1791
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSplitLayout:Z

    if-nez v1, :cond_0

    return-void

    .line 1795
    :cond_0
    iget-object v1, p1, Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v1, v8}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 1797
    iget-object v1, p1, Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v1, v8}, Lcom/android/systemui/recents/views/TaskView;->setTouchEnabled(Z)V

    .line 1799
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    .line 1800
    .local v9, "parent":Landroid/view/ViewParent;
    if-eqz v9, :cond_1

    .line 1801
    invoke-interface {v9, v11}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1806
    :cond_1
    iget-object v1, p1, Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->addIgnoreTask(Lcom/android/systemui/recents/model/Task;)V

    .line 1808
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformInTaskStack:Z

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1810
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v2, v2, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    invoke-virtual {v1, v2, v12}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->animateScroll(FLjava/lang/Runnable;)V

    .line 1814
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v2, p1, Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v4

    .line 1815
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 1814
    invoke-virtual {v1, v2, v4, v6, v12}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 1816
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v2, v2, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxTranslationZ:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iput v2, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    .line 1817
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    .line 1818
    iget-object v1, p1, Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 1819
    new-instance v4, Lcom/android/systemui/recents/views/AnimationProps;

    sget-object v6, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const/16 v7, 0xaf

    invoke-direct {v4, v7, v6}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    .line 1818
    invoke-virtual {p0, v1, v2, v4}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    .line 1822
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->isInMultiWindowMode:Z

    if-nez v1, :cond_3

    .line 1826
    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayOrientation:I

    if-ne v1, v11, :cond_4

    .line 1827
    sget-object v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->TOP:Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 1828
    .local v0, "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    :goto_0
    new-instance v5, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    invoke-direct {v5, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1832
    .local v5, "systemInsets":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 1833
    .local v3, "height":I
    iget v1, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v1

    .line 1834
    iput v8, v5, Landroid/graphics/Rect;->bottom:I

    .line 1835
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getMeasuredWidth()I

    move-result v2

    .line 1836
    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDividerSize:I

    .line 1837
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackView;->mWindowRect:Landroid/graphics/Rect;

    .line 1835
    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/recents/model/TaskStack$DockState;->getDockedTaskStackBounds(Landroid/graphics/Rect;IIILandroid/graphics/Rect;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;Landroid/content/res/Resources;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1838
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v1, v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setSystemInsets(Landroid/graphics/Rect;)Z

    .line 1839
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mWindowRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    .line 1840
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-static {v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->getStackStateForStack(Lcom/android/systemui/recents/model/TaskStack;)Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    move-result-object v7

    .line 1839
    invoke-virtual {v1, v2, v4, v6, v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->initialize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;)V

    .line 1841
    invoke-virtual {p0, v11}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 1843
    .end local v0    # "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    .end local v3    # "height":I
    .end local v5    # "systemInsets":Landroid/graphics/Rect;
    :cond_3
    new-instance v1, Lcom/android/systemui/recents/views/AnimationProps;

    .line 1844
    sget-object v2, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 1843
    const/16 v4, 0xfa

    invoke-direct {v1, v4, v2}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    invoke-direct {p0, v1, v12, v11}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/recents/views/AnimationProps;Landroid/util/ArrayMap;Z)V

    .line 1850
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->clearUnfocusedTaskOverrides()V

    .line 1790
    return-void

    .line 1827
    :cond_4
    sget-object v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->LEFT:Lcom/android/systemui/recents/model/TaskStack$DockState;

    .restart local v0    # "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    .prologue
    .line 1785
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    .line 1783
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTaskStartedEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/LaunchTaskStartedEvent;

    .prologue
    .line 1897
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAnimationHelper:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    iget-object v1, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskStartedEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    iget-boolean v2, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskStartedEvent;->screenPinningRequested:Z

    .line 1898
    invoke-virtual {p1}, Lcom/android/systemui/recents/events/activity/LaunchTaskStartedEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v3

    iget-boolean v4, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskStartedEvent;->isFreeformTask:Z

    .line 1897
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->startLaunchTaskAnimation(Lcom/android/systemui/recents/views/TaskView;ZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;Z)V

    .line 1896
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/MultiWindowSettingChangedEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/MultiWindowSettingChangedEvent;

    .prologue
    .line 2377
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/views/TaskStackView$-void_onBusEvent_com_android_systemui_recents_events_activity_MultiWindowSettingChangedEvent_event_LambdaImpl0;

    invoke-direct {v1}, Lcom/android/systemui/recents/views/TaskStackView$-void_onBusEvent_com_android_systemui_recents_events_activity_MultiWindowSettingChangedEvent_event_LambdaImpl0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 2376
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;

    .prologue
    .line 2337
    iget-boolean v1, p1, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->isRecentsActivityVisible:Z

    if-nez v1, :cond_0

    .line 2338
    return-void

    .line 2341
    :cond_0
    iget-boolean v1, p1, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->inMultiWindow:Z

    if-nez v1, :cond_1

    iget-boolean v1, p1, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->showDeferredAnimation:Z

    if-eqz v1, :cond_1

    .line 2345
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    .line 2346
    .local v0, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsActivityLaunchState;->reset()V

    .line 2350
    invoke-virtual {p1}, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 2351
    new-instance v1, Lcom/android/systemui/recents/views/TaskStackView$10;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/views/TaskStackView$10;-><init>(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->post(Ljava/lang/Runnable;)Z

    .line 2335
    .end local v0    # "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    :goto_0
    return-void

    .line 2342
    :cond_1
    iget-object v1, p1, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->stack:Lcom/android/systemui/recents/model/TaskStack;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackView;->setTasks(Lcom/android/systemui/recents/model/TaskStack;Z)V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;)V
    .locals 9
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;

    .prologue
    const/4 v8, 0x0

    .line 1763
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    .line 1764
    iget-object v6, p1, Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;->packageName:Ljava/lang/String;

    iget v7, p1, Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;->userId:I

    .line 1763
    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/recents/model/TaskStack;->computeComponentsRemoved(Ljava/lang/String;I)Landroid/util/ArraySet;

    move-result-object v1

    .line 1767
    .local v1, "removedComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v3

    .line 1768
    .local v3, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1769
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    .line 1770
    .local v2, "t":Lcom/android/systemui/recents/model/Task;
    iget-object v5, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1771
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v4

    .line 1772
    .local v4, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v4, :cond_1

    .line 1774
    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskView;->dismissTask()V

    .line 1768
    .end local v4    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1777
    .restart local v4    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    sget-object v6, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    invoke-virtual {v5, v2, v6, v8}, Lcom/android/systemui/recents/model/TaskStack;->removeTask(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/AnimationProps;Z)V

    goto :goto_1

    .line 1761
    .end local v2    # "t":Lcom/android/systemui/recents/model/Task;
    .end local v4    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_2
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/PrivateModeChangedEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/PrivateModeChangedEvent;

    .prologue
    .line 2371
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "tv$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskView;

    .line 2372
    .local v0, "tv":Lcom/android/systemui/recents/views/TaskView;
    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->invalidate()V

    goto :goto_0

    .line 2370
    .end local v0    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/TaskStackChangedEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/TaskStackChangedEvent;

    .prologue
    .line 2365
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSplitLayout:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isInMultiWindowMode:Z

    if-eqz v0, :cond_0

    .line 2366
    iget-object v0, p1, Lcom/android/systemui/recents/events/activity/TaskStackChangedEvent;->stack:Lcom/android/systemui/recents/model/TaskStack;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->setTasks(Lcom/android/systemui/recents/model/TaskStack;Z)V

    .line 2364
    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;

    .prologue
    .line 1954
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1956
    .local v0, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopScroller()V

    .line 1957
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopBoundScrollAnimation()V

    .line 1958
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableCloseAllLayout:Z

    if-eqz v1, :cond_0

    .line 1959
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mBlockRelayoutTaskViews:Z

    .line 1962
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAnimationHelper:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->startDeleteAllTasksAnimation(Ljava/util/List;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    .line 1963
    new-instance v1, Lcom/android/systemui/recents/views/TaskStackView$7;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/recents/views/TaskStackView$7;-><init>(Lcom/android/systemui/recents/views/TaskStackView;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v1}, Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;->addPostAnimationCallback(Ljava/lang/Runnable;)V

    .line 1952
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/DismissTaskViewEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/DismissTaskViewEvent;

    .prologue
    .line 1949
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAnimationHelper:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/DismissTaskViewEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {p1}, Lcom/android/systemui/recents/events/ui/DismissTaskViewEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->startDeleteTaskAnimation(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    .line 1947
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/RecentsGrowingEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/RecentsGrowingEvent;

    .prologue
    .line 2401
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mResetToInitialStateWhenResized:Z

    .line 2400
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;

    .prologue
    const/4 v4, 0x0

    .line 1992
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 1993
    iget-object v3, p1, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    aput-object v3, v2, v4

    const v3, 0x7f0f02f2

    .line 1992
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1996
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    iget-object v2, p1, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v3, p1, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;->animation:Lcom/android/systemui/recents/views/AnimationProps;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/recents/model/TaskStack;->removeTask(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/AnimationProps;Z)V

    .line 1998
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableRecentsAppLock:Z

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v1, v1, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/model/Task;->isTaskLocked(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1999
    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v1, v1, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 2000
    .local v0, "lockComponentName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/recents/model/LockTaskPreference;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/model/LockTaskPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/recents/model/LockTaskPreference;->removePreference(Landroid/content/Context;Ljava/lang/String;)V

    .line 2003
    .end local v0    # "lockComponentName":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;

    iget-object v3, p1, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-direct {v2, v3}, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;-><init>(Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 2005
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2006
    iget-object v2, p1, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2005
    const/16 v3, 0x121

    invoke-static {v1, v3, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 1990
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/UpdateFreeformTaskViewVisibilityEvent;)V
    .locals 6
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/UpdateFreeformTaskViewVisibilityEvent;

    .prologue
    .line 2319
    sget-boolean v5, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformInTaskStack:Z

    if-eqz v5, :cond_0

    .line 2321
    return-void

    .line 2324
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v3

    .line 2325
    .local v3, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 2326
    .local v2, "taskViewCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 2327
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/views/TaskView;

    .line 2328
    .local v4, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    .line 2329
    .local v1, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {v1}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2330
    iget-boolean v5, p1, Lcom/android/systemui/recents/events/ui/UpdateFreeformTaskViewVisibilityEvent;->visible:Z

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/views/TaskView;->setVisibility(I)V

    .line 2326
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2330
    :cond_2
    const/4 v5, 0x4

    goto :goto_1

    .line 2317
    .end local v1    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v4    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_3
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/UserInteractionEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/UserInteractionEvent;

    .prologue
    .line 2028
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/DozeTrigger;->poke()V

    .line 2030
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getDebugFlags()Lcom/android/systemui/recents/RecentsDebugFlags;

    move-result-object v0

    .line 2031
    .local v0, "debugFlags":Lcom/android/systemui/recents/RecentsDebugFlags;
    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsDebugFlags;->isFastToggleRecentsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v2, :cond_0

    .line 2032
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v1

    .line 2033
    .local v1, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v1, :cond_0

    .line 2034
    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->getHeaderView()Lcom/android/systemui/recents/views/TaskViewHeader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskViewHeader;->cancelFocusTimerIndicator()V

    .line 2026
    .end local v1    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;)V
    .locals 13
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;

    .prologue
    .line 2077
    new-instance v9, Lcom/android/systemui/recents/views/AnimationProps;

    .line 2078
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 2077
    const/16 v2, 0xfa

    invoke-direct {v9, v2, v1}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    .line 2079
    .local v9, "animation":Lcom/android/systemui/recents/views/AnimationProps;
    const/4 v11, 0x0

    .line 2081
    .local v11, "ignoreTaskOverrides":Z
    const/4 v10, 0x0

    .line 2083
    .local v10, "forceOpacity":Z
    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    instance-of v1, v1, Lcom/android/systemui/recents/model/TaskStack$DockState;

    if-eqz v1, :cond_2

    .line 2086
    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    check-cast v0, Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 2087
    .local v0, "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    new-instance v5, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    invoke-direct {v5, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2091
    .local v5, "systemInsets":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getMeasuredHeight()I

    move-result v3

    .line 2092
    .local v3, "height":I
    iget v1, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v1

    .line 2093
    const/4 v1, 0x0

    iput v1, v5, Landroid/graphics/Rect;->bottom:I

    .line 2094
    iget-object v12, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getMeasuredWidth()I

    move-result v2

    .line 2095
    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDividerSize:I

    .line 2096
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackView;->mWindowRect:Landroid/graphics/Rect;

    .line 2094
    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/recents/model/TaskStack$DockState;->getDockedTaskStackBounds(Landroid/graphics/Rect;IIILandroid/graphics/Rect;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;Landroid/content/res/Resources;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2097
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v1, v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setSystemInsets(Landroid/graphics/Rect;)Z

    .line 2098
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mWindowRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackBounds:Landroid/graphics/Rect;

    .line 2099
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-static {v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->getStackStateForStack(Lcom/android/systemui/recents/model/TaskStack;)Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    move-result-object v7

    .line 2098
    invoke-virtual {v1, v2, v4, v6, v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->initialize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;)V

    .line 2100
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 2101
    const/4 v11, 0x1

    .line 2130
    .end local v0    # "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    .end local v3    # "height":I
    .end local v5    # "systemInsets":Landroid/graphics/Rect;
    :goto_0
    if-eqz v10, :cond_0

    .line 2131
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/systemui/recents/RecentsConfiguration;->forceOpacity:Z

    .line 2134
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v9, v1, v11}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/recents/views/AnimationProps;Landroid/util/ArrayMap;Z)V

    .line 2136
    if-eqz v10, :cond_1

    .line 2137
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/systemui/recents/RecentsConfiguration;->forceOpacity:Z

    .line 2076
    :cond_1
    return-void

    .line 2103
    :cond_2
    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    instance-of v1, v1, Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    if-eqz v1, :cond_4

    .line 2104
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->isInMultiWindowMode:Z

    iput-boolean v2, v1, Lcom/android/systemui/recents/RecentsConfiguration;->isSplitScreenLayout:Z

    .line 2107
    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->removeIgnoreTask(Lcom/android/systemui/recents/model/Task;)V

    .line 2108
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSecondViewExpanded:Z

    if-eqz v1, :cond_3

    .line 2109
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDrageStartedScrollP:F

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScroll(F)V

    .line 2112
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutToStableBounds()V

    .line 2113
    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->addIgnoreTask(Lcom/android/systemui/recents/model/Task;)V

    .line 2114
    const/4 v10, 0x1

    goto :goto_0

    .line 2117
    :cond_4
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->isInMultiWindowMode:Z

    iput-boolean v2, v1, Lcom/android/systemui/recents/RecentsConfiguration;->isSplitScreenLayout:Z

    .line 2120
    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->removeIgnoreTask(Lcom/android/systemui/recents/model/Task;)V

    .line 2122
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSecondViewExpanded:Z

    if-eqz v1, :cond_5

    .line 2123
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDrageStartedScrollP:F

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScroll(F)V

    .line 2126
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutToStableBounds()V

    .line 2127
    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->addIgnoreTask(Lcom/android/systemui/recents/model/Task;)V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;)V
    .locals 6
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;

    .prologue
    const/16 v5, 0xfa

    .line 2230
    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->removeIgnoreTask(Lcom/android/systemui/recents/model/Task;)V

    .line 2231
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutToStableBounds()V

    .line 2234
    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/Utilities;->setViewFrameFromTranslation(Landroid/view/View;)V

    .line 2237
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 2238
    .local v0, "animationOverrides":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/AnimationProps;>;"
    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;->task:Lcom/android/systemui/recents/model/Task;

    new-instance v2, Lcom/android/systemui/recents/views/AnimationProps;

    .line 2239
    sget-object v3, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 2240
    invoke-virtual {p1}, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v4

    .line 2238
    invoke-direct {v2, v5, v3, v4}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2241
    new-instance v1, Lcom/android/systemui/recents/views/AnimationProps;

    .line 2242
    sget-object v2, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 2241
    invoke-direct {v1, v5, v2}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/recents/views/AnimationProps;)V

    .line 2243
    invoke-virtual {p1}, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 2228
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;)V
    .locals 10
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;

    .prologue
    const/16 v8, 0x12c

    const/16 v9, 0xfa

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 2144
    iget-object v6, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    instance-of v6, v6, Lcom/android/systemui/recents/model/TaskStack$DockState;

    if-eqz v6, :cond_5

    .line 2147
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->clearUnfocusedTaskOverrides()V

    .line 2149
    sget-boolean v6, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSnapAction:Z

    if-eqz v6, :cond_0

    .line 2150
    sget-boolean v6, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSecondViewExpanded:Z

    if-eqz v6, :cond_2

    .line 2151
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v5

    cmpg-float v5, v5, v7

    if-gez v5, :cond_1

    const/4 v4, -0x1

    .line 2152
    .local v4, "targetScroll":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v7, v7, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    add-float/2addr v6, v7

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v8, v7}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->animateScroll(FILjava/lang/Runnable;)V

    .line 2168
    .end local v4    # "targetScroll":I
    :cond_0
    :goto_1
    return-void

    .line 2151
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v5

    float-to-int v4, v5

    .restart local v4    # "targetScroll":I
    goto :goto_0

    .line 2153
    .end local v4    # "targetScroll":I
    :cond_2
    sget-boolean v6, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableTransParentBehindTaskView:Z

    if-eqz v6, :cond_0

    .line 2154
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v6

    cmpg-float v6, v6, v7

    if-gez v6, :cond_3

    .line 2155
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v6

    float-to-int v6, v6

    add-int/lit8 v4, v6, -0x1

    .line 2157
    .restart local v4    # "targetScroll":I
    :goto_2
    if-gt v4, v5, :cond_4

    .line 2158
    add-int/lit8 v4, v4, 0x1

    .line 2162
    :goto_3
    int-to-float v5, v4

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v6, v6, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    add-float v3, v5, v6

    .line 2163
    .local v3, "targetP":F
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v8, v6}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->animateScroll(FILjava/lang/Runnable;)V

    goto :goto_1

    .line 2156
    .end local v3    # "targetP":F
    .end local v4    # "targetScroll":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v6

    float-to-int v4, v6

    goto :goto_2

    .line 2160
    .restart local v4    # "targetScroll":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2171
    .end local v4    # "targetScroll":I
    :cond_5
    iget-object v6, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v6}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v2

    .line 2173
    .local v2, "isFreeformTask":Z
    if-nez v2, :cond_b

    iget-object v6, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    if-ne v6, v7, :cond_b

    move v1, v5

    .line 2176
    .local v1, "hasChangedStacks":Z
    :cond_6
    :goto_4
    if-eqz v1, :cond_a

    .line 2180
    iget-object v6, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    if-ne v6, v7, :cond_c

    .line 2181
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    iget-object v7, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->task:Lcom/android/systemui/recents/model/Task;

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Lcom/android/systemui/recents/model/TaskStack;->moveTaskToStack(Lcom/android/systemui/recents/model/Task;I)V

    .line 2188
    :cond_7
    :goto_5
    sget-boolean v6, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableDozeTrigger:Z

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v6}, Lcom/android/systemui/recents/misc/DozeTrigger;->isAsleep()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 2189
    :cond_8
    iget-object v6, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskView;->setNoUserInteractionState()V

    .line 2192
    :cond_9
    invoke-virtual {p0, v5}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 2195
    new-instance v5, Lcom/android/systemui/recents/views/TaskStackView$8;

    invoke-direct {v5, p0, p1}, Lcom/android/systemui/recents/views/TaskStackView$8;-><init>(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;)V

    invoke-virtual {p1, v5}, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->addPostAnimationCallback(Ljava/lang/Runnable;)V

    .line 2205
    :cond_a
    iget-object v5, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v5}, Lcom/android/systemui/recents/views/TaskStackView;->removeIgnoreTask(Lcom/android/systemui/recents/model/Task;)V

    .line 2209
    sget-boolean v5, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v5, :cond_d

    .line 2210
    iget-object v5, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    instance-of v5, v5, Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    .line 2209
    if-eqz v5, :cond_d

    .line 2212
    return-void

    .line 2174
    .end local v1    # "hasChangedStacks":Z
    :cond_b
    if-eqz v2, :cond_6

    iget-object v6, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    if-ne v6, v7, :cond_6

    move v1, v5

    goto :goto_4

    .line 2182
    .restart local v1    # "hasChangedStacks":Z
    :cond_c
    iget-object v6, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    if-ne v6, v7, :cond_7

    .line 2183
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    iget-object v7, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v6, v7, v5}, Lcom/android/systemui/recents/model/TaskStack;->moveTaskToStack(Lcom/android/systemui/recents/model/Task;I)V

    goto :goto_5

    .line 2215
    :cond_d
    iget-object v5, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-static {v5}, Lcom/android/systemui/recents/misc/Utilities;->setViewFrameFromTranslation(Landroid/view/View;)V

    .line 2219
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 2220
    .local v0, "animationOverrides":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/AnimationProps;>;"
    iget-object v5, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->task:Lcom/android/systemui/recents/model/Task;

    new-instance v6, Lcom/android/systemui/recents/views/AnimationProps;

    .line 2221
    sget-object v7, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 2222
    invoke-virtual {p1}, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v8

    .line 2220
    invoke-direct {v6, v9, v7, v8}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2223
    new-instance v5, Lcom/android/systemui/recents/views/AnimationProps;

    .line 2224
    sget-object v6, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 2223
    invoke-direct {v5, v9, v6}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    invoke-virtual {p0, v5}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/recents/views/AnimationProps;)V

    .line 2225
    invoke-virtual {p1}, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 2142
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;)V
    .locals 6
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;

    .prologue
    const/4 v5, 0x0

    .line 2041
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDrageStartedScrollP:F

    .line 2044
    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->addIgnoreTask(Lcom/android/systemui/recents/model/Task;)V

    .line 2046
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformInTaskStack:Z

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2048
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v2, v2, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    invoke-virtual {v1, v2, v5}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->animateScroll(FLjava/lang/Runnable;)V

    .line 2052
    :cond_0
    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v1

    const v2, 0x3f866666    # 1.05f

    mul-float v0, v1, v2

    .line 2053
    .local v0, "finalScale":F
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v2, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v3

    .line 2054
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 2053
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 2055
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSecondViewExpanded:Z

    if-nez v1, :cond_1

    .line 2056
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableTransParentBehindTaskView:Z

    .line 2055
    if-eqz v1, :cond_2

    .line 2057
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->animationScale:F

    .line 2058
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    .line 2062
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v2, v2, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxTranslationZ:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iput v2, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    .line 2063
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    .line 2064
    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 2065
    new-instance v3, Lcom/android/systemui/recents/views/AnimationProps;

    sget-object v4, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const/16 v5, 0xaf

    invoke-direct {v3, v5, v4}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    .line 2064
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    .line 2039
    return-void

    .line 2060
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragStartInitializeDropTargetsEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/dragndrop/DragStartInitializeDropTargetsEvent;

    .prologue
    .line 2069
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 2070
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasFreeformWorkspaceSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2071
    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartInitializeDropTargetsEvent;->handler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->registerDropTargetForCurrentDrag(Lcom/android/systemui/recents/views/DropTarget;)V

    .line 2072
    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartInitializeDropTargetsEvent;->handler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->registerDropTargetForCurrentDrag(Lcom/android/systemui/recents/views/DropTarget;)V

    .line 2068
    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/focus/DismissFocusedTaskViewEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/focus/DismissFocusedTaskViewEvent;

    .prologue
    .line 1938
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v1, :cond_1

    .line 1939
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v0

    .line 1940
    .local v0, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v0, :cond_0

    .line 1941
    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->dismissTask()V

    .line 1943
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->resetFocusedTask(Lcom/android/systemui/recents/model/Task;)V

    .line 1937
    .end local v0    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_1
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/focus/FocusNextTaskViewEvent;)V
    .locals 6
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/focus/FocusNextTaskViewEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2011
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopScroller()V

    .line 2012
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopBoundScrollAnimation()V

    .line 2015
    iget v5, p1, Lcom/android/systemui/recents/events/ui/focus/FocusNextTaskViewEvent;->timerIndicatorDuration:I

    move-object v0, p0

    move v3, v1

    move v4, v2

    .line 2014
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskStackView;->setRelativeFocusedTask(ZZZZI)V

    .line 2009
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/focus/FocusPreviousTaskViewEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/focus/FocusPreviousTaskViewEvent;

    .prologue
    const/4 v1, 0x0

    .line 2020
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopScroller()V

    .line 2021
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopBoundScrollAnimation()V

    .line 2023
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v1, v0}, Lcom/android/systemui/recents/views/TaskStackView;->setRelativeFocusedTask(ZZZ)V

    .line 2018
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 339
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 340
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    .line 338
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1469
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 1472
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 1473
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasFreeformWorkspaceSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1474
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable;->getAlpha()I

    move-result v1

    if-lez v1, :cond_0

    .line 1475
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1468
    :cond_0
    return-void
.end method

.method onFirstLayout()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1412
    const-string/jumbo v4, "TaskStackView"

    const-string/jumbo v5, "prepareForEnterAnimation"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAnimationHelper:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->prepareForEnterAnimation()V

    .line 1418
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackState()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    move-result-object v4

    iget v1, v4, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->freeformBackgroundAlpha:I

    .line 1419
    .local v1, "ffBgAlpha":I
    new-instance v4, Lcom/android/systemui/recents/views/AnimationProps;

    .line 1420
    sget-object v5, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 1419
    const/16 v6, 0x96

    invoke-direct {v4, v6, v5}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/recents/views/TaskStackView;->animateFreeformWorkspaceBackgroundAlpha(ILcom/android/systemui/recents/views/AnimationProps;)V

    .line 1424
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 1425
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v3

    .line 1426
    .local v3, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/RecentsActivityLaunchState;->getInitialFocusTaskIndex(I)I

    move-result v2

    .line 1427
    .local v2, "focusedTaskIndex":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 1428
    invoke-direct {p0, v2, v7, v7}, Lcom/android/systemui/recents/views/TaskStackView;->setFocusedTask(IZZ)Z

    .line 1433
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v4

    const v5, 0x3e99999a    # 0.3f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    .line 1434
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 1435
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/recents/events/activity/ShowStackActionButtonEvent;

    invoke-direct {v5, v7}, Lcom/android/systemui/recents/events/activity/ShowStackActionButtonEvent;-><init>(Z)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1410
    :goto_0
    return-void

    .line 1437
    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/recents/events/activity/HideStackActionButtonEvent;

    invoke-direct {v5}, Lcom/android/systemui/recents/events/activity/HideStackActionButtonEvent;-><init>()V

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_0
.end method

.method public onFocusStateChanged(II)V
    .locals 1
    .param p1, "prevFocusState"    # I
    .param p2, "curFocusState"    # I

    .prologue
    .line 1732
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/recents/views/AnimationProps;

    if-nez v0, :cond_0

    .line 1733
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->poke()V

    .line 1734
    sget-object v0, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViewsOnNextFrame(Lcom/android/systemui/recents/views/AnimationProps;)V

    .line 1731
    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v5, 0x0

    .line 1170
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1171
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v4

    .line 1172
    .local v4, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 1173
    .local v3, "taskViewCount":I
    if-lez v3, :cond_0

    .line 1174
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskView;

    .line 1175
    .local v0, "backMostTask":Lcom/android/systemui/recents/views/TaskView;
    add-int/lit8 v5, v3, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/views/TaskView;

    .line 1176
    .local v1, "frontMostTask":Lcom/android/systemui/recents/views/TaskView;
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 1177
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 1178
    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1180
    .end local v0    # "backMostTask":Lcom/android/systemui/recents/views/TaskView;
    .end local v1    # "frontMostTask":Lcom/android/systemui/recents/views/TaskView;
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 1182
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 1183
    .local v2, "stackHeight":I
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v5

    int-to-float v6, v2

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 1184
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v5, v5, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    int-to-float v6, v2

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 1169
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v4, 0x1

    .line 1189
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1190
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    .line 1191
    .local v2, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 1192
    .local v1, "taskViewCount":I
    if-le v1, v4, :cond_1

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v3, :cond_1

    .line 1193
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1194
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v0

    .line 1195
    .local v0, "focusedTaskIndex":I
    if-lez v0, :cond_0

    .line 1196
    const/16 v3, 0x1000

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1198
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_1

    .line 1199
    const/16 v3, 0x2000

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1188
    .end local v0    # "focusedTaskIndex":I
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v4, 0x0

    .line 1360
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1361
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1362
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/ViewPool;->getViews()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1363
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 1364
    .local v1, "taskViewCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1365
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/recents/views/TaskStackView;->layoutTaskView(ZLcom/android/systemui/recents/views/TaskView;)V

    .line 1364
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1368
    :cond_0
    if-eqz p1, :cond_1

    .line 1369
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->isScrollOutOfBounds()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1370
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->boundScroll()Z

    .line 1375
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mBlockRelayoutTaskViews:Z

    if-nez v2, :cond_2

    .line 1378
    sget-object v2, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/recents/views/AnimationProps;)V

    .line 1379
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackView;->clipTaskViews()V

    .line 1382
    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mEnterAnimationComplete:Z

    if-eqz v2, :cond_3

    .line 1358
    :goto_1
    return-void

    .line 1383
    :cond_3
    iput-boolean v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    .line 1384
    iput v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInitialState:I

    .line 1385
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->onFirstLayout()V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v11, 0x0

    .line 1284
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInMeasureLayout:Z

    .line 1285
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 1286
    .local v10, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 1291
    .local v6, "height":I
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v11, v11, v10, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1292
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v3, v3, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v4, v4, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    .line 1291
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getTaskStackBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 1293
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1294
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableStackBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1295
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1296
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v11, v11, v10, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1297
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v11, v11, v10, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1301
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableWindowRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableStackBounds:Landroid/graphics/Rect;

    .line 1302
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-static {v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->getStackStateForStack(Lcom/android/systemui/recents/model/TaskStack;)Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    move-result-object v4

    .line 1301
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->initialize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;)V

    .line 1303
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mWindowRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackBounds:Landroid/graphics/Rect;

    .line 1304
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-static {v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->getStackStateForStack(Lcom/android/systemui/recents/model/TaskStack;)Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    move-result-object v4

    .line 1303
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->initialize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;)V

    .line 1305
    invoke-virtual {p0, v11}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 1309
    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLastWidth:I

    if-ne v10, v0, :cond_1

    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLastHeight:I

    if-eq v6, v0, :cond_6

    .line 1310
    :cond_1
    iget-boolean v8, p0, Lcom/android/systemui/recents/views/TaskStackView;->mResetToInitialStateWhenResized:Z

    .line 1311
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInitialState:I

    if-eqz v0, :cond_7

    .line 1313
    :cond_2
    :goto_1
    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInitialState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    if-eqz v8, :cond_4

    .line 1314
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->updateToInitialState()V

    .line 1315
    iput-boolean v11, p0, Lcom/android/systemui/recents/views/TaskStackView;->mResetToInitialStateWhenResized:Z

    .line 1317
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    if-nez v0, :cond_5

    .line 1318
    iput v11, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInitialState:I

    .line 1323
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v0

    invoke-virtual {p0, v0, v11}, Lcom/android/systemui/recents/views/TaskStackView;->bindVisibleTaskViews(FZ)V

    .line 1326
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1327
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1328
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/ViewPool;->getViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1329
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    .line 1330
    .local v9, "taskViewCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v9, :cond_8

    .line 1331
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskView;

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->measureTaskView(Lcom/android/systemui/recents/views/TaskView;)V

    .line 1330
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1309
    .end local v7    # "i":I
    .end local v9    # "taskViewCount":I
    :cond_6
    const/4 v8, 0x0

    .local v8, "resetToInitialState":Z
    goto :goto_0

    .line 1311
    .end local v8    # "resetToInitialState":Z
    :cond_7
    if-eqz v8, :cond_5

    goto :goto_1

    .line 1334
    .restart local v7    # "i":I
    .restart local v9    # "taskViewCount":I
    :cond_8
    invoke-virtual {p0, v10, v6}, Lcom/android/systemui/recents/views/TaskStackView;->setMeasuredDimension(II)V

    .line 1335
    iput v10, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLastWidth:I

    .line 1336
    iput v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLastHeight:I

    .line 1337
    iput-boolean v11, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInMeasureLayout:Z

    .line 1283
    return-void
.end method

.method public onPickUpViewFromPool(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Z)V
    .locals 8
    .param p1, "tv"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p3, "isNewView"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1646
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v5, p2}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v2

    .line 1647
    .local v2, "taskIndex":I
    invoke-direct {p0, p2, v2}, Lcom/android/systemui/recents/views/TaskStackView;->findTaskViewInsertIndex(Lcom/android/systemui/recents/model/Task;I)I

    move-result v0

    .line 1650
    .local v0, "insertIndex":I
    if-eqz p3, :cond_6

    .line 1651
    iget-boolean v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInMeasureLayout:Z

    if-eqz v5, :cond_4

    .line 1654
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/recents/views/TaskStackView;->addView(Landroid/view/View;I)V

    .line 1670
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewsList()V

    .line 1673
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recents/views/TaskStackView;->bindTaskView(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;)V

    .line 1676
    sget-boolean v5, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableDozeTrigger:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v5}, Lcom/android/systemui/recents/misc/DozeTrigger;->isAsleep()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1677
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->setNoUserInteractionState()V

    .line 1681
    :cond_1
    invoke-virtual {p1, p0}, Lcom/android/systemui/recents/views/TaskView;->setCallbacks(Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;)V

    .line 1682
    invoke-virtual {p1, v3}, Lcom/android/systemui/recents/views/TaskView;->setTouchEnabled(Z)V

    .line 1683
    invoke-virtual {p1, v3}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 1684
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    if-ne v5, p2, :cond_2

    .line 1685
    invoke-virtual {p1, v3, v4}, Lcom/android/systemui/recents/views/TaskView;->setFocusedState(ZZ)V

    .line 1686
    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStartTimerIndicatorDuration:I

    if-lez v5, :cond_2

    .line 1688
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getHeaderView()Lcom/android/systemui/recents/views/TaskViewHeader;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStartTimerIndicatorDuration:I

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/views/TaskViewHeader;->startFocusTimerIndicator(I)V

    .line 1689
    iput v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStartTimerIndicatorDuration:I

    .line 1694
    :cond_2
    iget-boolean v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mScreenPinningEnabled:Z

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v5

    .line 1695
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    sget-boolean v7, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformInTaskStack:Z

    if-eqz v7, :cond_7

    :goto_1
    invoke-virtual {v6, v3}, Lcom/android/systemui/recents/model/TaskStack;->getStackFrontMostTask(Z)Lcom/android/systemui/recents/model/Task;

    move-result-object v3

    .line 1694
    if-ne v5, v3, :cond_3

    .line 1696
    invoke-virtual {p1, v4, v4}, Lcom/android/systemui/recents/views/TaskView;->showActionButton(ZI)V

    .line 1644
    :cond_3
    return-void

    .line 1658
    :cond_4
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1659
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_5

    .line 1660
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    .line 1662
    :cond_5
    invoke-virtual {p0, p1, v0, v1, v3}, Lcom/android/systemui/recents/views/TaskStackView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 1663
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/TaskStackView;->measureTaskView(Lcom/android/systemui/recents/views/TaskView;)V

    .line 1664
    invoke-direct {p0, v3, p1}, Lcom/android/systemui/recents/views/TaskStackView;->layoutTaskView(ZLcom/android/systemui/recents/views/TaskView;)V

    goto :goto_0

    .line 1667
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {p0, p1, v0, v5}, Lcom/android/systemui/recents/views/TaskStackView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_7
    move v3, v4

    .line 1695
    goto :goto_1
.end method

.method public bridge synthetic onPickUpViewFromPool(Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0
    .param p1, "tv"    # Ljava/lang/Object;
    .param p2, "task"    # Ljava/lang/Object;
    .param p3, "isNewView"    # Z

    .prologue
    .line 1644
    check-cast p1, Lcom/android/systemui/recents/views/TaskView;

    .end local p1    # "tv":Ljava/lang/Object;
    check-cast p2, Lcom/android/systemui/recents/model/Task;

    .end local p2    # "task":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/recents/views/TaskStackView;->onPickUpViewFromPool(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Z)V

    return-void
.end method

.method onReload(Z)V
    .locals 8
    .param p1, "isResumingFromVisible"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 347
    if-nez p1, :cond_0

    .line 349
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getFocusedTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskStackView;->resetFocusedTask(Lcom/android/systemui/recents/model/Task;)V

    .line 353
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 354
    .local v2, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 355
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/ViewPool;->getViews()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 356
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 357
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v3, p1}, Lcom/android/systemui/recents/views/TaskView;->onReload(Z)V

    .line 356
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 361
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackView;->readSystemFlags()V

    .line 362
    iput-boolean v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewsClipDirty:Z

    .line 363
    iput-boolean v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mEnterAnimationComplete:Z

    .line 364
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    .line 365
    if-eqz p1, :cond_2

    .line 367
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackState()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    move-result-object v3

    iget v0, v3, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->freeformBackgroundAlpha:I

    .line 368
    .local v0, "ffBgAlpha":I
    new-instance v3, Lcom/android/systemui/recents/views/AnimationProps;

    .line 369
    sget-object v4, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 368
    const/16 v5, 0x96

    invoke-direct {v3, v5, v4}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/recents/views/TaskStackView;->animateFreeformWorkspaceBackgroundAlpha(ILcom/android/systemui/recents/views/AnimationProps;)V

    .line 378
    .end local v0    # "ffBgAlpha":I
    :goto_1
    iput-boolean v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    .line 379
    iput v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInitialState:I

    .line 381
    iput v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingPrepareAnimation:I

    .line 382
    iput-boolean v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mBlockRelayoutTaskViews:Z

    .line 384
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->requestLayout()V

    .line 346
    return-void

    .line 371
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->reset()V

    .line 372
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->reset()V

    .line 373
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->reset()V

    goto :goto_1
.end method

.method public onReturnViewToPool(Lcom/android/systemui/recents/views/TaskView;)V
    .locals 3
    .param p1, "tv"    # Lcom/android/systemui/recents/views/TaskView;

    .prologue
    const/4 v2, 0x0

    .line 1621
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    .line 1624
    .local v0, "task":Lcom/android/systemui/recents/model/Task;
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/TaskStackView;->unbindTaskView(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;)V

    .line 1627
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->resetViewProperties()V

    .line 1628
    invoke-virtual {p1, v2, v2}, Lcom/android/systemui/recents/views/TaskView;->setFocusedState(ZZ)V

    .line 1630
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->clearAccessibilityFocus()V

    .line 1632
    invoke-virtual {p1, v2}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 1633
    iget-boolean v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mScreenPinningEnabled:Z

    if-eqz v1, :cond_0

    .line 1634
    const/4 v1, 0x0

    invoke-virtual {p1, v2, v2, v2, v1}, Lcom/android/systemui/recents/views/TaskView;->hideActionButton(ZIZLandroid/animation/Animator$AnimatorListener;)V

    .line 1638
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackView;->detachViewFromParent(Landroid/view/View;)V

    .line 1640
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewsList()V

    .line 1620
    return-void
.end method

.method public bridge synthetic onReturnViewToPool(Ljava/lang/Object;)V
    .locals 0
    .param p1, "tv"    # Ljava/lang/Object;

    .prologue
    .line 1620
    check-cast p1, Lcom/android/systemui/recents/views/TaskView;

    .end local p1    # "tv":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackView;->onReturnViewToPool(Lcom/android/systemui/recents/views/TaskView;)V

    return-void
.end method

.method public onStackScrollChanged(FFLcom/android/systemui/recents/views/AnimationProps;)V
    .locals 3
    .param p1, "prevScroll"    # F
    .param p2, "curScroll"    # F
    .param p3, "animation"    # Lcom/android/systemui/recents/views/AnimationProps;

    .prologue
    const v1, 0x3e99999a    # 0.3f

    .line 1742
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->poke()V

    .line 1743
    if-eqz p3, :cond_0

    .line 1744
    invoke-virtual {p0, p3}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViewsOnNextFrame(Lcom/android/systemui/recents/views/AnimationProps;)V

    .line 1747
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mEnterAnimationComplete:Z

    if-eqz v0, :cond_1

    .line 1748
    cmpl-float v0, p1, v1

    if-lez v0, :cond_2

    .line 1749
    cmpg-float v0, p2, v1

    if-gtz v0, :cond_2

    .line 1750
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1751
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/ShowStackActionButtonEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/activity/ShowStackActionButtonEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1741
    :cond_1
    :goto_0
    return-void

    .line 1752
    :cond_2
    cmpg-float v0, p1, v1

    if-gez v0, :cond_1

    .line 1753
    cmpl-float v0, p2, v1

    if-ltz v0, :cond_1

    .line 1754
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/HideStackActionButtonEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/HideStackActionButtonEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_0
.end method

.method public onStackTaskAdded(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;)V
    .locals 3
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p2, "newTask"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 1509
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 1512
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    if-eqz v0, :cond_0

    .line 1513
    sget-object v0, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    .line 1512
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/recents/views/AnimationProps;)V

    .line 1507
    return-void

    .line 1514
    :cond_0
    new-instance v0, Lcom/android/systemui/recents/views/AnimationProps;

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const/16 v2, 0xc8

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    goto :goto_0
.end method

.method public onStackTaskRemoved(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/AnimationProps;ZZ)V
    .locals 7
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p2, "removedTask"    # Lcom/android/systemui/recents/model/Task;
    .param p3, "newFrontMostTask"    # Lcom/android/systemui/recents/model/Task;
    .param p4, "animation"    # Lcom/android/systemui/recents/views/AnimationProps;
    .param p5, "fromDockGesture"    # Z
    .param p6, "launchHome"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1523
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    if-ne v4, p2, :cond_0

    .line 1524
    invoke-virtual {p0, p2}, Lcom/android/systemui/recents/views/TaskStackView;->resetFocusedTask(Lcom/android/systemui/recents/model/Task;)V

    .line 1529
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v1

    .line 1530
    .local v1, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v1, :cond_1

    .line 1531
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-virtual {v4, v1}, Lcom/android/systemui/recents/views/ViewPool;->returnViewToPool(Ljava/lang/Object;)V

    .line 1535
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/systemui/recents/views/TaskStackView;->removeIgnoreTask(Lcom/android/systemui/recents/model/Task;)V

    .line 1538
    if-eqz p4, :cond_2

    .line 1539
    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 1540
    invoke-virtual {p0, p4}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/recents/views/AnimationProps;)V

    .line 1544
    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mScreenPinningEnabled:Z

    if-eqz v4, :cond_3

    if-eqz p3, :cond_3

    .line 1545
    invoke-virtual {p0, p3}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v0

    .line 1546
    .local v0, "frontTv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v0, :cond_3

    .line 1547
    const/16 v4, 0xc8

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/recents/views/TaskView;->showActionButton(ZI)V

    .line 1552
    .end local v0    # "frontTv":Lcom/android/systemui/recents/views/TaskView;
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v4

    if-nez v4, :cond_6

    .line 1554
    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableCloseAllLayout:Z

    if-eqz v4, :cond_4

    .line 1555
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;

    invoke-direct {v5, v2}, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;-><init>(Z)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1558
    :cond_4
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;

    if-eqz p5, :cond_7

    .line 1559
    const v4, 0x7f0f0455

    .line 1561
    :goto_0
    if-eqz p6, :cond_5

    if-eqz p5, :cond_8

    .line 1558
    :cond_5
    :goto_1
    invoke-direct {v6, v4, v2}, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;-><init>(IZ)V

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1522
    :cond_6
    return-void

    .line 1560
    :cond_7
    const v4, 0x7f0f0456

    goto :goto_0

    :cond_8
    move v2, v3

    .line 1561
    goto :goto_1
.end method

.method public onStackTasksRemoved(Lcom/android/systemui/recents/model/TaskStack;)V
    .locals 6
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;

    .prologue
    const/4 v4, 0x0

    .line 1568
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getFocusedTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskStackView;->resetFocusedTask(Lcom/android/systemui/recents/model/Task;)V

    .line 1571
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1572
    .local v1, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1573
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1574
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/recents/views/ViewPool;->returnViewToPool(Ljava/lang/Object;)V

    .line 1573
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1578
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 1581
    iput-boolean v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mBlockRelayoutTaskViews:Z

    .line 1585
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;

    .line 1586
    const v4, 0x7f0f0456

    .line 1587
    const/4 v5, 0x1

    .line 1585
    invoke-direct {v3, v4, v5}, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;-><init>(IZ)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1566
    return-void
.end method

.method public onStackTasksUpdated(Lcom/android/systemui/recents/model/TaskStack;)V
    .locals 5
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;

    .prologue
    .line 1593
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 1594
    sget-object v4, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/recents/views/AnimationProps;)V

    .line 1598
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    .line 1599
    .local v2, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 1600
    .local v1, "taskViewCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 1601
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/TaskView;

    .line 1602
    .local v3, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/recents/views/TaskStackView;->bindTaskView(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;)V

    .line 1605
    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableDozeTrigger:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/DozeTrigger;->isAsleep()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1606
    :cond_0
    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->setNoUserInteractionState()V

    .line 1600
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1591
    .end local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_2
    return-void
.end method

.method public onTaskViewClipStateChanged(Lcom/android/systemui/recents/views/TaskView;)V
    .locals 1
    .param p1, "tv"    # Lcom/android/systemui/recents/views/TaskView;

    .prologue
    .line 1722
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewsClipDirty:Z

    if-nez v0, :cond_0

    .line 1723
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewsClipDirty:Z

    .line 1724
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->invalidate()V

    .line 1721
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 3
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1211
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1212
    return v2

    .line 1214
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1224
    return v1

    .line 1216
    :sswitch_0
    invoke-virtual {p0, v2, v1, v1}, Lcom/android/systemui/recents/views/TaskStackView;->setRelativeFocusedTask(ZZZ)V

    .line 1217
    return v2

    .line 1220
    :sswitch_1
    invoke-virtual {p0, v1, v1, v1}, Lcom/android/systemui/recents/views/TaskStackView;->setRelativeFocusedTask(ZZZ)V

    .line 1221
    return v2

    .line 1214
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public relayoutTaskViews(Lcom/android/systemui/recents/views/AnimationProps;)V
    .locals 2
    .param p1, "animation"    # Lcom/android/systemui/recents/views/AnimationProps;

    .prologue
    .line 701
    const/4 v0, 0x0

    .line 702
    const/4 v1, 0x0

    .line 701
    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/recents/views/AnimationProps;Landroid/util/ArrayMap;Z)V

    .line 700
    return-void
.end method

.method relayoutTaskViewsOnNextFrame(Lcom/android/systemui/recents/views/AnimationProps;)V
    .locals 0
    .param p1, "animation"    # Lcom/android/systemui/recents/views/AnimationProps;

    .prologue
    .line 756
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/recents/views/AnimationProps;

    .line 757
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->invalidate()V

    .line 755
    return-void
.end method

.method public reloadOnConfigurationChange(Z)V
    .locals 5
    .param p1, "displayUpdated"    # Z

    .prologue
    .line 2406
    if-eqz p1, :cond_0

    .line 2407
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayOrientation:I

    .line 2408
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    .line 2410
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 2411
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2412
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/ViewPool;->getViews()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2413
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 2414
    .local v1, "taskViewCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2415
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayOrientation:I

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/recents/views/TaskView;->onConfigurationChanged(ILandroid/graphics/Rect;)V

    .line 2414
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2419
    .end local v0    # "i":I
    .end local v1    # "taskViewCount":I
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->reloadOnConfigurationChange(Landroid/content/Context;)V

    .line 2420
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->reloadOnConfigurationChange(Landroid/content/Context;)V

    .line 2404
    return-void
.end method

.method removeIgnoreTask(Lcom/android/systemui/recents/model/Task;)V
    .locals 2
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 492
    return-void
.end method

.method resetFocusedTask(Lcom/android/systemui/recents/model/Task;)V
    .locals 3
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1152
    if-eqz p1, :cond_0

    .line 1153
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v0

    .line 1154
    .local v0, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v0, :cond_0

    .line 1155
    invoke-virtual {v0, v2, v2}, Lcom/android/systemui/recents/views/TaskView;->setFocusedState(ZZ)V

    .line 1158
    .end local v0    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_0
    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    .line 1151
    return-void
.end method

.method public setRelativeFocusedTask(ZZZ)V
    .locals 1
    .param p1, "forward"    # Z
    .param p2, "stackTasksOnly"    # Z
    .param p3, "animated"    # Z

    .prologue
    .line 1015
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/TaskStackView;->setRelativeFocusedTask(ZZZZ)V

    .line 1014
    return-void
.end method

.method public setRelativeFocusedTask(ZZZZ)V
    .locals 6
    .param p1, "forward"    # Z
    .param p2, "stackTasksOnly"    # Z
    .param p3, "animated"    # Z
    .param p4, "cancelWindowAnimations"    # Z

    .prologue
    .line 1032
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskStackView;->setRelativeFocusedTask(ZZZZI)V

    .line 1031
    return-void
.end method

.method public setRelativeFocusedTask(ZZZZI)V
    .locals 15
    .param p1, "forward"    # Z
    .param p2, "stackTasksOnly"    # Z
    .param p3, "animated"    # Z
    .param p4, "cancelWindowAnimations"    # Z
    .param p5, "timerIndicatorDuration"    # I

    .prologue
    .line 1051
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    iget-object v12, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v11, v12}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v1

    .line 1052
    .local v1, "newIndex":I
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v11, :cond_b

    .line 1053
    if-eqz p2, :cond_7

    .line 1054
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v11}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v7

    .line 1055
    .local v7, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/model/Task;>;"
    sget-boolean v11, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformInTaskStack:Z

    if-nez v11, :cond_4

    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v11}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1057
    move/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->getFrontMostTaskView(Z)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v9

    .line 1058
    .local v9, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v9, :cond_0

    .line 1059
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v1

    .line 1078
    .end local v7    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/model/Task;>;"
    .end local v9    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_0
    :goto_0
    if-eqz p1, :cond_9

    .line 1079
    sget-boolean v11, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableMoreButton:Z

    if-nez v11, :cond_1

    sget-boolean v11, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableAppList:Z

    if-eqz v11, :cond_2

    .line 1080
    :cond_1
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v11}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-ne v1, v11, :cond_2

    .line 1081
    const/4 v1, -0x1

    .line 1082
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v11}, Lcom/android/systemui/recents/views/TaskStackView;->resetFocusedTask(Lcom/android/systemui/recents/model/Task;)V

    .line 1083
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v11

    new-instance v12, Lcom/android/systemui/recents/events/ui/ToggleRecentsButtonsContainerEvent;

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-direct {v12, v13, v14}, Lcom/android/systemui/recents/events/ui/ToggleRecentsButtonsContainerEvent;-><init>(ZZ)V

    invoke-virtual {v11, v12}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1137
    :cond_2
    :goto_1
    const/4 v11, -0x1

    if-eq v1, v11, :cond_3

    .line 1138
    const/4 v11, 0x1

    .line 1139
    const/4 v12, 0x1

    .line 1138
    move/from16 v0, p5

    invoke-direct {p0, v1, v11, v12, v0}, Lcom/android/systemui/recents/views/TaskStackView;->setFocusedTask(IZZI)Z

    move-result v10

    .line 1140
    .local v10, "willScroll":Z
    if-eqz v10, :cond_3

    if-eqz p4, :cond_3

    .line 1143
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v11

    new-instance v12, Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;-><init>(Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual {v11, v12}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1050
    .end local v10    # "willScroll":Z
    :cond_3
    return-void

    .line 1063
    .restart local v7    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/model/Task;>;"
    :cond_4
    if-eqz p1, :cond_6

    const/4 v11, -0x1

    :goto_2
    add-int v8, v1, v11

    .line 1064
    .local v8, "tmpNewIndex":I
    if-ltz v8, :cond_0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ge v8, v11, :cond_0

    .line 1065
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/model/Task;

    .line 1066
    .local v3, "t":Lcom/android/systemui/recents/model/Task;
    sget-boolean v11, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformInTaskStack:Z

    if-nez v11, :cond_5

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v11

    if-nez v11, :cond_0

    .line 1067
    :cond_5
    move v1, v8

    goto :goto_0

    .line 1063
    .end local v3    # "t":Lcom/android/systemui/recents/model/Task;
    .end local v8    # "tmpNewIndex":I
    :cond_6
    const/4 v11, 0x1

    goto :goto_2

    .line 1074
    .end local v7    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/model/Task;>;"
    :cond_7
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v11}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v4

    .line 1075
    .local v4, "taskCount":I
    if-eqz p1, :cond_8

    const/4 v11, -0x1

    :goto_3
    add-int/2addr v11, v1

    add-int/2addr v11, v4

    rem-int v1, v11, v4

    goto :goto_0

    :cond_8
    const/4 v11, 0x1

    goto :goto_3

    .line 1085
    .end local v4    # "taskCount":I
    :cond_9
    sget-boolean v11, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableCloseAllLayout:Z

    if-eqz v11, :cond_2

    .line 1086
    if-nez v1, :cond_a

    .line 1087
    const/4 v1, -0x1

    .line 1088
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v11}, Lcom/android/systemui/recents/views/TaskStackView;->resetFocusedTask(Lcom/android/systemui/recents/model/Task;)V

    .line 1089
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v11

    new-instance v12, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-direct {v12, v13, v14}, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;-><init>(ZZ)V

    invoke-virtual {v11, v12}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1091
    :cond_a
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v11

    new-instance v12, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;-><init>(Z)V

    invoke-virtual {v11, v12}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_1

    .line 1096
    :cond_b
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v11}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v2

    .line 1097
    .local v2, "stackScroll":F
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v11}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v6

    .line 1098
    .local v6, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1099
    .restart local v4    # "taskCount":I
    if-eqz p1, :cond_f

    .line 1101
    add-int/lit8 v1, v4, -0x1

    :goto_4
    if-ltz v1, :cond_c

    .line 1102
    iget-object v12, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v12, v11}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F

    move-result v5

    .line 1103
    .local v5, "taskP":F
    invoke-static {v5, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v11

    if-gtz v11, :cond_e

    .line 1117
    .end local v5    # "taskP":F
    :cond_c
    if-eqz p1, :cond_10

    .line 1118
    sget-boolean v11, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableMoreButton:Z

    if-nez v11, :cond_d

    sget-boolean v11, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableAppList:Z

    if-eqz v11, :cond_2

    .line 1119
    :cond_d
    if-nez v1, :cond_2

    .line 1122
    const/4 v1, -0x1

    .line 1123
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v11

    new-instance v12, Lcom/android/systemui/recents/events/ui/ToggleRecentsButtonsContainerEvent;

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-direct {v12, v13, v14}, Lcom/android/systemui/recents/events/ui/ToggleRecentsButtonsContainerEvent;-><init>(ZZ)V

    invoke-virtual {v11, v12}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto/16 :goto_1

    .line 1101
    .restart local v5    # "taskP":F
    :cond_e
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 1109
    .end local v5    # "taskP":F
    :cond_f
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v4, :cond_c

    .line 1110
    iget-object v12, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v12, v11}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F

    move-result v5

    .line 1111
    .restart local v5    # "taskP":F
    invoke-static {v5, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v11

    if-gez v11, :cond_c

    .line 1109
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1125
    .end local v5    # "taskP":F
    :cond_10
    sget-boolean v11, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableCloseAllLayout:Z

    if-eqz v11, :cond_2

    .line 1126
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v11}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-ne v1, v11, :cond_11

    .line 1129
    const/4 v1, -0x1

    .line 1130
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v11}, Lcom/android/systemui/recents/views/TaskStackView;->resetFocusedTask(Lcom/android/systemui/recents/model/Task;)V

    .line 1131
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v11

    new-instance v12, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-direct {v12, v13, v14}, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;-><init>(ZZ)V

    invoke-virtual {v11, v12}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1133
    :cond_11
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v11

    new-instance v12, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;-><init>(Z)V

    invoke-virtual {v11, v12}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto/16 :goto_1
.end method

.method public setSystemInsets(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "systemInsets"    # Landroid/graphics/Rect;

    .prologue
    .line 1271
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setSystemInsets(Landroid/graphics/Rect;)Z

    move-result v0

    .line 1272
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setSystemInsets(Landroid/graphics/Rect;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1273
    if-eqz v0, :cond_0

    .line 1274
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->requestLayout()V

    .line 1269
    :cond_0
    return-void
.end method

.method public setTasks(Lcom/android/systemui/recents/model/TaskStack;Z)V
    .locals 4
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p2, "allowNotifyStackChanges"    # Z

    .prologue
    .line 391
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->isInitialized()Z

    move-result v0

    .line 395
    .local v0, "isInitialized":Z
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/systemui/recents/model/TaskStack;->computeAllTasksList()Ljava/util/ArrayList;

    move-result-object v3

    .line 396
    if-eqz p2, :cond_0

    .line 395
    .end local v0    # "isInitialized":Z
    :goto_0
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/systemui/recents/model/TaskStack;->setTasks(Landroid/content/Context;Ljava/util/List;Z)V

    .line 390
    return-void

    .line 396
    .restart local v0    # "isInitialized":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateLayoutAlgorithm(Z)V
    .locals 4
    .param p1, "boundScrollToNewMinMax"    # Z

    .prologue
    .line 902
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->update(Lcom/android/systemui/recents/model/TaskStack;Landroid/util/ArraySet;)V

    .line 905
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 906
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasFreeformWorkspaceSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 907
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v2, v2, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 908
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackground:Landroid/graphics/drawable/GradientDrawable;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 911
    :cond_0
    if-eqz p1, :cond_1

    .line 912
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->boundScroll()Z

    .line 900
    :cond_1
    return-void
.end method

.method public updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V
    .locals 1
    .param p1, "taskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "transform"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p3, "animation"    # Lcom/android/systemui/recents/views/AnimationProps;

    .prologue
    .line 767
    invoke-virtual {p1, p2}, Lcom/android/systemui/recents/views/TaskView;->isAnimatingTo(Lcom/android/systemui/recents/views/TaskViewTransform;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 768
    return-void

    .line 770
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->cancelTransformAnimation()V

    .line 772
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mRequestUpdateClippingListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 771
    invoke-virtual {p1, p2, p3, v0}, Lcom/android/systemui/recents/views/TaskView;->updateViewPropertiesToTaskTransform(Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 765
    return-void
.end method

.method updateTaskViewsList()V
    .locals 4

    .prologue
    .line 419
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 420
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    .line 421
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 422
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 423
    .local v2, "v":Landroid/view/View;
    instance-of v3, v2, Lcom/android/systemui/recents/views/TaskView;

    if-eqz v3, :cond_0

    .line 424
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViews:Ljava/util/ArrayList;

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    .end local v2    # "v":Landroid/view/View;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 418
    :cond_1
    return-void
.end method

.method public updateToInitialState()V
    .locals 3

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScrollToInitialState()Z

    .line 410
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSnapAction:Z

    if-nez v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setTaskOverridesForInitialState(Lcom/android/systemui/recents/model/TaskStack;Z)V

    .line 407
    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1482
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackground:Landroid/graphics/drawable/GradientDrawable;

    if-ne p1, v0, :cond_0

    .line 1483
    const/4 v0, 0x1

    return v0

    .line 1485
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method
