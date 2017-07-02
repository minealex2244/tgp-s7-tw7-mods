.class public Lcom/android/systemui/recents/RecentsActivity;
.super Landroid/app/Activity;
.source "RecentsActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/RecentsActivity$-void__init___LambdaImpl0;,
        Lcom/android/systemui/recents/RecentsActivity$1;,
        Lcom/android/systemui/recents/RecentsActivity$2;,
        Lcom/android/systemui/recents/RecentsActivity$3;,
        Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;
    }
.end annotation


# instance fields
.field private launchDockedTaskFromFullRecents:Z

.field private mFinishedOnStartup:Z

.field private mFocusTimerDuration:I

.field private mHandler:Landroid/os/Handler;

.field private mHelpPopup:Lcom/android/systemui/recents/views/AbstractHelpPopup;

.field private mHomeIntent:Landroid/content/Intent;

.field private mIgnoreAltTabRelease:Z

.field private mIncompatibleAppOverlay:Landroid/view/View;

.field private mIsVisible:Z

.field private mIterateTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

.field private mLastDeviceOrientation:I

.field private mLastDisplayDensity:I

.field private mLastTabKeyEventTime:J

.field private mPackageMonitor:Lcom/android/systemui/recents/model/RecentsPackageMonitor;

.field private mReceivedNewIntent:Z

.field private final mRecentsDrawnEventListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

.field mRecentsViewStub:Landroid/view/ViewStub;

.field private mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

.field private final mSendEnterWindowAnimationCompleteRunnable:Ljava/lang/Runnable;

.field mSlidingView:Lcom/android/systemui/recents/views/RecentsSlidingView;

.field final mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mUpdateFocusOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

.field private final mUserInteractionEvent:Lcom/android/systemui/recents/events/ui/UserInteractionEvent;


# direct methods
.method static synthetic -com_android_systemui_recents_RecentsActivity_lambda$2()V
    .locals 2

    .prologue
    .line 157
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 0
    return-void
.end method

.method static synthetic -get0(Lcom/android/systemui/recents/RecentsActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/RecentsActivity;)Lcom/android/systemui/recents/views/RecentsView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/recents/RecentsActivity;)Landroid/view/ViewTreeObserver$OnDrawListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mUpdateFocusOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 124
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastDeviceOrientation:I

    .line 155
    new-instance v0, Lcom/android/systemui/recents/events/ui/UserInteractionEvent;

    invoke-direct {v0}, Lcom/android/systemui/recents/events/ui/UserInteractionEvent;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mUserInteractionEvent:Lcom/android/systemui/recents/events/ui/UserInteractionEvent;

    .line 156
    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$-void__init___LambdaImpl0;

    invoke-direct {v0}, Lcom/android/systemui/recents/RecentsActivity$-void__init___LambdaImpl0;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mSendEnterWindowAnimationCompleteRunnable:Ljava/lang/Runnable;

    .line 206
    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsActivity$1;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 225
    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsActivity$2;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    .line 224
    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsDrawnEventListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 235
    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsActivity$3;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    .line 234
    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mUpdateFocusOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    .line 115
    return-void
.end method

