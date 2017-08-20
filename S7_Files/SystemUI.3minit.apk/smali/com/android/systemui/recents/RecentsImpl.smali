.class public Lcom/android/systemui/recents/RecentsImpl;
.super Ljava/lang/Object;
.source "RecentsImpl.java"

# interfaces
.implements Landroid/app/ActivityOptions$OnAnimationFinishedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/RecentsImpl$1;,
        Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;
    }
.end annotation


# static fields
.field protected static sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;


# instance fields
.field protected mContext:Landroid/content/Context;

.field mDraggingInRecents:Z

.field protected mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

.field mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

.field protected mHandler:Landroid/os/Handler;

.field mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

.field final mHeaderBarLock:Ljava/lang/Object;

.field protected mLastToggleTime:J

.field mLaunchedWhileDocking:Z

.field mNavBarHeight:I

.field mNavBarWidth:I

.field private mPropagateTaskStackChange:Z

.field private mRecentsWindow:Lcom/android/systemui/recents/desktop/RecentsWindow;

.field mStatusBarHeight:I

.field mTaskBarHeight:I

.field mTaskStackBounds:Landroid/graphics/Rect;

.field mTaskStackListener:Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;

.field protected mThumbTransitionBitmapCache:Landroid/graphics/Bitmap;

.field mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