.method private reloadStackView()V
    .locals 14

    .prologue
    .line 529
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v7

    .line 530
    .local v7, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    invoke-static {}, Lcom/android/systemui/recents/RecentsImpl;->consumeInstanceLoadPlan()Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v6

    .line 531
    .local v6, "loadPlan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    if-nez v6, :cond_0

    .line 532
    invoke-virtual {v7, p0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v6

    .line 536
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    .line 537
    .local v1, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v2

    .line 538
    .local v2, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    invoke-virtual {v6}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->hasTasks()Z

    move-result v11

    if-nez v11, :cond_1

    .line 539
    iget v12, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    .line 540
    iget-boolean v11, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    if-eqz v11, :cond_4

    const/4 v11, 0x0

    .line 539
    :goto_0
    invoke-virtual {v7, v6, v12, v11}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    .line 543
    :cond_1
    new-instance v5, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v5}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 544
    .local v5, "loadOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    iget v11, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    iput v11, v5, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    .line 545
    iget v11, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleTasks:I

    iput v11, v5, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 546
    iget v11, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleThumbnails:I

    iput v11, v5, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    .line 547
    invoke-virtual {v7, p0, v6, v5}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 548
    invoke-virtual {v6}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v8

    .line 549
    .local v8, "stack":Lcom/android/systemui/recents/model/TaskStack;
    iget-object v12, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    iget-boolean v13, p0, Lcom/android/systemui/recents/RecentsActivity;->mIsVisible:Z

    invoke-virtual {v8}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v11

    if-nez v11, :cond_5

    const/4 v11, 0x1

    :goto_1
    invoke-virtual {v12, v13, v11}, Lcom/android/systemui/recents/views/RecentsView;->onReload(ZZ)V

    .line 550
    iget-object v11, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    const/4 v12, 0x1

    invoke-virtual {v11, v8, v12}, Lcom/android/systemui/recents/views/RecentsView;->updateStack(Lcom/android/systemui/recents/model/TaskStack;Z)V

    .line 553
    iget-boolean v11, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    if-eqz v11, :cond_6

    const/4 v0, 0x0

    .line 554
    .local v0, "animateNavBarScrim":Z
    :goto_2
    iget-object v12, p0, Lcom/android/systemui/recents/RecentsActivity;->mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    invoke-virtual {v8}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v11

    if-lez v11, :cond_7

    const/4 v11, 0x1

    :goto_3
    const/4 v13, 0x0

    invoke-virtual {v12, v0, v11, v13}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->updateNavBarScrim(ZZLcom/android/systemui/recents/views/AnimationProps;)V

    .line 558
    iget-boolean v11, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    if-nez v11, :cond_9

    .line 559
    iget-boolean v11, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    if-eqz v11, :cond_8

    const/4 v10, 0x0

    .line 560
    .local v10, "wasLaunchedByAm":Z
    :goto_4
    if-eqz v10, :cond_2

    .line 564
    iget-object v11, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    new-instance v12, Lcom/android/systemui/recents/RecentsActivity$5;

    invoke-direct {v12, p0}, Lcom/android/systemui/recents/RecentsActivity$5;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 576
    :cond_2
    iget-boolean v11, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    if-eqz v11, :cond_a

    .line 577
    const-string/jumbo v11, "overview_trigger_alttab"

    const/4 v12, 0x1

    invoke-static {p0, v11, v12}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 583
    :goto_5
    iget-boolean v11, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    if-eqz v11, :cond_c

    .line 584
    invoke-virtual {v8}, Lcom/android/systemui/recents/model/TaskStack;->getLaunchTarget()Lcom/android/systemui/recents/model/Task;

    move-result-object v3

    .line 585
    .local v3, "launchTarget":Lcom/android/systemui/recents/model/Task;
    if-eqz v3, :cond_b

    .line 586
    invoke-virtual {v8, v3}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v4

    .line 588
    .local v4, "launchTaskIndexInStack":I
    :goto_6
    const-string/jumbo v11, "overview_source_app"

    const/4 v12, 0x1

    invoke-static {p0, v11, v12}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 590
    const-string/jumbo v11, "overview_source_app_index"

    invoke-static {p0, v11, v4}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 596
    .end local v3    # "launchTarget":Lcom/android/systemui/recents/model/Task;
    .end local v4    # "launchTaskIndexInStack":I
    :goto_7
    iget-object v11, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v11}, Lcom/android/systemui/recents/views/RecentsView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v9

    .line 597
    .local v9, "taskCount":I
    const-string/jumbo v11, "overview_task_count"

    invoke-static {p0, v11, v9}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 600
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 601
    const-string/jumbo v11, "GATE"

    const-string/jumbo v12, "<GATE-M> TASK_MGR_LOADED </GATE-M>"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_3
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/systemui/recents/RecentsActivity;->mIsVisible:Z

    .line 526
    return-void

    .line 540
    .end local v0    # "animateNavBarScrim":Z
    .end local v5    # "loadOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    .end local v8    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v9    # "taskCount":I
    .end local v10    # "wasLaunchedByAm":Z
    :cond_4
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 549
    .restart local v5    # "loadOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    .restart local v8    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    :cond_5
    const/4 v11, 0x0

    goto :goto_1

    .line 553
    :cond_6
    const/4 v0, 0x1

    .restart local v0    # "animateNavBarScrim":Z
    goto :goto_2

    .line 554
    :cond_7
    const/4 v11, 0x0

    goto :goto_3

    .line 559
    :cond_8
    const/4 v10, 0x1

    goto :goto_4

    .line 558
    :cond_9
    const/4 v10, 0x0

    goto :goto_4

    .line 579
    .restart local v10    # "wasLaunchedByAm":Z
    :cond_a
    const-string/jumbo v11, "overview_trigger_nav_btn"

    const/4 v12, 0x1

    invoke-static {p0, v11, v12}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_5

    .line 587
    .restart local v3    # "launchTarget":Lcom/android/systemui/recents/model/Task;
    :cond_b
    const/4 v4, 0x0

    .restart local v4    # "launchTaskIndexInStack":I
    goto :goto_6

    .line 592
    .end local v3    # "launchTarget":Lcom/android/systemui/recents/model/Task;
    .end local v4    # "launchTaskIndexInStack":I
    :cond_c
    const-string/jumbo v11, "overview_source_home"

    const/4 v12, 0x1

    invoke-static {p0, v11, v12}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_7
.end method


# virtual methods
.method dismissRecentsToFocusedTask(I)Z
    .locals 2
    .param p1, "logCategory"    # I

    .prologue
    .line 266
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 267
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/views/RecentsView;->launchFocusedTask(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 271
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method dismissRecentsToFocusedTaskOrHome()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 292
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 293
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 295
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/recents/views/RecentsView;->launchFocusedTask(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 297
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHome(Z)V

    .line 298
    return v2

    .line 300
    :cond_1
    return v3
.end method

.method dismissRecentsToHome(Z)V
    .locals 2
    .param p1, "animateTaskViews"    # Z

    .prologue
    .line 313
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHome(ZZLandroid/app/ActivityOptions;)V

    .line 312
    return-void
.end method

.method dismissRecentsToHome(ZZ)V
    .locals 1
    .param p1, "triggeredFromHomeKey"    # Z
    .param p2, "animateTaskViews"    # Z

    .prologue
    .line 305
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHome(ZZLandroid/app/ActivityOptions;)V

    .line 304
    return-void
.end method

.method dismissRecentsToHome(ZZLandroid/app/ActivityOptions;)V
    .locals 5
    .param p1, "triggeredFromHomeKey"    # Z
    .param p2, "animateTaskViews"    # Z
    .param p3, "overrideAnimation"    # Landroid/app/ActivityOptions;

    .prologue
    .line 324
    new-instance v0, Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;

    invoke-direct {v0, p2}, Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;-><init>(Z)V

    .line 326
    .local v0, "dismissEvent":Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;
    if-eqz p1, :cond_0

    .line 327
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mHomeIntent:Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.extra.FROM_HOME_KEY"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 331
    :goto_0
    new-instance v1, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mHomeIntent:Landroid/content/Intent;

    invoke-direct {v1, p0, v2, p3}, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;-><init>(Lcom/android/systemui/recents/RecentsActivity;Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    .line 332
    .local v1, "runnable":Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;
    sget-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSpreadAnimation:Z

    if-eqz v2, :cond_1

    .line 333
    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;->run()V

    .line 338
    :goto_1
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    .line 339
    const-string/jumbo v3, "homekey"

    .line 338
    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 340
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 322
    return-void

    .line 329
    .end local v1    # "runnable":Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mHomeIntent:Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.extra.FROM_HOME_KEY"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 336
    .restart local v1    # "runnable":Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;
    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;->addPostAnimationCallback(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method dismissRecentsToHomeIfVisible(Z)Z
    .locals 2
    .param p1, "animated"    # Z

    .prologue
    .line 345
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 346
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 348
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHome(Z)V

    .line 349
    const/4 v1, 0x1

    return v1

    .line 351
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method dismissRecentsToLaunchTargetTaskOrHome()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 278
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 279
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 281
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/RecentsView;->launchPreviousTask()Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 283
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHome(Z)V

    .line 285
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 1100
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1101
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Lcom/android/systemui/recents/events/EventBus;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1102
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1104
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 1106
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "RecentsActivity"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1107
    const-string/jumbo v1, " visible="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mIsVisible:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "Y"

    :goto_0
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1108
    const-string/jumbo v1, " [0x"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "]"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1109
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 1111
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    if-eqz v1, :cond_0

    .line 1112
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1, p1, p3}, Lcom/android/systemui/recents/views/RecentsView;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1099
    :cond_0
    return-void

    .line 1107
    :cond_1
    const-string/jumbo v1, "N"

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 3

    .prologue
    .line 785
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 786
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    .line 784
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 876
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    .line 878
    .local v0, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iget-boolean v1, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    if-nez v1, :cond_1

    .line 879
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/recents/RecentsActivity;->launchDockedTaskFromFullRecents:Z

    .line 877
    if-eqz v1, :cond_2

    .line 880
    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v1

    .line 877
    if-eqz v1, :cond_2

    .line 881
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/activity/UndockingTaskEvent;

    invoke-direct {v2}, Lcom/android/systemui/recents/events/activity/UndockingTaskEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 872
    :goto_0
    return-void

    .line 885
    :cond_2
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;

    invoke-direct {v2}, Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;

    .prologue
    .line 969
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    .line 970
    .local v0, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iget v1, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    .line 971
    .local v1, "launchToTaskId":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 972
    iget-object v3, p1, Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;->launchTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;->launchTask:Lcom/android/systemui/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    if-eq v1, v3, :cond_1

    .line 973
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    .line 974
    .local v2, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget v3, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->cancelWindowTransition(I)V

    .line 975
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getTaskId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->cancelThumbnailTransition(I)V

    .line 968
    .end local v2    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :cond_1
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DebugFlagsChangedEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/DebugFlagsChangedEvent;

    .prologue
    .line 1070
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->finish()V

    .line 1068
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DockedFirstAnimationFrameEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/DockedFirstAnimationFrameEvent;

    .prologue
    .line 964
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 965
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->invalidate()V

    .line 963
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsDrawnEventListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1081
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->invalidate()V

    .line 1079
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/EnterRecentsWindowLastAnimationFrameEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/EnterRecentsWindowLastAnimationFrameEvent;

    .prologue
    .line 950
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/UpdateFreeformTaskViewVisibilityEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/UpdateFreeformTaskViewVisibilityEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 951
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 952
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->invalidate()V

    .line 949
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ExitRecentsWindowFirstAnimationFrameEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/ExitRecentsWindowFirstAnimationFrameEvent;

    .prologue
    .line 956
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->isLastTaskLaunchedFreeform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 957
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/UpdateFreeformTaskViewVisibilityEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/UpdateFreeformTaskViewVisibilityEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 959
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 960
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->invalidate()V

    .line 955
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/HideRecentsEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/HideRecentsEvent;

    .prologue
    const/4 v1, 0x1

    .line 930
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpPopup:Lcom/android/systemui/recents/views/AbstractHelpPopup;

    if-eqz v0, :cond_0

    .line 931
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpPopup:Lcom/android/systemui/recents/views/AbstractHelpPopup;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->dismiss()V

    .line 934
    :cond_0
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;->triggeredFromAltTab:Z

    if-eqz v0, :cond_2

    .line 936
    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIgnoreAltTabRelease:Z

    if-nez v0, :cond_1

    .line 937
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToFocusedTaskOrHome()Z

    .line 928
    :cond_1
    :goto_0
    return-void

    .line 939
    :cond_2
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;->triggeredFromHomeKey:Z

    if-eqz v0, :cond_1

    .line 940
    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHome(ZZ)V

    .line 943
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mUserInteractionEvent:Lcom/android/systemui/recents/events/ui/UserInteractionEvent;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/IterateRecentsEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/IterateRecentsEvent;

    .prologue
    .line 901
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getDebugFlags()Lcom/android/systemui/recents/RecentsDebugFlags;

    move-result-object v0

    .line 904
    .local v0, "debugFlags":Lcom/android/systemui/recents/RecentsDebugFlags;
    const/4 v1, 0x0

    .line 905
    .local v1, "timerIndicatorDuration":I
    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsDebugFlags;->isFastToggleRecentsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 906
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 907
    const v3, 0x7f0c0040

    .line 906
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 909
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mIterateTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/misc/DozeTrigger;->setDozeDuration(I)V

    .line 910
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mIterateTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/DozeTrigger;->isDozing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 911
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mIterateTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/DozeTrigger;->startDozing()V

    .line 918
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/ui/focus/FocusNextTaskViewEvent;

    invoke-direct {v3, v1}, Lcom/android/systemui/recents/events/ui/focus/FocusNextTaskViewEvent;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 920
    const/16 v2, 0x114

    invoke-static {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 900
    return-void

    .line 913
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mIterateTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/DozeTrigger;->poke()V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTaskFailedEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/LaunchTaskFailedEvent;

    .prologue
    const/4 v1, 0x1

    .line 1059
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHome(Z)V

    .line 1061
    const-string/jumbo v0, "overview_task_launch_failed"

    invoke-static {p0, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1057
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTaskSucceededEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/LaunchTaskSucceededEvent;

    .prologue
    .line 1054
    const-string/jumbo v0, "overview_task_launch_index"

    iget v1, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskSucceededEvent;->taskIndexFromStackFront:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1053
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;

    .prologue
    .line 892
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    .line 893
    .local v0, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iget-boolean v1, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    if-eqz v1, :cond_0

    .line 894
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHome(Z)V

    .line 891
    :goto_0
    return-void

    .line 896
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToLaunchTargetTaskOrHome()Z

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/component/ScreenPinningRequestEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/component/ScreenPinningRequestEvent;

    .prologue
    .line 1065
    const-string/jumbo v0, "overview_screen_pinned"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1064
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;

    .prologue
    .line 1040
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 1041
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableCloseAllLayout:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p1, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;->launchHome:Z

    if-eqz v1, :cond_1

    .line 1046
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHome(Z)V

    .line 1050
    :goto_0
    const-string/jumbo v1, "overview_task_all_dismissed"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1039
    return-void

    .line 1042
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v1

    .line 1041
    if-eqz v1, :cond_0

    .line 1043
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    iget v2, p1, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;->msgResId:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/RecentsView;->showEmptyView(I)V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;

    .prologue
    .line 1031
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 1032
    .local v0, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    iget-object v2, p1, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;->task:Lcom/android/systemui/recents/model/Task;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->deleteTaskData(Lcom/android/systemui/recents/model/Task;Z)V

    .line 1035
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    .line 1036
    .local v1, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget-object v2, p1, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->removeTask(I)V

    .line 1029
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/HideIncompatibleAppOverlayEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/HideIncompatibleAppOverlayEvent;

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIncompatibleAppOverlay:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1021
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIncompatibleAppOverlay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1022
    const/4 v1, 0x0

    .line 1021
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1023
    const-wide/16 v2, 0x96

    .line 1021
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1024
    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 1021
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1019
    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;

    .prologue
    const/4 v4, 0x0

    .line 981
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 982
    const-string/jumbo v2, "package"

    iget-object v3, p1, Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 981
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 983
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 985
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isUPSModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 986
    const v1, 0x1080c000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 988
    new-instance v1, Landroid/os/UserHandle;

    const/4 v2, -0x2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v4, v1}, Lcom/android/systemui/recents/RecentsActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 997
    :goto_0
    const-string/jumbo v1, "overview_app_info"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 979
    return-void

    .line 991
    :cond_0
    invoke-static {p0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    .line 993
    new-instance v2, Landroid/os/UserHandle;

    iget-object v3, p1, Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 991
    invoke-virtual {v1, v4, v2}, Landroid/app/TaskStackBuilder;->startActivities(Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/ShowIncompatibleAppOverlayEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/ShowIncompatibleAppOverlayEvent;

    .prologue
    .line 1003
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/StackViewScrolledEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/StackViewScrolledEvent;

    .prologue
    .line 1076
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIgnoreAltTabRelease:Z

    .line 1073
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/UserInteractionEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/UserInteractionEvent;

    .prologue
    .line 925
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIterateTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    .line 923
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 666
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 669
    invoke-static {p0}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    .line 670
    .local v0, "newDeviceConfiguration":Landroid/content/res/Configuration;
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/RecentsView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskStack;->getStackTaskCount()I

    move-result v1

    .line 671
    .local v1, "numStackTasks":I
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;

    .line 672
    iget v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastDeviceOrientation:I

    iget v5, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v5, :cond_3

    move v2, v3

    .line 673
    :goto_0
    iget v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastDisplayDensity:I

    iget v6, v0, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v5, v6, :cond_4

    move v6, v3

    :goto_1
    if-lez v1, :cond_5

    move v5, v3

    .line 671
    :goto_2
    invoke-direct {v8, v4, v2, v6, v5}, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;-><init>(ZZZZ)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 675
    iget v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastDeviceOrientation:I

    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v4, :cond_0

    .line 676
    iget v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastDisplayDensity:I

    iget v4, v0, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v2, v4, :cond_1

    .line 677
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v4, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;

    invoke-direct {v4, v3}, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;-><init>(Z)V

    invoke-virtual {v2, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 680
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpPopup:Lcom/android/systemui/recents/views/AbstractHelpPopup;

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastDeviceOrientation:I

    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v3, :cond_2

    .line 681
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpPopup:Lcom/android/systemui/recents/views/AbstractHelpPopup;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->updateContentsSize()V

    .line 684
    :cond_2
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastDeviceOrientation:I

    .line 685
    iget v2, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastDisplayDensity:I

    .line 665
    return-void

    :cond_3
    move v2, v4

    .line 672
    goto :goto_0

    :cond_4
    move v6, v4

    .line 673
    goto :goto_1

    :cond_5
    move v5, v4

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const v6, 0x7f130312

    const/4 v7, 0x2

    const/4 v5, 0x1

    .line 357
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 358
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mFinishedOnStartup:Z

    .line 362
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    .line 363
    .local v3, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    if-nez v3, :cond_0

    .line 364
    iput-boolean v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mFinishedOnStartup:Z

    .line 365
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->finish()V

    .line 366
    return-void

    .line 370
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v4

    invoke-virtual {v4, p0, v7}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    .line 373
    new-instance v4, Lcom/android/systemui/recents/model/RecentsPackageMonitor;

    invoke-direct {v4}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mPackageMonitor:Lcom/android/systemui/recents/model/RecentsPackageMonitor;

    .line 374
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mPackageMonitor:Lcom/android/systemui/recents/model/RecentsPackageMonitor;

    invoke-virtual {v4, p0}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->register(Landroid/content/Context;)V

    .line 377
    const v4, 0x7f040114

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/RecentsActivity;->setContentView(I)V

    .line 378
    invoke-virtual {p0, v5}, Lcom/android/systemui/recents/RecentsActivity;->takeKeyEvents(Z)V

    .line 380
    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableAppList:Z

    if-eqz v4, :cond_6

    .line 381
    invoke-virtual {p0, v6}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewStub;

    iput-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsViewStub:Landroid/view/ViewStub;

    .line 382
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsViewStub:Landroid/view/ViewStub;

    const v5, 0x7f040122

    invoke-virtual {v4, v5}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 383
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsViewStub:Landroid/view/ViewStub;

    invoke-virtual {v4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/views/RecentsSlidingView;

    iput-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mSlidingView:Lcom/android/systemui/recents/views/RecentsSlidingView;

    .line 384
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mSlidingView:Lcom/android/systemui/recents/views/RecentsSlidingView;

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/views/RecentsSlidingView;->bindViews(Landroid/view/View;)V

    .line 385
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mSlidingView:Lcom/android/systemui/recents/views/RecentsSlidingView;

    const v5, 0x7f13032f

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/views/RecentsSlidingView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/views/RecentsView;

    iput-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    .line 392
    :goto_0
    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableMoreButton:Z

    if-eqz v4, :cond_1

    .line 393
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v4

    invoke-static {v3}, Lcom/android/systemui/recents/misc/Utilities;->hasSamsungMembers(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/android/systemui/recents/RecentsConfiguration;->hasSamsungMembers:Z

    .line 396
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    const/16 v5, 0x700

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/views/RecentsView;->setSystemUiVisibility(I)V

    .line 399
    new-instance v4, Lcom/android/systemui/recents/views/SystemBarScrimViews;

    invoke-direct {v4, p0}, Lcom/android/systemui/recents/views/SystemBarScrimViews;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    iput-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    .line 405
    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformInTaskStack:Z

    if-nez v4, :cond_2

    .line 407
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v5, v5, 0x4000

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 411
    :cond_2
    invoke-static {p0}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    .line 412
    .local v0, "appConfiguration":Landroid/content/res/Configuration;
    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastDeviceOrientation:I

    .line 413
    iget v4, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastDisplayDensity:I

    .line 414
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c003f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mFocusTimerDuration:I

    .line 415
    new-instance v4, Lcom/android/systemui/recents/misc/DozeTrigger;

    iget v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mFocusTimerDuration:I

    new-instance v6, Lcom/android/systemui/recents/RecentsActivity$4;

    invoke-direct {v6, p0}, Lcom/android/systemui/recents/RecentsActivity$4;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/recents/misc/DozeTrigger;-><init>(ILjava/lang/Runnable;)V

    iput-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mIterateTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    .line 423
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/RecentsView;->getBackgroundScrim()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 426
    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableAppList:Z

    if-nez v4, :cond_3

    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableMoreButton:Z

    if-nez v4, :cond_3

    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableCloseAllLayout:Z

    if-eqz v4, :cond_4

    .line 427
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    .line 428
    const v4, 0x7f130319

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 429
    const v5, 0x7f130317

    invoke-virtual {p0, v5}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 427
    invoke-virtual {v6, v4, v5}, Lcom/android/systemui/recents/views/RecentsView;->setRecentsContainerView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 434
    :cond_4
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mHomeIntent:Landroid/content/Intent;

    .line 435
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mHomeIntent:Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.category.HOME"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mHomeIntent:Landroid/content/Intent;

    const/high16 v5, 0x10200000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 440
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 441
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 442
    const-string/jumbo v4, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 443
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/android/systemui/recents/RecentsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 445
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x40

    invoke-virtual {v4, v5}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 448
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 449
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v4, v4, 0x400

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 450
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 451
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 454
    new-instance v4, Lcom/android/systemui/recents/views/AbstractHelpPopup;

    const-string/jumbo v5, "RecentsFullscreenHelpPopup"

    invoke-direct {v4, p0, v5, v7}, Lcom/android/systemui/recents/views/AbstractHelpPopup;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpPopup:Lcom/android/systemui/recents/views/AbstractHelpPopup;

    .line 457
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->isInMultiWindowMode()Z

    move-result v5

    iput-boolean v5, v4, Lcom/android/systemui/recents/RecentsConfiguration;->isInMultiWindowMode:Z

    .line 461
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->reloadStackView()V

    .line 464
    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableAppList:Z

    if-eqz v4, :cond_5

    .line 465
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mSlidingView:Lcom/android/systemui/recents/views/RecentsSlidingView;

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->isInMultiWindowMode()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/views/RecentsSlidingView;->reload(Z)V

    .line 356
    :cond_5
    return-void

    .line 387
    .end local v0    # "appConfiguration":Landroid/content/res/Configuration;
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_6
    invoke-virtual {p0, v6}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewStub;

    iput-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsViewStub:Landroid/view/ViewStub;

    .line 388
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsViewStub:Landroid/view/ViewStub;

    const v5, 0x7f04012b

    invoke-virtual {v4, v5}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 389
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsViewStub:Landroid/view/ViewStub;

    invoke-virtual {v4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/views/RecentsView;

    iput-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 767
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 770
    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mFinishedOnStartup:Z

    if-eqz v0, :cond_0

    .line 771
    return-void

    .line 775
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 778
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mPackageMonitor:Lcom/android/systemui/recents/model/RecentsPackageMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->unregister()V

    .line 780
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    .line 766
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 791
    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    .line 792
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    .line 790
    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 10

    .prologue
    const v9, 0x7f0f05d2

    const v8, 0x7f0f05d1

    const v5, 0x7f020437

    const/4 v7, 0x1

    const v6, 0x7f0f0042

    .line 611
    invoke-super {p0}, Landroid/app/Activity;->onEnterAnimationComplete()V

    .line 616
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mSendEnterWindowAnimationCompleteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 617
    iget-boolean v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mReceivedNewIntent:Z

    if-nez v2, :cond_4

    .line 618
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mSendEnterWindowAnimationCompleteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 624
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mIsVisible:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpPopup:Lcom/android/systemui/recents/views/AbstractHelpPopup;

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isMultiWindowSettingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 625
    const/4 v1, 0x0

    .line 626
    .local v1, "needToShow":Z
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    .line 627
    .local v0, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->isInMultiWindowMode()Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "RecentsFullscreenHelpPopup"

    invoke-static {p0, v2}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->getPersistentState(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 628
    const/4 v1, 0x1

    .line 629
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpPopup:Lcom/android/systemui/recents/views/AbstractHelpPopup;

    const-string/jumbo v3, "RecentsFullscreenHelpPopup"

    invoke-virtual {v2, v3, v7}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->initialize(Ljava/lang/String;I)V

    .line 630
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpPopup:Lcom/android/systemui/recents/views/AbstractHelpPopup;

    const v3, 0x7f020435

    const v4, 0x7f0f05cc

    .line 631
    const v5, 0x7f0f05cd

    .line 630
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->addContent(IIII)V

    .line 646
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 647
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpPopup:Lcom/android/systemui/recents/views/AbstractHelpPopup;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->show()V

    .line 650
    .end local v0    # "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    .end local v1    # "needToShow":Z
    :cond_1
    sget-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableMoreButton:Z

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableAppList:Z

    if-eqz v2, :cond_3

    .line 651
    :cond_2
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/ui/ToggleRecentsButtonsContainerEvent;

    invoke-direct {v3, v7}, Lcom/android/systemui/recents/events/ui/ToggleRecentsButtonsContainerEvent;-><init>(Z)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 610
    :cond_3
    return-void

    .line 620
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mSendEnterWindowAnimationCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 632
    .restart local v0    # "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    .restart local v1    # "needToShow":Z
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "RecentsSplitscreenHelpPopup"

    invoke-static {p0, v2}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->getPersistentState(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 633
    iget-boolean v2, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedSplitScreenWithHelpPopup:Z

    .line 632
    if-eqz v2, :cond_0

    .line 634
    const/4 v1, 0x1

    .line 635
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpPopup:Lcom/android/systemui/recents/views/AbstractHelpPopup;

    const-string/jumbo v3, "RecentsSplitscreenHelpPopup"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->initialize(Ljava/lang/String;I)V

    .line 636
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpPopup:Lcom/android/systemui/recents/views/AbstractHelpPopup;

    const v3, 0x7f020436

    .line 637
    const v4, 0x7f0f05d0

    .line 636
    invoke-virtual {v2, v3, v8, v8, v4}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->addContent(IIII)V

    .line 638
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasSoftNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 639
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpPopup:Lcom/android/systemui/recents/views/AbstractHelpPopup;

    const v3, 0x7f0f05d3

    .line 640
    const v4, 0x7f0f05d3

    .line 639
    invoke-virtual {v2, v5, v3, v4, v6}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->addContent(IIII)V

    goto :goto_1

    .line 642
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpPopup:Lcom/android/systemui/recents/views/AbstractHelpPopup;

    invoke-virtual {v2, v5, v9, v9, v6}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->addContent(IIII)V

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 805
    sparse-switch p1, :sswitch_data_0

    .line 851
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    return v3

    .line 807
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0041

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 808
    .local v0, "altTabKeyDelay":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 809
    iget-wide v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastTabKeyEventTime:J

    .line 808
    sub-long/2addr v4, v6

    .line 809
    int-to-long v6, v0

    .line 808
    cmp-long v3, v4, v6

    if-lez v3, :cond_3

    const/4 v2, 0x1

    .line 810
    .local v2, "hasRepKeyTimeElapsed":Z
    :goto_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-lez v3, :cond_1

    if-eqz v2, :cond_2

    .line 812
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v1

    .line 813
    .local v1, "backward":Z
    if-eqz v1, :cond_4

    .line 814
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/ui/focus/FocusPreviousTaskViewEvent;

    invoke-direct {v4}, Lcom/android/systemui/recents/events/ui/focus/FocusPreviousTaskViewEvent;-><init>()V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 819
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastTabKeyEventTime:J

    .line 822
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 823
    iput-boolean v8, p0, Lcom/android/systemui/recents/RecentsActivity;->mIgnoreAltTabRelease:Z

    .line 826
    .end local v1    # "backward":Z
    :cond_2
    return v9

    .line 808
    .end local v2    # "hasRepKeyTimeElapsed":Z
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "hasRepKeyTimeElapsed":Z
    goto :goto_0

    .line 816
    .restart local v1    # "backward":Z
    :cond_4
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    .line 817
    new-instance v4, Lcom/android/systemui/recents/events/ui/focus/FocusNextTaskViewEvent;

    invoke-direct {v4, v8}, Lcom/android/systemui/recents/events/ui/focus/FocusNextTaskViewEvent;-><init>(I)V

    .line 816
    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_1

    .line 829
    .end local v0    # "altTabKeyDelay":I
    .end local v1    # "backward":Z
    .end local v2    # "hasRepKeyTimeElapsed":Z
    :sswitch_1
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    .line 830
    new-instance v4, Lcom/android/systemui/recents/events/ui/focus/FocusNextTaskViewEvent;

    invoke-direct {v4, v8}, Lcom/android/systemui/recents/events/ui/focus/FocusNextTaskViewEvent;-><init>(I)V

    .line 829
    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 831
    return v9

    .line 834
    :sswitch_2
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/ui/focus/FocusPreviousTaskViewEvent;

    invoke-direct {v4}, Lcom/android/systemui/recents/events/ui/focus/FocusPreviousTaskViewEvent;-><init>()V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 835
    return v9

    .line 839
    :sswitch_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-gtz v3, :cond_0

    .line 840
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/ui/focus/DismissFocusedTaskViewEvent;

    invoke-direct {v4}, Lcom/android/systemui/recents/events/ui/focus/DismissFocusedTaskViewEvent;-><init>()V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 843
    const-string/jumbo v3, "overview_task_dismissed_source"

    invoke-static {p0, v3, v8}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 845
    return v9

    .line 805
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_2
        0x3d -> :sswitch_0
        0x43 -> :sswitch_3
        0x70 -> :sswitch_3
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 856
    packed-switch p1, :pswitch_data_0

    .line 863
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 858
    :pswitch_0
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableMoreButton:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->showMenuIfNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 859
    const/4 v0, 0x1

    return v0

    .line 856
    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_0
    .end packed-switch
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 14
    .param p1, "isInMultiWindowMode"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 690
    invoke-super {p0, p1}, Landroid/app/Activity;->onMultiWindowModeChanged(Z)V

    .line 692
    sget-boolean v9, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableAppList:Z

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mSlidingView:Lcom/android/systemui/recents/views/RecentsSlidingView;

    if-eqz v9, :cond_0

    .line 693
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mSlidingView:Lcom/android/systemui/recents/views/RecentsSlidingView;

    invoke-virtual {v9, p1}, Lcom/android/systemui/recents/views/RecentsSlidingView;->onMultiWindowModeChanged(Z)V

    .line 698
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 699
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v1

    .line 700
    .local v1, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v4

    .line 701
    .local v4, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    invoke-virtual {v4, p0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v3

    .line 702
    .local v3, "loadPlan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    const/4 v9, -0x1

    invoke-virtual {v4, v3, v9, v11}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    .line 705
    new-instance v2, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v2}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 706
    .local v2, "loadOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    iget v9, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleTasks:I

    iput v9, v2, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 707
    iget v9, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleThumbnails:I

    iput v9, v2, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    .line 709
    iput-boolean v10, v2, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadInvisibleActivities:Z

    .line 711
    invoke-virtual {v4, p0, v3, v2}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 713
    invoke-virtual {v3}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v8

    .line 714
    .local v8, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v8}, Lcom/android/systemui/recents/model/TaskStack;->getStackTaskCount()I

    move-result v5

    .line 715
    .local v5, "numStackTasks":I
    if-lez v5, :cond_2

    const/4 v6, 0x1

    .line 718
    .local v6, "showDeferredAnimation":Z
    :goto_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v7

    .line 719
    .local v7, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v9

    iput-boolean p1, v9, Lcom/android/systemui/recents/RecentsConfiguration;->isInMultiWindowMode:Z

    .line 724
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    if-eqz v9, :cond_1

    iget-boolean v9, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    if-eqz v9, :cond_3

    .line 730
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v12

    new-instance v13, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;

    .line 732
    if-lez v5, :cond_4

    move v9, v10

    .line 730
    :goto_2
    invoke-direct {v13, v10, v11, v11, v9}, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;-><init>(ZZZZ)V

    invoke-virtual {v12, v13}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 733
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v9

    new-instance v10, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;

    .line 734
    invoke-virtual {v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible()Z

    move-result v11

    .line 733
    invoke-direct {v10, p1, v6, v8, v11}, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;-><init>(ZZLcom/android/systemui/recents/model/TaskStack;Z)V

    invoke-virtual {v9, v10}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 689
    return-void

    .line 715
    .end local v6    # "showDeferredAnimation":Z
    .end local v7    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "showDeferredAnimation":Z
    goto :goto_0

    .line 724
    .restart local v7    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :cond_3
    if-eqz p1, :cond_1

    .line 725
    invoke-virtual {v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible()Z

    move-result v9

    .line 724
    if-eqz v9, :cond_1

    .line 726
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v9}, Lcom/android/systemui/recents/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v9

    iget-object v12, p0, Lcom/android/systemui/recents/RecentsActivity;->mUpdateFocusOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v9, v12}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    goto :goto_1

    :cond_4
    move v9, v11

    .line 732
    goto :goto_2
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 503
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 506
    const-string/jumbo v0, "update_focus"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    iput-boolean v2, p0, Lcom/android/systemui/recents/RecentsActivity;->launchDockedTaskFromFullRecents:Z

    .line 508
    return-void

    .line 511
    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mReceivedNewIntent:Z

    .line 514
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->reloadStackView()V

    .line 517
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableAppList:Z

    if-eqz v0, :cond_1

    .line 518
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mSlidingView:Lcom/android/systemui/recents/views/RecentsSlidingView;

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->isInMultiWindowMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsSlidingView;->reload(Z)V

    .line 502
    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 658
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 660
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIgnoreAltTabRelease:Z

    .line 661
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIterateTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    .line 657
    return-void
.end method

.method public onPreDraw()Z
    .locals 2

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1089
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    new-instance v1, Lcom/android/systemui/recents/RecentsActivity$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/RecentsActivity$6;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->post(Ljava/lang/Runnable;)Z

    .line 1095
    const/4 v0, 0x1

    return v0
.end method

.method protected onStart()V
    .locals 5

    .prologue
    const/high16 v4, 0x100000

    const/4 v3, 0x0

    .line 472
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 475
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 476
    const/16 v0, 0xe0

    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 479
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableCloseAllLayout:Z

    if-eqz v0, :cond_0

    .line 480
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;

    invoke-direct {v1, v3}, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 482
    :cond_0
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableMoreButton:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableAppList:Z

    if-eqz v0, :cond_2

    .line 483
    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/ToggleRecentsButtonsContainerEvent;

    invoke-direct {v1, v3}, Lcom/android/systemui/recents/events/ui/ToggleRecentsButtonsContainerEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 488
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsDrawnEventListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 491
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isUPSModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 492
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 497
    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/recents/RecentsActivity;->launchDockedTaskFromFullRecents:Z

    .line 471
    return-void

    .line 494
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 739
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 742
    iput-boolean v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mIsVisible:Z

    .line 743
    iput-boolean v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mReceivedNewIntent:Z

    .line 744
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 745
    const/16 v2, 0xe0

    invoke-static {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 748
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpPopup:Lcom/android/systemui/recents/views/AbstractHelpPopup;

    if-eqz v2, :cond_0

    .line 749
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpPopup:Lcom/android/systemui/recents/views/AbstractHelpPopup;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->dismiss()V

    .line 756
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 757
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v1

    .line 758
    .local v1, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsActivityLaunchState;->reset()V

    .line 760
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v2

    iput-boolean v4, v2, Lcom/android/systemui/recents/RecentsConfiguration;->blockTouchAction:Z

    .line 761
    iput-boolean v4, p0, Lcom/android/systemui/recents/RecentsActivity;->launchDockedTaskFromFullRecents:Z

    .line 738
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 797
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 798
    .local v0, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    if-eqz v0, :cond_0

    .line 799
    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->onTrimMemory(I)V

    .line 796
    :cond_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 2

    .prologue
    .line 868
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mUserInteractionEvent:Lcom/android/systemui/recents/events/ui/UserInteractionEvent;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 867
    return-void
.end method