.field protected mTriggeredFromAltTab:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/RecentsImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mPropagateTaskStackChange:Z

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-boolean v8, p0, Lcom/android/systemui/recents/RecentsImpl;->mPropagateTaskStackChange:Z

    .line 187
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskStackBounds:Landroid/graphics/Rect;

    .line 188
    new-instance v5, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v5}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 196
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBarLock:Ljava/lang/Object;

    .line 202
    new-instance v5, Lcom/android/systemui/recents/misc/DozeTrigger;

    new-instance v6, Lcom/android/systemui/recents/RecentsImpl$1;

    invoke-direct {v6, p0}, Lcom/android/systemui/recents/RecentsImpl$1;-><init>(Lcom/android/systemui/recents/RecentsImpl;)V

    const/16 v7, 0xe1

    invoke-direct {v5, v7, v6}, Lcom/android/systemui/recents/misc/DozeTrigger;-><init>(ILjava/lang/Runnable;)V

    iput-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    .line 216
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    .line 217
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    .line 220
    invoke-static {}, Lcom/android/systemui/recents/misc/ForegroundThread;->get()Lcom/android/systemui/recents/misc/ForegroundThread;

    .line 223
    new-instance v5, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;

    invoke-direct {v5, p0}, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;-><init>(Lcom/android/systemui/recents/RecentsImpl;)V

    iput-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskStackListener:Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;

    .line 224
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v4

    .line 225
    .local v4, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskStackListener:Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->registerTaskStackListener(Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;)V

    .line 228
    sget-boolean v5, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableDesktopMode:Z

    if-eqz v5, :cond_0

    .line 229
    new-instance v5, Lcom/android/systemui/recents/desktop/RecentsWindow;

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/systemui/recents/desktop/RecentsWindow;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mRecentsWindow:Lcom/android/systemui/recents/desktop/RecentsWindow;

    .line 234
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 235
    .local v0, "inflater":Landroid/view/LayoutInflater;
    new-instance v5, Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/systemui/recents/views/TaskStackView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    .line 236
    const v5, 0x7f040125

    .line 237
    const/4 v6, 0x0

    .line 236
    invoke-virtual {v0, v5, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/recents/views/TaskViewHeader;

    iput-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    .line 238
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsImpl;->reloadResources()V

    .line 242
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v2

    .line 243
    .local v2, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v3

    .line 244
    .local v3, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    const/4 v5, -0x1

    invoke-virtual {v2, v3, v5, v8}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    .line 245
    new-instance v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 246
    .local v1, "launchOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    invoke-virtual {v2}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getIconCacheSize()I

    move-result v5

    iput v5, v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 247
    invoke-virtual {v2}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getThumbnailCacheSize()I

    move-result v5

    iput v5, v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    .line 248
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    .line 249
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5, v3, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 215
    return-void
.end method

.method private calculateWindowStableInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "inOutInsets"    # Landroid/graphics/Rect;
    .param p2, "windowRect"    # Landroid/graphics/Rect;

    .prologue
    .line 769
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 772
    .local v1, "displayRect":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 773
    .local v0, "appRect":Landroid/graphics/Rect;
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 776
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 777
    .local v2, "windowRectWithInsets":Landroid/graphics/Rect;
    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 778
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 779
    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 780
    iget v3, p2, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 781
    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 768
    return-void
.end method

.method public static consumeInstanceLoadPlan()Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    .locals 2

    .prologue
    .line 667
    sget-object v0, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    .line 668
    .local v0, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    const/4 v1, 0x0

    sput-object v1, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    .line 669
    return-object v0
.end method

.method private drawThumbnailTransitionBitmap(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "toTask"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "toTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p3, "thumbnail"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x0

    .line 1027
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    .line 1028
    .local v3, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    if-eqz p2, :cond_6

    iget-object v4, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    if-eqz v4, :cond_6

    .line 1029
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBarLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1030
    :try_start_0
    iget-boolean v4, p1, Lcom/android/systemui/recents/model/Task;->isSystemApp:Z

    if-nez v4, :cond_5

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isInSafeMode()Z

    move-result v1

    .line 1031
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v6, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    float-to-int v6, v6

    .line 1032
    iget-object v7, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    float-to-int v7, v7

    .line 1031
    invoke-virtual {v4, v6, v7}, Lcom/android/systemui/recents/views/TaskViewHeader;->onTaskViewSizeChanged(II)V

    .line 1036
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1037
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1039
    .local v0, "c":Landroid/graphics/Canvas;
    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSecondViewExpanded:Z

    if-nez v4, :cond_0

    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableTransParentBehindTaskView:Z

    if-eqz v4, :cond_1

    .line 1040
    :cond_0
    iget v4, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->animationScale:F

    iget v6, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->animationScale:F

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1045
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskViewHeader;->getIconView()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1046
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2

    .line 1047
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1049
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    const/4 v6, 0x0

    invoke-virtual {v4, p1, v6, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->bindToTask(Lcom/android/systemui/recents/model/Task;ZZ)V

    .line 1051
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskViewHeader;->onTaskDataLoaded()V

    .line 1052
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget v6, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    invoke-virtual {v4, v6}, Lcom/android/systemui/recents/views/TaskViewHeader;->setDimAlpha(F)V

    .line 1054
    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableMoreRound:Z

    if-eqz v4, :cond_3

    .line 1055
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/systemui/recents/views/TaskViewHeader;->setRadius(I)V

    .line 1058
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v4, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->draw(Landroid/graphics/Canvas;)V

    .line 1059
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1061
    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableMoreRound:Z

    if-eqz v4, :cond_4

    .line 1062
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Lcom/android/systemui/recents/views/TaskViewHeader;->setRadius(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit v5

    .line 1067
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->createAshmemBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4

    .line 1030
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_5
    const/4 v1, 0x0

    .local v1, "disabledInSafeMode":Z
    goto :goto_0

    .line 1029
    .end local v1    # "disabledInSafeMode":Z
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1069
    :cond_6
    return-object v5
.end method

.method private getThumbnailTransitionActivityOptions(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/systemui/recents/views/TaskStackView;Landroid/graphics/Rect;I)Landroid/app/ActivityOptions;
    .locals 40
    .param p1, "runningTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "stackView"    # Lcom/android/systemui/recents/views/TaskStackView;
    .param p3, "windowOverrideRect"    # Landroid/graphics/Rect;
    .param p4, "fullscreenTaskId"    # I

    .prologue
    .line 852
    const/16 v27, 0x0

    .line 853
    .local v27, "startedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    sget-boolean v5, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSpreadAnimation:Z

    if-eqz v5, :cond_0

    .line 854
    new-instance v27, Lcom/android/systemui/recents/RecentsImpl$4;

    .end local v27    # "startedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/RecentsImpl$4;-><init>(Lcom/android/systemui/recents/RecentsImpl;)V

    .line 865
    :cond_0
    sget-boolean v5, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformInTaskStack:Z

    if-eqz v5, :cond_d

    .line 866
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 867
    .local v33, "specs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/AppTransitionAnimationSpec;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v36

    .line 868
    .local v36, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v18

    .line 869
    .local v18, "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v35

    .line 871
    .local v35, "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 872
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskStackView;->updateToInitialState()V

    .line 874
    const/4 v14, 0x0

    .line 875
    .local v14, "fullscreenTask":Lcom/android/systemui/recents/model/Task;
    const/4 v12, 0x0

    .line 878
    .local v12, "frontTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v31, v5, -0x1

    .local v31, "i":I
    move-object v4, v12

    .end local v12    # "frontTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v14    # "fullscreenTask":Lcom/android/systemui/recents/model/Task;
    .local v4, "frontTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    :goto_0
    if-ltz v31, :cond_5

    .line 879
    move-object/from16 v0, v36

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/systemui/recents/model/Task;

    .line 880
    .local v19, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 881
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 882
    .local v8, "toTaskRect":Landroid/graphics/Rect;
    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    if-eqz v5, :cond_1

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 888
    :cond_1
    :goto_1
    new-instance v5, Landroid/view/AppTransitionAnimationSpec;

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v6, v6, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    const-wide/16 v10, 0xc8

    const-wide/16 v12, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v13}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;FJJ)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v12, v4

    .line 878
    .end local v4    # "frontTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v8    # "toTaskRect":Landroid/graphics/Rect;
    .local v12, "frontTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    :goto_2
    add-int/lit8 v31, v31, -0x1

    move-object v4, v12

    .end local v12    # "frontTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .restart local v4    # "frontTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    goto :goto_0

    .line 883
    .restart local v8    # "toTaskRect":Landroid/graphics/Rect;
    :cond_2
    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3ee66666    # 0.45f

    mul-float/2addr v5, v6

    float-to-int v0, v5

    move/from16 v30, v0

    .line 884
    .local v30, "halfW":I
    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3ee66666    # 0.45f

    mul-float/2addr v5, v6

    float-to-int v0, v5

    move/from16 v29, v0

    .line 885
    .local v29, "halfH":I
    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    sub-int v5, v5, v30

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    sub-int v6, v6, v29

    .line 886
    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    add-int v7, v7, v30

    move-object/from16 v0, v19

    iget-object v9, v0, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    add-int v9, v9, v29

    .line 885
    invoke-virtual {v8, v5, v6, v7, v9}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 889
    .end local v8    # "toTaskRect":Landroid/graphics/Rect;
    .end local v29    # "halfH":I
    .end local v30    # "halfW":I
    :cond_3
    const/4 v5, -0x1

    move/from16 v0, p4

    if-eq v0, v5, :cond_4

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v5, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v0, p4

    if-ne v5, v0, :cond_4

    .line 890
    move-object/from16 v28, v19

    .line 891
    .local v28, "fullscreenTask":Lcom/android/systemui/recents/model/Task;
    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move/from16 v0, v31

    if-ge v0, v5, :cond_16

    .line 892
    new-instance v12, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v12}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    .line 893
    .end local v4    # "frontTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .restart local v12    # "frontTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/recents/model/Task;

    .line 895
    .local v10, "frontTask":Lcom/android/systemui/recents/model/Task;
    invoke-virtual/range {v35 .. v35}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v11

    .line 896
    const/4 v13, 0x0

    move-object/from16 v9, v18

    move-object/from16 v14, p3

    .line 894
    invoke-virtual/range {v9 .. v14}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransformScreenCoordinates(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v12

    move-object/from16 v14, v28

    .end local v28    # "fullscreenTask":Lcom/android/systemui/recents/model/Task;
    .local v14, "fullscreenTask":Lcom/android/systemui/recents/model/Task;
    goto/16 :goto_2

    .end local v10    # "frontTask":Lcom/android/systemui/recents/model/Task;
    .end local v12    # "frontTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v14    # "fullscreenTask":Lcom/android/systemui/recents/model/Task;
    .restart local v4    # "frontTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    :cond_4
    move-object v12, v4

    .line 889
    .end local v4    # "frontTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .restart local v12    # "frontTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    goto/16 :goto_2

    .line 902
    .end local v12    # "frontTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v19    # "task":Lcom/android/systemui/recents/model/Task;
    .restart local v4    # "frontTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    :cond_5
    const/4 v5, -0x1

    move/from16 v0, p4

    if-eq v0, v5, :cond_b

    if-eqz v14, :cond_b

    .line 903
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 905
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F

    move-result v5

    .line 904
    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getCalibratedStackScroll(F)F

    move-result v32

    .line 906
    .local v32, "newScroll":F
    invoke-virtual/range {v35 .. v35}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v5

    cmpg-float v5, v32, v5

    if-gez v5, :cond_6

    .line 907
    const/4 v5, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v32

    invoke-virtual {v0, v1, v5}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScroll(FLcom/android/systemui/recents/views/AnimationProps;)V

    .line 908
    move-object/from16 v0, p2

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->bindVisibleTaskViews(F)V

    .line 913
    .end local v32    # "newScroll":F
    :cond_6
    invoke-virtual/range {v35 .. v35}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v13, v18

    move-object/from16 v18, p3

    .line 912
    invoke-virtual/range {v13 .. v18}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransformScreenCoordinates(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    .end local v18    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 915
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 916
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mThumbTransitionBitmapCache:Landroid/graphics/Bitmap;

    .line 915
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v5, v6}, Lcom/android/systemui/recents/RecentsImpl;->drawThumbnailTransitionBitmap(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 917
    .local v17, "thumbnail":Landroid/graphics/Bitmap;
    sget-boolean v5, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSecondViewExpanded:Z

    if-nez v5, :cond_7

    sget-boolean v5, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableTransParentBehindTaskView:Z

    if-eqz v5, :cond_8

    .line 918
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget v6, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->animationScale:F

    invoke-static {v5, v6}, Lcom/android/systemui/recents/misc/Utilities;->scaleRectAboutCenter(Landroid/graphics/RectF;F)V

    .line 920
    :cond_8
    if-eqz v4, :cond_9

    .line 921
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget-object v6, v4, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iput v6, v5, Landroid/graphics/RectF;->bottom:F

    .line 923
    :cond_9
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 924
    .restart local v8    # "toTaskRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v5, v8}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 926
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 927
    if-nez v17, :cond_a

    .line 929
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsImpl;->getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v5

    return-object v5

    .line 931
    :cond_a
    new-instance v5, Landroid/view/AppTransitionAnimationSpec;

    iget-object v6, v14, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v6, v6, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move-object/from16 v0, v17

    invoke-direct {v5, v6, v0, v8}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 937
    .end local v8    # "toTaskRect":Landroid/graphics/Rect;
    .end local v17    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_b
    :goto_3
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v0, v5, [Landroid/view/AppTransitionAnimationSpec;

    move-object/from16 v34, v0

    .line 938
    .local v34, "specsArray":[Landroid/view/AppTransitionAnimationSpec;
    invoke-virtual/range {v33 .. v34}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 939
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    .line 940
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    .line 939
    move-object/from16 v0, v34

    move-object/from16 v1, v27

    move-object/from16 v2, p0

    invoke-static {v5, v0, v6, v1, v2}, Landroid/app/ActivityOptions;->makeThumbnailAspectScaleDownAnimation(Landroid/view/View;[Landroid/view/AppTransitionAnimationSpec;Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;

    move-result-object v5

    return-object v5

    .line 933
    .end local v34    # "specsArray":[Landroid/view/AppTransitionAnimationSpec;
    .restart local v8    # "toTaskRect":Landroid/graphics/Rect;
    .restart local v17    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_c
    new-instance v15, Landroid/view/AppTransitionAnimationSpec;

    iget-object v5, v14, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v0, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v16, v0

    const-wide/16 v20, 0x12c

    const-wide/16 v22, 0x85

    const/high16 v19, 0x3f800000    # 1.0f

    move-object/from16 v18, v8

    invoke-direct/range {v15 .. v23}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;FJJ)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 943
    .end local v4    # "frontTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v8    # "toTaskRect":Landroid/graphics/Rect;
    .end local v17    # "thumbnail":Landroid/graphics/Bitmap;
    .end local v31    # "i":I
    .end local v33    # "specs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/AppTransitionAnimationSpec;>;"
    .end local v35    # "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    .end local v36    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_d
    if-eqz p1, :cond_12

    move-object/from16 v0, p1

    iget v5, v0, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_12

    .line 944
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 945
    .restart local v33    # "specs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/AppTransitionAnimationSpec;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v36

    .line 946
    .restart local v36    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v18

    .line 947
    .restart local v18    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v35

    .line 949
    .restart local v35    # "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 950
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskStackView;->updateToInitialState()V

    .line 952
    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v31, v5, -0x1

    .restart local v31    # "i":I
    :goto_4
    if-ltz v31, :cond_11

    .line 953
    move-object/from16 v0, v36

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/systemui/recents/model/Task;

    .line 954
    .restart local v19    # "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 956
    invoke-virtual/range {v35 .. v35}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v23, p3

    .line 955
    invoke-virtual/range {v18 .. v23}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransformScreenCoordinates(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 958
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 959
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mThumbTransitionBitmapCache:Landroid/graphics/Bitmap;

    .line 958
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v5, v6}, Lcom/android/systemui/recents/RecentsImpl;->drawThumbnailTransitionBitmap(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 961
    .restart local v17    # "thumbnail":Landroid/graphics/Bitmap;
    sget-boolean v5, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSecondViewExpanded:Z

    if-nez v5, :cond_e

    sget-boolean v5, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableTransParentBehindTaskView:Z

    if-eqz v5, :cond_f

    .line 962
    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget v6, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->animationScale:F

    invoke-static {v5, v6}, Lcom/android/systemui/recents/misc/Utilities;->scaleRectAboutCenter(Landroid/graphics/RectF;F)V

    .line 965
    :cond_f
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 966
    .restart local v8    # "toTaskRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v5, v8}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 967
    new-instance v5, Landroid/view/AppTransitionAnimationSpec;

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v6, v6, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move-object/from16 v0, v17

    invoke-direct {v5, v6, v0, v8}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 952
    .end local v8    # "toTaskRect":Landroid/graphics/Rect;
    .end local v17    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_10
    add-int/lit8 v31, v31, -0x1

    goto :goto_4

    .line 970
    .end local v19    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_11
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v0, v5, [Landroid/view/AppTransitionAnimationSpec;

    move-object/from16 v34, v0

    .line 971
    .restart local v34    # "specsArray":[Landroid/view/AppTransitionAnimationSpec;
    invoke-virtual/range {v33 .. v34}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 972
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    .line 973
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    .line 972
    move-object/from16 v0, v34

    move-object/from16 v1, v27

    move-object/from16 v2, p0

    invoke-static {v5, v0, v6, v1, v2}, Landroid/app/ActivityOptions;->makeThumbnailAspectScaleDownAnimation(Landroid/view/View;[Landroid/view/AppTransitionAnimationSpec;Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;

    move-result-object v5

    return-object v5

    .line 976
    .end local v18    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .end local v31    # "i":I
    .end local v33    # "specs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/AppTransitionAnimationSpec;>;"
    .end local v34    # "specsArray":[Landroid/view/AppTransitionAnimationSpec;
    .end local v35    # "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    .end local v36    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_12
    new-instance v37, Lcom/android/systemui/recents/model/Task;

    invoke-direct/range {v37 .. v37}, Lcom/android/systemui/recents/model/Task;-><init>()V

    .line 977
    .local v37, "toTask":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v37

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/recents/RecentsImpl;->getThumbnailTransitionTransform(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v39

    .line 980
    .local v39, "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    sget-boolean v5, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSecondViewExpanded:Z

    if-nez v5, :cond_13

    sget-boolean v5, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableTransParentBehindTaskView:Z

    if-eqz v5, :cond_14

    .line 981
    :cond_13
    move-object/from16 v0, v39

    iget-object v5, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v0, v39

    iget v6, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->animationScale:F

    invoke-static {v5, v6}, Lcom/android/systemui/recents/misc/Utilities;->scaleRectAboutCenter(Landroid/graphics/RectF;F)V

    .line 985
    :cond_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/RecentsImpl;->mThumbTransitionBitmapCache:Landroid/graphics/Bitmap;

    .line 984
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2, v5}, Lcom/android/systemui/recents/RecentsImpl;->drawThumbnailTransitionBitmap(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 986
    .restart local v17    # "thumbnail":Landroid/graphics/Bitmap;
    if-eqz v17, :cond_15

    .line 987
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v38, v0

    .line 988
    .local v38, "toTaskRect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v20, v0

    .line 989
    move-object/from16 v0, v38

    iget v5, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v5

    move/from16 v22, v0

    move-object/from16 v0, v38

    iget v5, v0, Landroid/graphics/RectF;->top:F

    float-to-int v0, v5

    move/from16 v23, v0

    .line 990
    invoke-virtual/range {v38 .. v38}, Landroid/graphics/RectF;->width()F

    move-result v5

    float-to-int v0, v5

    move/from16 v24, v0

    invoke-virtual/range {v38 .. v38}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v0, v5

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v21, v17

    .line 988
    invoke-static/range {v20 .. v27}, Landroid/app/ActivityOptions;->makeThumbnailAspectScaleDownAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v5

    return-object v5

    .line 994
    .end local v38    # "toTaskRect":Landroid/graphics/RectF;
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsImpl;->getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v5

    return-object v5

    .end local v17    # "thumbnail":Landroid/graphics/Bitmap;
    .end local v37    # "toTask":Lcom/android/systemui/recents/model/Task;
    .end local v39    # "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .restart local v4    # "frontTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .restart local v18    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .restart local v19    # "task":Lcom/android/systemui/recents/model/Task;
    .restart local v28    # "fullscreenTask":Lcom/android/systemui/recents/model/Task;
    .restart local v31    # "i":I
    .restart local v33    # "specs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/AppTransitionAnimationSpec;>;"
    .restart local v35    # "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    .restart local v36    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_16
    move-object v12, v4

    .end local v4    # "frontTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .restart local v12    # "frontTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    move-object/from16 v14, v28

    .end local v28    # "fullscreenTask":Lcom/android/systemui/recents/model/Task;
    .restart local v14    # "fullscreenTask":Lcom/android/systemui/recents/model/Task;
    goto/16 :goto_2
.end method

.method private getThumbnailTransitionTransform(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 7
    .param p1, "stackView"    # Lcom/android/systemui/recents/views/TaskStackView;
    .param p2, "runningTaskOut"    # Lcom/android/systemui/recents/model/Task;
    .param p3, "windowOverrideRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 1004
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v6

    .line 1005
    .local v6, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v6}, Lcom/android/systemui/recents/model/TaskStack;->getLaunchTarget()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    .line 1006
    .local v1, "launchTask":Lcom/android/systemui/recents/model/Task;
    if-eqz v1, :cond_0

    .line 1007
    invoke-virtual {p2, v1}, Lcom/android/systemui/recents/model/Task;->copyFrom(Lcom/android/systemui/recents/model/Task;)V

    .line 1015
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 1016
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskStackView;->updateToInitialState()V

    .line 1017
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v0

    .line 1018
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object v5, p3

    .line 1017
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransformScreenCoordinates(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 1019
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    return-object v0

    .line 1010
    :cond_0
    invoke-virtual {v6, v0}, Lcom/android/systemui/recents/model/TaskStack;->getStackFrontMostTask(Z)Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    .line 1011
    invoke-virtual {p2, v1}, Lcom/android/systemui/recents/model/Task;->copyFrom(Lcom/android/systemui/recents/model/Task;)V

    goto :goto_0
.end method

.method private getWindowRectOverride(I)Landroid/graphics/Rect;
    .locals 7
    .param p1, "growTarget"    # I

    .prologue
    .line 1174
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1175
    const/4 v0, 0x0

    return-object v0

    .line 1177
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1178
    .local v2, "result":Landroid/graphics/Rect;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v6

    .line 1180
    .local v6, "displayRect":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 1181
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDockedDividerSize(Landroid/content/Context;)I

    move-result v5

    .line 1179
    const/4 v1, 0x4

    move v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    .line 1182
    return-object v2
.end method

.method private preloadIcon(I)V
    .locals 4
    .param p1, "runningTaskId"    # I

    .prologue
    .line 789
    new-instance v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 790
    .local v0, "launchOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    iput p1, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    .line 791
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->loadThumbnails:Z

    .line 792
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    .line 793
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 787
    return-void
.end method

.method private reloadResources()V
    .locals 8

    .prologue
    const v4, 0x7f0d030a

    .line 676
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 679
    .local v7, "res":Landroid/content/res/Resources;
    const v0, 0x1050017

    .line 678
    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mStatusBarHeight:I

    .line 681
    const v0, 0x1050018

    .line 680
    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mNavBarHeight:I

    .line 683
    const v0, 0x105001a

    .line 682
    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mNavBarWidth:I

    .line 685
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableLowerAppbarHeight:Z

    if-eqz v0, :cond_0

    .line 686
    const v1, 0x7f0d030f

    .line 689
    .local v1, "tHeaderBarHeight":I
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    move v2, v1

    move v3, v1

    move v5, v1

    move v6, v4

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;IIIIII)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    .line 675
    return-void

    .line 687
    .end local v1    # "tHeaderBarHeight":I
    :cond_0
    const v1, 0x7f0d0309

    .restart local v1    # "tHeaderBarHeight":I
    goto :goto_0
.end method

.method private startRecentsActivity(Landroid/app/ActivityOptions;)V
    .locals 4
    .param p1, "opts"    # Landroid/app/ActivityOptions;

    .prologue
    .line 1189
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1190
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.systemui"

    const-string/jumbo v2, "com.android.systemui.recents.RecentsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1191
    const v1, 0x10804000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1196
    const-string/jumbo v1, "RecentsImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startRecentsActivity for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    if-eqz p1, :cond_0

    .line 1199
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 1203
    :goto_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/activity/RecentsActivityStartingEvent;

    invoke-direct {v2}, Lcom/android/systemui/recents/events/activity/RecentsActivityStartingEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1188
    return-void

    .line 1201
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method private updateHeaderBarLayout(Lcom/android/systemui/recents/model/TaskStack;Landroid/graphics/Rect;)V
    .locals 12
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p2, "windowRectOverride"    # Landroid/graphics/Rect;

    .prologue
    const/4 v10, 0x0

    .line 708
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v6

    .line 709
    .local v6, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v6}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 710
    .local v1, "displayRect":Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 711
    .local v7, "systemInsets":Landroid/graphics/Rect;
    invoke-virtual {v6, v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getStableInsets(Landroid/graphics/Rect;)V

    .line 712
    if-eqz p2, :cond_5

    .line 713
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 718
    .local v2, "windowRect":Landroid/graphics/Rect;
    :goto_0
    invoke-virtual {v6}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 719
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 720
    iput v10, v7, Landroid/graphics/Rect;->bottom:I

    .line 723
    :cond_0
    iput v10, v7, Landroid/graphics/Rect;->top:I

    .line 725
    invoke-direct {p0, v7, v2}, Lcom/android/systemui/recents/RecentsImpl;->calculateWindowStableInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 726
    invoke-virtual {v2, v10, v10}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 728
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v0

    .line 731
    .local v0, "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    invoke-virtual {v0, v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setSystemInsets(Landroid/graphics/Rect;)Z

    .line 732
    if-eqz p1, :cond_4

    .line 733
    iget v3, v7, Landroid/graphics/Rect;->top:I

    .line 734
    iget v4, v7, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskStackBounds:Landroid/graphics/Rect;

    .line 733
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getTaskStackBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 735
    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->reset()V

    .line 736
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskStackBounds:Landroid/graphics/Rect;

    .line 737
    invoke-static {p1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->getStackStateForStack(Lcom/android/systemui/recents/model/TaskStack;)Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    move-result-object v4

    .line 736
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->initialize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;)V

    .line 738
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3, p1, v10}, Lcom/android/systemui/recents/views/TaskStackView;->setTasks(Lcom/android/systemui/recents/model/TaskStack;Z)V

    .line 740
    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getUntransformedTaskViewBounds()Landroid/graphics/Rect;

    move-result-object v8

    .line 741
    .local v8, "taskViewBounds":Landroid/graphics/Rect;
    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 742
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v9

    .line 743
    .local v9, "taskViewWidth":I
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBarLock:Ljava/lang/Object;

    monitor-enter v4

    .line 744
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredWidth()I

    move-result v3

    if-ne v3, v9, :cond_1

    .line 745
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v3

    iget v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    if-eq v3, v5, :cond_2

    .line 746
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    .line 747
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v9, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 748
    iget v10, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 746
    invoke-virtual {v3, v5, v10}, Lcom/android/systemui/recents/views/TaskViewHeader;->measure(II)V

    .line 750
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11, v9, v5}, Lcom/android/systemui/recents/views/TaskViewHeader;->layout(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 754
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mThumbTransitionBitmapCache:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    .line 755
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mThumbTransitionBitmapCache:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-eq v3, v9, :cond_6

    .line 758
    :cond_3
    :goto_1
    iget v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 757
    invoke-static {v9, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mThumbTransitionBitmapCache:Landroid/graphics/Bitmap;

    .line 707
    .end local v8    # "taskViewBounds":Landroid/graphics/Rect;
    .end local v9    # "taskViewWidth":I
    :cond_4
    return-void

    .line 714
    .end local v0    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .end local v2    # "windowRect":Landroid/graphics/Rect;
    :cond_5
    invoke-virtual {v6}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getWindowRect()Landroid/graphics/Rect;

    move-result-object v2

    .restart local v2    # "windowRect":Landroid/graphics/Rect;
    goto/16 :goto_0

    .line 743
    .restart local v0    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .restart local v8    # "taskViewBounds":Landroid/graphics/Rect;
    .restart local v9    # "taskViewWidth":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 756
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mThumbTransitionBitmapCache:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    if-eq v3, v4, :cond_4

    goto :goto_1
.end method


# virtual methods
.method public cancelPreloadingRecents()V
    .locals 0

    .prologue
    .line 493
    return-void
.end method

.method public dockTopTask(IIILandroid/graphics/Rect;Z)V
    .locals 9
    .param p1, "topTaskId"    # I
    .param p2, "dragMode"    # I
    .param p3, "stackCreateMode"    # I
    .param p4, "initialBounds"    # Landroid/graphics/Rect;
    .param p5, "showHelpPopup"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 643
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v8

    .line 647
    .local v8, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v8, p1, p3, p4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->moveTaskToDockedStack(IILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 648
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;

    invoke-direct {v2, p2, p4}, Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;-><init>(ILandroid/graphics/Rect;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 650
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-object v7, v0, Lcom/android/systemui/recents/RecentsConfiguration;->mLaunchState:Lcom/android/systemui/recents/RecentsActivityLaunchState;

    .line 651
    .local v7, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iput-boolean p5, v7, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedSplitScreenWithHelpPopup:Z

    .line 655
    if-nez p2, :cond_1

    move v2, v4

    .line 659
    :goto_0
    const/4 v6, -0x1

    move-object v0, p0

    move v3, v1

    move v5, v1

    .line 653
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/recents/RecentsImpl;->showRecents(ZZZZZI)V

    .line 642
    .end local v7    # "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    :cond_0
    return-void

    .restart local v7    # "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    :cond_1
    move v2, v1

    .line 655
    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1293
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 1294
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "RecentsImpl"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, " [0x"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "]"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1295
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mPropagateTaskStackChange="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mPropagateTaskStackChange:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1296
    const-string/jumbo v1, " mLastToggleTime="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mLastToggleTime:J

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1298
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/recents/views/TaskStackView;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1292
    return-void
.end method

.method protected getHomeTransitionActivityOptions()Landroid/app/ActivityOptions;
    .locals 5

    .prologue
    .line 822
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSpreadAnimation:Z

    if-eqz v0, :cond_0

    .line 823
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    .line 826
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/recents/RecentsImpl$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/RecentsImpl$3;-><init>(Lcom/android/systemui/recents/RecentsImpl;)V

    .line 824
    const v3, 0x7f0500ad

    .line 825
    const v4, 0x7f0500af

    .line 823
    invoke-static {v0, v3, v4, v1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0

    .line 839
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    .line 842
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    .line 840
    const v2, 0x7f0500ac

    .line 841
    const v3, 0x7f0500ae

    .line 842
    const/4 v4, 0x0

    .line 839
    invoke-static {v0, v2, v3, v1, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method protected getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;
    .locals 5

    .prologue
    .line 800
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    .line 803
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSpreadAnimation:Z

    if-eqz v0, :cond_0

    .line 804
    new-instance v0, Lcom/android/systemui/recents/RecentsImpl$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsImpl$2;-><init>(Lcom/android/systemui/recents/RecentsImpl;)V

    .line 801
    :goto_0
    const v3, 0x7f0500b0

    .line 802
    const v4, 0x7f0500b1

    .line 800
    invoke-static {v1, v3, v4, v2, v0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0

    .line 814
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideRecents(ZZ)V
    .locals 2
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .prologue
    .line 347
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableDesktopMode:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;

    invoke-direct {v1, p1, p2}, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;-><init>(ZZ)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 349
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsImpl;->hideRecentsWindow()V

    .line 350
    return-void

    .line 354
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsImpl;->showNextTask()V

    .line 360
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    .line 361
    return-void

    .line 372
    :cond_1
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSplitLayout:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mPropagateTaskStackChange:Z

    if-eqz v0, :cond_2

    .line 373
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mPropagateTaskStackChange:Z

    .line 379
    :cond_2
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;

    invoke-direct {v1, p1, p2}, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;-><init>(ZZ)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 345
    return-void
.end method

.method hideRecentsWindow()V
    .locals 1

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mRecentsWindow:Lcom/android/systemui/recents/desktop/RecentsWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mRecentsWindow:Lcom/android/systemui/recents/desktop/RecentsWindow;

    invoke-virtual {v0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1252
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mRecentsWindow:Lcom/android/systemui/recents/desktop/RecentsWindow;

    invoke-virtual {v0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->dismiss()V

    .line 1250
    :cond_0
    return-void
.end method

.method protected isRecentsActivityVisible(Landroid/util/MutableBoolean;)Z
    .locals 1
    .param p1, "isHomeStackVisible"    # Landroid/util/MutableBoolean;

    .prologue
    .line 1162
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/recents/RecentsImpl;->isRecentsActivityVisible(Landroid/util/MutableBoolean;Landroid/util/MutableInt;)Z

    move-result v0

    return v0
.end method

.method protected isRecentsActivityVisible(Landroid/util/MutableBoolean;Landroid/util/MutableInt;)Z
    .locals 2
    .param p1, "isHomeStackVisible"    # Landroid/util/MutableBoolean;
    .param p2, "fullscreenTaskId"    # Landroid/util/MutableInt;

    .prologue
    .line 1168
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 1169
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible(Landroid/util/MutableBoolean;Landroid/util/MutableInt;)Z

    move-result v1

    return v1
.end method

.method public onAnimationFinished()V
    .locals 2

    .prologue
    .line 1210
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowLastAnimationFrameEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowLastAnimationFrameEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1209
    return-void
.end method

.method public onBootCompleted()V
    .locals 0

    .prologue
    .line 252
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 2

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsImpl;->reloadResources()V

    .line 258
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->reloadDisplayConfiguration()V

    .line 260
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->reloadOnConfigurationChange(Z)V

    .line 261
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->onConfigurationChanged()V

    .line 255
    return-void
.end method

.method public onDraggingInRecents(F)V
    .locals 2
    .param p1, "distanceFromTop"    # F

    .prologue
    .line 498
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEvent;

    invoke-direct {v1, p1}, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEvent;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->sendOntoMainThread(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 497
    return-void
.end method

.method public onDraggingInRecentsEnded(F)V
    .locals 2
    .param p1, "velocity"    # F

    .prologue
    .line 502
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEndedEvent;

    invoke-direct {v1, p1}, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEndedEvent;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->sendOntoMainThread(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 501
    return-void
.end method

.method public onStartScreenPinning(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "taskId"    # I

    .prologue
    move-object v0, p1

    .line 286
    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    .line 287
    .local v0, "app":Lcom/android/systemui/SystemUIApplication;
    const-class v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, v2}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 288
    .local v1, "statusBar":Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    if-eqz v1, :cond_0

    .line 289
    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showScreenPinningRequest(IZ)V

    .line 285
    :cond_0
    return-void
.end method

.method public onVisibilityChanged(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "visible"    # Z

    .prologue
    .line 271
    iput-boolean p2, p0, Lcom/android/systemui/recents/RecentsImpl;->mPropagateTaskStackChange:Z

    move-object v0, p1

    .line 273
    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    .line 274
    .local v0, "app":Lcom/android/systemui/SystemUIApplication;
    const-class v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, v2}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 275
    .local v1, "statusBar":Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    if-eqz v1, :cond_0

    .line 276
    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateRecentsVisibility(Z)V

    .line 269
    :cond_0
    return-void
.end method

.method public preloadRecents()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 469
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    .line 470
    .local v3, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    new-instance v0, Landroid/util/MutableBoolean;

    invoke-direct {v0, v7}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 471
    .local v0, "isHomeStackVisible":Landroid/util/MutableBoolean;
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsImpl;->isRecentsActivityVisible(Landroid/util/MutableBoolean;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 472
    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    .line 473
    .local v2, "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    .line 474
    .local v1, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v5

    sput-object v5, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    .line 475
    sget-object v8, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    iget-boolean v5, v0, Landroid/util/MutableBoolean;->value:Z

    if-eqz v5, :cond_2

    move v5, v6

    :goto_0
    invoke-virtual {v8, v5}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->preloadRawTasks(Z)V

    .line 476
    sget-object v8, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    if-eqz v2, :cond_3

    iget v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    :goto_1
    iget-boolean v9, v0, Landroid/util/MutableBoolean;->value:Z

    if-eqz v9, :cond_4

    :goto_2
    invoke-virtual {v1, v8, v5, v6}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    .line 477
    sget-object v5, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v4

    .line 478
    .local v4, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v4}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 481
    if-eqz v2, :cond_0

    .line 482
    iget v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-direct {p0, v5}, Lcom/android/systemui/recents/RecentsImpl;->preloadIcon(I)V

    .line 488
    :cond_0
    invoke-direct {p0, v4, v10}, Lcom/android/systemui/recents/RecentsImpl;->updateHeaderBarLayout(Lcom/android/systemui/recents/model/TaskStack;Landroid/graphics/Rect;)V

    .line 466
    .end local v1    # "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    .end local v2    # "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v4    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    :cond_1
    return-void

    .restart local v1    # "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    .restart local v2    # "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_2
    move v5, v7

    .line 475
    goto :goto_0

    .line 476
    :cond_3
    const/4 v5, -0x1

    goto :goto_1

    :cond_4
    move v6, v7

    goto :goto_2
.end method

.method public showNextAffiliatedTask()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 631
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "overview_affiliated_task_next"

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 632
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/RecentsImpl;->showRelativeAffiliatedTask(Z)V

    .line 629
    return-void
.end method

.method public showNextTask()V
    .locals 15

    .prologue
    const/4 v13, 0x0

    .line 509
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v7

    .line 510
    .local v7, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v4

    .line 511
    .local v4, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    iget-object v12, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v12}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v5

    .line 512
    .local v5, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    const/4 v12, -0x1

    invoke-virtual {v4, v5, v12, v13}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    .line 513
    invoke-virtual {v5}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v0

    .line 516
    .local v0, "focusedStack":Lcom/android/systemui/recents/model/TaskStack;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v12

    if-nez v12, :cond_1

    :cond_0
    return-void

    .line 519
    :cond_1
    invoke-virtual {v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    .line 520
    .local v6, "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    if-nez v6, :cond_2

    return-void

    .line 523
    :cond_2
    iget v12, v6, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    invoke-static {v12}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isHomeStack(I)Z

    move-result v2

    .line 524
    .local v2, "isRunningTaskInHomeStack":Z
    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v10

    .line 525
    .local v10, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    const/4 v11, 0x0

    .line 526
    .local v11, "toTask":Lcom/android/systemui/recents/model/Task;
    const/4 v3, 0x0

    .line 527
    .local v3, "launchOpts":Landroid/app/ActivityOptions;
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 528
    .local v9, "taskCount":I
    add-int/lit8 v1, v9, -0x1

    .local v1, "i":I
    :goto_0
    const/4 v12, 0x1

    if-lt v1, v12, :cond_3

    .line 529
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/recents/model/Task;

    .line 530
    .local v8, "task":Lcom/android/systemui/recents/model/Task;
    if-eqz v2, :cond_4

    .line 531
    add-int/lit8 v12, v1, -0x1

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "toTask":Lcom/android/systemui/recents/model/Task;
    check-cast v11, Lcom/android/systemui/recents/model/Task;

    .line 532
    .local v11, "toTask":Lcom/android/systemui/recents/model/Task;
    iget-object v12, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    .line 533
    const v13, 0x7f0500b6

    .line 534
    const v14, 0x7f0500ab

    .line 532
    invoke-static {v12, v13, v14}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v3

    .line 546
    .end local v3    # "launchOpts":Landroid/app/ActivityOptions;
    .end local v8    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v11    # "toTask":Lcom/android/systemui/recents/model/Task;
    :cond_3
    :goto_1
    if-nez v11, :cond_6

    .line 548
    iget-object v12, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    .line 549
    const v13, 0x7f0500b7

    .line 548
    invoke-static {v12, v13}, Landroid/app/ActivityOptions;->makeCustomInPlaceAnimation(Landroid/content/Context;I)Landroid/app/ActivityOptions;

    move-result-object v12

    .line 547
    invoke-virtual {v7, v12}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V

    .line 550
    return-void

    .line 536
    .restart local v3    # "launchOpts":Landroid/app/ActivityOptions;
    .restart local v8    # "task":Lcom/android/systemui/recents/model/Task;
    .local v11, "toTask":Lcom/android/systemui/recents/model/Task;
    :cond_4
    iget-object v12, v8, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v12, v12, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget v13, v6, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    if-ne v12, v13, :cond_5

    .line 537
    add-int/lit8 v12, v1, -0x1

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "toTask":Lcom/android/systemui/recents/model/Task;
    check-cast v11, Lcom/android/systemui/recents/model/Task;

    .line 538
    .local v11, "toTask":Lcom/android/systemui/recents/model/Task;
    iget-object v12, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    .line 539
    const v13, 0x7f0500b9

    .line 540
    const v14, 0x7f0500b8

    .line 538
    invoke-static {v12, v13, v14}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v3

    .local v3, "launchOpts":Landroid/app/ActivityOptions;
    goto :goto_1

    .line 528
    .local v3, "launchOpts":Landroid/app/ActivityOptions;
    .local v11, "toTask":Lcom/android/systemui/recents/model/Task;
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 554
    .end local v3    # "launchOpts":Landroid/app/ActivityOptions;
    .end local v8    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v11    # "toTask":Lcom/android/systemui/recents/model/Task;
    :cond_6
    iget-object v12, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    iget-object v13, v11, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v14, v11, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {v7, v12, v13, v14, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startActivityFromRecents(Landroid/content/Context;Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/String;Landroid/app/ActivityOptions;)Z

    .line 508
    return-void
.end method

.method public showPrevAffiliatedTask()V
    .locals 3

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "overview_affiliated_task_prev"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 638
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsImpl;->showRelativeAffiliatedTask(Z)V

    .line 635
    return-void
.end method

.method public showRecents(ZZZZZI)V
    .locals 11
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "draggingInRecents"    # Z
    .param p3, "animate"    # Z
    .param p4, "launchedWhileDockingTask"    # Z
    .param p5, "fromHome"    # Z
    .param p6, "growTarget"    # I

    .prologue
    .line 296
    iput-boolean p1, p0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    .line 297
    iput-boolean p2, p0, Lcom/android/systemui/recents/RecentsImpl;->mDraggingInRecents:Z

    .line 298
    iput-boolean p4, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    .line 301
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableDesktopMode:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsImpl;->showRecentsWindow()V

    .line 303
    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->isAsleep()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 308
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    .line 328
    :cond_1
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v10

    .line 329
    .local v10, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    if-nez p4, :cond_5

    move v7, p2

    .line 330
    :goto_1
    new-instance v9, Landroid/util/MutableBoolean;

    invoke-direct {v9, v7}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 332
    .local v9, "isHomeStackVisible":Landroid/util/MutableBoolean;
    new-instance v8, Landroid/util/MutableInt;

    const/4 v0, -0x1

    invoke-direct {v8, v0}, Landroid/util/MutableInt;-><init>(I)V

    .line 334
    .local v8, "fullscreenTaskId":Landroid/util/MutableInt;
    if-nez v7, :cond_6

    invoke-virtual {p0, v9, v8}, Lcom/android/systemui/recents/RecentsImpl;->isRecentsActivityVisible(Landroid/util/MutableBoolean;Landroid/util/MutableInt;)Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_6

    .line 295
    .end local v8    # "fullscreenTaskId":Landroid/util/MutableInt;
    .end local v9    # "isHomeStackVisible":Landroid/util/MutableBoolean;
    .end local v10    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :goto_2
    return-void

    .line 309
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 315
    if-nez p1, :cond_3

    .line 316
    return-void

    .line 318
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    goto :goto_0

    .line 319
    :cond_4
    if-eqz p1, :cond_1

    .line 322
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->startDozing()V

    .line 323
    return-void

    .line 329
    .restart local v10    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :cond_5
    const/4 v7, 0x1

    .local v7, "forceVisible":Z
    goto :goto_1

    .line 336
    .end local v7    # "forceVisible":Z
    .restart local v8    # "fullscreenTaskId":Landroid/util/MutableInt;
    .restart local v9    # "isHomeStackVisible":Landroid/util/MutableBoolean;
    :cond_6
    :try_start_1
    invoke-virtual {v10}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    .line 337
    .local v1, "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-boolean v0, v9, Landroid/util/MutableBoolean;->value:Z

    if-nez v0, :cond_7

    move/from16 v2, p5

    .line 338
    :goto_3
    iget v5, v8, Landroid/util/MutableInt;->value:I

    move-object v0, p0

    move v3, p3

    move/from16 v4, p6

    .line 337
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/RecentsImpl;->startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;ZZII)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 340
    .end local v1    # "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v8    # "fullscreenTaskId":Landroid/util/MutableInt;
    .end local v9    # "isHomeStackVisible":Landroid/util/MutableBoolean;
    .end local v10    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :catch_0
    move-exception v6

    .line 341
    .local v6, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v0, "RecentsImpl"

    const-string/jumbo v2, "Failed to launch RecentsActivity"

    invoke-static {v0, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 337
    .end local v6    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v1    # "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local v8    # "fullscreenTaskId":Landroid/util/MutableInt;
    .restart local v9    # "isHomeStackVisible":Landroid/util/MutableBoolean;
    .restart local v10    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :cond_7
    const/4 v2, 0x1

    goto :goto_3
.end method

.method showRecentsWindow()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 1257
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mRecentsWindow:Lcom/android/systemui/recents/desktop/RecentsWindow;

    if-eqz v7, :cond_0

    .line 1258
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mRecentsWindow:Lcom/android/systemui/recents/desktop/RecentsWindow;

    invoke-virtual {v7}, Lcom/android/systemui/recents/desktop/RecentsWindow;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1259
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;

    sget-object v8, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->RIGHT:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    invoke-direct {v7, v8}, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;-><init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;)V

    invoke-virtual {v6, v7}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1256
    :cond_0
    :goto_0
    return-void

    .line 1262
    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v5

    .line 1263
    .local v5, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v2

    .line 1266
    .local v2, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    invoke-virtual {v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    .line 1267
    .local v3, "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-boolean v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    if-nez v7, :cond_4

    if-eqz v3, :cond_4

    .line 1268
    iget v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    .line 1272
    .local v4, "runningTaskId":I
    :goto_1
    new-instance v0, Landroid/util/MutableBoolean;

    invoke-direct {v0, v6}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 1273
    .local v0, "isHomeStackVisible":Landroid/util/MutableBoolean;
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsImpl;->isRecentsActivityVisible(Landroid/util/MutableBoolean;)Z

    .line 1275
    iget-boolean v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    if-nez v7, :cond_2

    iget-boolean v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    if-nez v7, :cond_2

    sget-object v7, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    if-nez v7, :cond_3

    .line 1276
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v7

    sput-object v7, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    .line 1278
    :cond_3
    iget-boolean v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    if-nez v7, :cond_5

    iget-boolean v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    if-nez v7, :cond_5

    sget-object v7, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v7}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->hasTasks()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1283
    :goto_2
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v1

    .line 1284
    .local v1, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iput v4, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    .line 1285
    iget-boolean v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    iput-boolean v6, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    .line 1287
    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mRecentsWindow:Lcom/android/systemui/recents/desktop/RecentsWindow;

    invoke-virtual {v6}, Lcom/android/systemui/recents/desktop/RecentsWindow;->show()V

    goto :goto_0

    .line 1269
    .end local v0    # "isHomeStackVisible":Landroid/util/MutableBoolean;
    .end local v1    # "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    .end local v4    # "runningTaskId":I
    :cond_4
    const/4 v4, -0x1

    .restart local v4    # "runningTaskId":I
    goto :goto_1

    .line 1279
    .restart local v0    # "isHomeStackVisible":Landroid/util/MutableBoolean;
    :cond_5
    sget-object v7, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    iget-boolean v8, v0, Landroid/util/MutableBoolean;->value:Z

    if-eqz v8, :cond_6

    :goto_3
    invoke-virtual {v2, v7, v4, v6}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    goto :goto_2

    :cond_6
    const/4 v6, 0x1

    goto :goto_3
.end method

.method public showRelativeAffiliatedTask(Z)V
    .locals 20
    .param p1, "showNextTask"    # Z

    .prologue
    .line 561
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v11

    .line 562
    .local v11, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v7

    .line 563
    .local v7, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v9

    .line 564
    .local v9, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    const/16 v17, -0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v9, v0, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    .line 565
    invoke-virtual {v9}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v3

    .line 568
    .local v3, "focusedStack":Lcom/android/systemui/recents/model/TaskStack;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v17

    if-nez v17, :cond_1

    :cond_0
    return-void

    .line 571
    :cond_1
    invoke-virtual {v11}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v10

    .line 572
    .local v10, "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    if-nez v10, :cond_2

    return-void

    .line 574
    :cond_2
    iget v0, v10, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isHomeStack(I)Z

    move-result v17

    if-eqz v17, :cond_3

    return-void

    .line 577
    :cond_3
    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v14

    .line 578
    .local v14, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    const/4 v15, 0x0

    .line 579
    .local v15, "toTask":Lcom/android/systemui/recents/model/Task;
    const/4 v6, 0x0

    .line 580
    .local v6, "launchOpts":Landroid/app/ActivityOptions;
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 581
    .local v13, "taskCount":I
    const/4 v8, 0x0

    .line 582
    .local v8, "numAffiliatedTasks":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v13, :cond_5

    .line 583
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/recents/model/Task;

    .line 584
    .local v12, "task":Lcom/android/systemui/recents/model/Task;
    iget-object v0, v12, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v17, v0

    iget v0, v10, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 585
    iget-object v4, v12, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    .line 587
    .local v4, "group":Lcom/android/systemui/recents/model/TaskGrouping;
    if-eqz p1, :cond_7

    .line 588
    invoke-virtual {v4, v12}, Lcom/android/systemui/recents/model/TaskGrouping;->getNextTaskInGroup(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/model/Task$TaskKey;

    move-result-object v16

    .line 589
    .local v16, "toTaskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    .line 590
    const v18, 0x7f0500b6

    .line 591
    const v19, 0x7f0500b5

    .line 589
    invoke-static/range {v17 .. v19}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v6

    .line 598
    .local v6, "launchOpts":Landroid/app/ActivityOptions;
    :goto_1
    if-eqz v16, :cond_4

    .line 599
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/android/systemui/recents/model/TaskStack;->findTaskWithId(I)Lcom/android/systemui/recents/model/Task;

    move-result-object v15

    .line 601
    .end local v15    # "toTask":Lcom/android/systemui/recents/model/Task;
    :cond_4
    invoke-virtual {v4}, Lcom/android/systemui/recents/model/TaskGrouping;->getTaskCount()I

    move-result v8

    .line 607
    .end local v4    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    .end local v6    # "launchOpts":Landroid/app/ActivityOptions;
    .end local v12    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v16    # "toTaskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    :cond_5
    if-nez v15, :cond_a

    .line 608
    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v8, v0, :cond_6

    .line 609
    if-eqz p1, :cond_9

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    .line 612
    const v18, 0x7f0500b4

    .line 611
    invoke-static/range {v17 .. v18}, Landroid/app/ActivityOptions;->makeCustomInPlaceAnimation(Landroid/content/Context;I)Landroid/app/ActivityOptions;

    move-result-object v17

    .line 610
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V

    .line 619
    :cond_6
    :goto_2
    return-void

    .line 593
    .restart local v4    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    .local v6, "launchOpts":Landroid/app/ActivityOptions;
    .restart local v12    # "task":Lcom/android/systemui/recents/model/Task;
    .restart local v15    # "toTask":Lcom/android/systemui/recents/model/Task;
    :cond_7
    invoke-virtual {v4, v12}, Lcom/android/systemui/recents/model/TaskGrouping;->getPrevTaskInGroup(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/model/Task$TaskKey;

    move-result-object v16

    .line 594
    .restart local v16    # "toTaskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    .line 595
    const v18, 0x7f0500b9

    .line 596
    const v19, 0x7f0500b8

    .line 594
    invoke-static/range {v17 .. v19}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v6

    .local v6, "launchOpts":Landroid/app/ActivityOptions;
    goto :goto_1

    .line 582
    .end local v4    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    .end local v16    # "toTaskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    .local v6, "launchOpts":Landroid/app/ActivityOptions;
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 615
    .end local v6    # "launchOpts":Landroid/app/ActivityOptions;
    .end local v12    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v15    # "toTask":Lcom/android/systemui/recents/model/Task;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    .line 616
    const v18, 0x7f0500b7

    .line 615
    invoke-static/range {v17 .. v18}, Landroid/app/ActivityOptions;->makeCustomInPlaceAnimation(Landroid/content/Context;I)Landroid/app/ActivityOptions;

    move-result-object v17

    .line 614
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V

    goto :goto_2

    .line 623
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string/jumbo v18, "overview_affiliated_task_launch"

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    iget-object v0, v15, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v18, v0

    iget-object v0, v15, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v11, v0, v1, v2, v6}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startActivityFromRecents(Landroid/content/Context;Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/String;Landroid/app/ActivityOptions;)Z

    .line 560
    return-void
.end method

.method protected startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;ZZII)V
    .locals 14
    .param p1, "runningTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "isHomeStackVisible"    # Z
    .param p3, "animate"    # Z
    .param p4, "growTarget"    # I
    .param p5, "fullscreenTaskId"    # I

    .prologue
    .line 1084
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v4

    .line 1085
    .local v4, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v3

    .line 1087
    .local v3, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iget-boolean v11, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    if-nez v11, :cond_6

    if-eqz p1, :cond_6

    .line 1088
    iget v6, p1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    .line 1094
    .local v6, "runningTaskId":I
    :goto_0
    iget-boolean v11, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    if-nez v11, :cond_0

    iget-boolean v11, p0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    if-nez v11, :cond_0

    sget-object v11, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    if-nez v11, :cond_1

    .line 1096
    :cond_0
    iget-object v11, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v11}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v11

    sput-object v11, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    .line 1098
    :cond_1
    iget-boolean v11, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    if-nez v11, :cond_7

    iget-boolean v11, p0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    if-nez v11, :cond_7

    sget-object v11, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v11}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->hasTasks()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1102
    :goto_1
    sget-object v11, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v11}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v7

    .line 1103
    .local v7, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v7}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v11

    if-lez v11, :cond_9

    const/4 v2, 0x1

    .line 1104
    .local v2, "hasRecentTasks":Z
    :goto_2
    if-eqz p1, :cond_2

    if-eqz p2, :cond_a

    :cond_2
    const/4 v9, 0x0

    .line 1107
    .local v9, "useThumbnailTransition":Z
    :goto_3
    if-nez v9, :cond_3

    iget-boolean v11, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    if-eqz v11, :cond_b

    :cond_3
    const/4 v11, 0x0

    :goto_4
    iput-boolean v11, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    .line 1108
    if-nez v9, :cond_c

    iget-boolean v11, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    :goto_5
    iput-boolean v11, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    .line 1109
    iget-boolean v11, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    iput-boolean v11, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    .line 1110
    iget-boolean v11, p0, Lcom/android/systemui/recents/RecentsImpl;->mDraggingInRecents:Z

    iput-boolean v11, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDragGesture:Z

    .line 1111
    iput v6, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    .line 1112
    iget-boolean v11, p0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    iput-boolean v11, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    .line 1114
    move/from16 v0, p5

    iput v0, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFullscreenTaskId:I

    .line 1119
    invoke-direct {p0, v6}, Lcom/android/systemui/recents/RecentsImpl;->preloadIcon(I)V

    .line 1122
    move/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/RecentsImpl;->getWindowRectOverride(I)Landroid/graphics/Rect;

    move-result-object v10

    .line 1124
    .local v10, "windowOverrideRect":Landroid/graphics/Rect;
    sget-boolean v11, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformInTaskStack:Z

    if-nez v11, :cond_4

    :cond_4
    if-nez v10, :cond_5

    .line 1126
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getWindowRect()Landroid/graphics/Rect;

    move-result-object v10

    .line 1129
    :cond_5
    invoke-direct {p0, v7, v10}, Lcom/android/systemui/recents/RecentsImpl;->updateHeaderBarLayout(Lcom/android/systemui/recents/model/TaskStack;Landroid/graphics/Rect;)V

    .line 1133
    iget-object v11, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v11}, Lcom/android/systemui/recents/views/TaskStackView;->computeStackVisibilityReport()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;

    move-result-object v8

    .line 1136
    .local v8, "stackVr":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;
    iget v11, v8, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;->numVisibleTasks:I

    iput v11, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleTasks:I

    .line 1137
    iget v11, v8, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;->numVisibleThumbnails:I

    iput v11, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleThumbnails:I

    .line 1139
    if-nez p3, :cond_d

    .line 1140
    iget-object v11, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-static {v11, v12, v13}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/systemui/recents/RecentsImpl;->startRecentsActivity(Landroid/app/ActivityOptions;)V

    .line 1141
    return-void

    .line 1089
    .end local v2    # "hasRecentTasks":Z
    .end local v6    # "runningTaskId":I
    .end local v7    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v8    # "stackVr":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;
    .end local v9    # "useThumbnailTransition":Z
    .end local v10    # "windowOverrideRect":Landroid/graphics/Rect;
    :cond_6
    const/4 v6, -0x1

    .restart local v6    # "runningTaskId":I
    goto/16 :goto_0

    .line 1099
    :cond_7
    sget-object v12, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    if-eqz p2, :cond_8

    const/4 v11, 0x0

    :goto_6
    invoke-virtual {v4, v12, v6, v11}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    goto :goto_1

    :cond_8
    const/4 v11, 0x1

    goto :goto_6

    .line 1103
    .restart local v7    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    :cond_9
    const/4 v2, 0x0

    .restart local v2    # "hasRecentTasks":Z
    goto :goto_2

    :cond_a
    move v9, v2

    .line 1104
    goto :goto_3

    .line 1107
    .restart local v9    # "useThumbnailTransition":Z
    :cond_b
    const/4 v11, 0x1

    goto :goto_4

    .line 1108
    :cond_c
    const/4 v11, 0x1

    goto :goto_5

    .line 1145
    .restart local v8    # "stackVr":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;
    .restart local v10    # "windowOverrideRect":Landroid/graphics/Rect;
    :cond_d
    if-eqz v9, :cond_e

    .line 1147
    iget-object v11, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move/from16 v0, p5

    invoke-direct {p0, p1, v11, v10, v0}, Lcom/android/systemui/recents/RecentsImpl;->getThumbnailTransitionActivityOptions(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/systemui/recents/views/TaskStackView;Landroid/graphics/Rect;I)Landroid/app/ActivityOptions;

    move-result-object v5

    .line 1156
    .local v5, "opts":Landroid/app/ActivityOptions;
    :goto_7
    invoke-direct {p0, v5}, Lcom/android/systemui/recents/RecentsImpl;->startRecentsActivity(Landroid/app/ActivityOptions;)V

    .line 1157
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    iput-wide v12, p0, Lcom/android/systemui/recents/RecentsImpl;->mLastToggleTime:J

    .line 1082
    return-void

    .line 1152
    .end local v5    # "opts":Landroid/app/ActivityOptions;
    :cond_e
    if-eqz v2, :cond_f

    .line 1153
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsImpl;->getHomeTransitionActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v5

    .restart local v5    # "opts":Landroid/app/ActivityOptions;
    goto :goto_7

    .line 1154
    .end local v5    # "opts":Landroid/app/ActivityOptions;
    :cond_f
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsImpl;->getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v5

    .restart local v5    # "opts":Landroid/app/ActivityOptions;
    goto :goto_7
.end method

.method public toggleRecents(I)V
    .locals 15
    .param p1, "growTarget"    # I

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    return-void

    .line 389
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mDraggingInRecents:Z

    .line 390
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    .line 391
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    .line 393
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v14

    .line 395
    .local v14, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableDesktopMode:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 396
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsImpl;->toggleRecentsWindow()V

    .line 397
    return-void

    .line 402
    :cond_1
    :try_start_0
    new-instance v12, Landroid/util/MutableBoolean;

    const/4 v0, 0x1

    invoke-direct {v12, v0}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 403
    .local v12, "isHomeStackVisible":Landroid/util/MutableBoolean;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mLastToggleTime:J

    sub-long v10, v2, v4

    .line 405
    .local v10, "elapsedTime":J
    new-instance v9, Landroid/util/MutableInt;

    const/4 v0, -0x1

    invoke-direct {v9, v0}, Landroid/util/MutableInt;-><init>(I)V

    .line 408
    .local v9, "fullscreenTaskId":Landroid/util/MutableInt;
    invoke-virtual {p0, v12, v9}, Lcom/android/systemui/recents/RecentsImpl;->isRecentsActivityVisible(Landroid/util/MutableBoolean;Landroid/util/MutableInt;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 410
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getDebugFlags()Lcom/android/systemui/recents/RecentsDebugFlags;

    move-result-object v7

    .line 411
    .local v7, "debugFlags":Lcom/android/systemui/recents/RecentsDebugFlags;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v6

    .line 412
    .local v6, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {v6}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v13

    .line 413
    .local v13, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iget-boolean v0, v13, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    if-nez v0, :cond_5

    .line 415
    invoke-virtual {v7}, Lcom/android/systemui/recents/RecentsDebugFlags;->isPagingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 416
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapMinTime()I

    move-result v0

    int-to-long v2, v0

    cmp-long v0, v2, v10

    if-gez v0, :cond_4

    .line 417
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    int-to-long v2, v0

    cmp-long v0, v10, v2

    if-gez v0, :cond_4

    .line 420
    :cond_2
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableAppList:Z

    if-eqz v0, :cond_3

    .line 421
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 442
    :goto_0
    return-void

    .line 424
    :cond_3
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;

    invoke-direct {v2}, Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;-><init>()V

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 461
    .end local v6    # "config":Lcom/android/systemui/recents/RecentsConfiguration;
    .end local v7    # "debugFlags":Lcom/android/systemui/recents/RecentsDebugFlags;
    .end local v9    # "fullscreenTaskId":Landroid/util/MutableInt;
    .end local v10    # "elapsedTime":J
    .end local v12    # "isHomeStackVisible":Landroid/util/MutableBoolean;
    .end local v13    # "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    :catch_0
    move-exception v8

    .line 462
    .local v8, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v0, "RecentsImpl"

    const-string/jumbo v2, "Failed to launch RecentsActivity"

    invoke-static {v0, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 383
    .end local v8    # "e":Landroid/content/ActivityNotFoundException;
    :goto_1
    return-void

    .line 428
    .restart local v6    # "config":Lcom/android/systemui/recents/RecentsConfiguration;
    .restart local v7    # "debugFlags":Lcom/android/systemui/recents/RecentsDebugFlags;
    .restart local v9    # "fullscreenTaskId":Landroid/util/MutableInt;
    .restart local v10    # "elapsedTime":J
    .restart local v12    # "isHomeStackVisible":Landroid/util/MutableBoolean;
    .restart local v13    # "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    :cond_4
    :try_start_1
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/recents/events/activity/IterateRecentsEvent;

    invoke-direct {v2}, Lcom/android/systemui/recents/events/activity/IterateRecentsEvent;-><init>()V

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_0

    .line 435
    :cond_5
    const-wide/16 v2, 0x15e

    cmp-long v0, v10, v2

    if-gez v0, :cond_6

    .line 436
    return-void

    .line 439
    :cond_6
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;

    invoke-direct {v2}, Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;-><init>()V

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 440
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mLastToggleTime:J

    goto :goto_0

    .line 448
    .end local v6    # "config":Lcom/android/systemui/recents/RecentsConfiguration;
    .end local v7    # "debugFlags":Lcom/android/systemui/recents/RecentsDebugFlags;
    .end local v13    # "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    :cond_7
    const-wide/16 v2, 0x15e

    cmp-long v0, v10, v2

    if-gez v0, :cond_8

    .line 449
    return-void

    .line 453
    :cond_8
    invoke-virtual {v14}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    .line 454
    .local v1, "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-boolean v2, v12, Landroid/util/MutableBoolean;->value:Z

    .line 455
    iget v5, v9, Landroid/util/MutableInt;->value:I

    .line 454
    const/4 v3, 0x1

    move-object v0, p0

    move/from16 v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/RecentsImpl;->startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;ZZII)V

    .line 458
    const-string/jumbo v0, "recentapps"

    invoke-virtual {v14, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 459
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mLastToggleTime:J
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method toggleRecentsWindow()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 1215
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mRecentsWindow:Lcom/android/systemui/recents/desktop/RecentsWindow;

    if-eqz v7, :cond_0

    .line 1216
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mRecentsWindow:Lcom/android/systemui/recents/desktop/RecentsWindow;

    invoke-virtual {v7}, Lcom/android/systemui/recents/desktop/RecentsWindow;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1217
    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mRecentsWindow:Lcom/android/systemui/recents/desktop/RecentsWindow;

    invoke-virtual {v6}, Lcom/android/systemui/recents/desktop/RecentsWindow;->dismiss()V

    .line 1214
    :cond_0
    :goto_0
    return-void

    .line 1220
    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v5

    .line 1221
    .local v5, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v2

    .line 1224
    .local v2, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    invoke-virtual {v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    .line 1225
    .local v3, "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-boolean v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    if-nez v7, :cond_4

    if-eqz v3, :cond_4

    .line 1226
    iget v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    .line 1230
    .local v4, "runningTaskId":I
    :goto_1
    new-instance v0, Landroid/util/MutableBoolean;

    invoke-direct {v0, v6}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 1231
    .local v0, "isHomeStackVisible":Landroid/util/MutableBoolean;
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsImpl;->isRecentsActivityVisible(Landroid/util/MutableBoolean;)Z

    .line 1233
    iget-boolean v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    if-nez v7, :cond_2

    iget-boolean v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    if-nez v7, :cond_2

    sget-object v7, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    if-nez v7, :cond_3

    .line 1234
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v7

    sput-object v7, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    .line 1236
    :cond_3
    iget-boolean v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    if-nez v7, :cond_5

    iget-boolean v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    if-nez v7, :cond_5

    sget-object v7, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v7}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->hasTasks()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1241
    :goto_2
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v1

    .line 1242
    .local v1, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iput v4, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    .line 1243
    iget-boolean v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    iput-boolean v6, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    .line 1245
    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mRecentsWindow:Lcom/android/systemui/recents/desktop/RecentsWindow;

    invoke-virtual {v6}, Lcom/android/systemui/recents/desktop/RecentsWindow;->show()V

    goto :goto_0

    .line 1227
    .end local v0    # "isHomeStackVisible":Landroid/util/MutableBoolean;
    .end local v1    # "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    .end local v4    # "runningTaskId":I
    :cond_4
    const/4 v4, -0x1

    .restart local v4    # "runningTaskId":I
    goto :goto_1

    .line 1237
    .restart local v0    # "isHomeStackVisible":Landroid/util/MutableBoolean;
    :cond_5
    sget-object v7, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    iget-boolean v8, v0, Landroid/util/MutableBoolean;->value:Z

    if-eqz v8, :cond_6

    :goto_3
    invoke-virtual {v2, v7, v4, v6}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    goto :goto_2

    :cond_6
    const/4 v6, 0x1

    goto :goto_3
.end method
