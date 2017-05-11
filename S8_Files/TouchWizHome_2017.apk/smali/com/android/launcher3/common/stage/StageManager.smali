.class public Lcom/android/launcher3/common/stage/StageManager;
.super Ljava/lang/Object;
.source "StageManager.java"


# static fields
.field private static final RUNTIME_STAGE_STACK:Ljava/lang/String; = "RUNTIME_STAGE_STACK"

.field private static final RUNTIME_STAGE_STAGES:Ljava/lang/String; = "RUNTIME_STAGE_STAGES"

.field private static final TAG:Ljava/lang/String; = "StageManager"


# instance fields
.field private final mActivity:Lcom/android/launcher3/Launcher;

.field private mCurrentAnimation:Landroid/animation/AnimatorSet;

.field private mDumpStack:Z

.field private mInProgressTransit:Z

.field private final mStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/launcher3/common/stage/Stage;",
            ">;"
        }
    .end annotation
.end field

.field private final mStageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/launcher3/common/stage/Stage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/launcher3/Launcher;
    .param p2, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/common/stage/StageManager;->mDumpStack:Z

    .line 49
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/common/stage/StageManager;->mStageMap:Ljava/util/HashMap;

    .line 50
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    .line 53
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/common/stage/StageManager;->mInProgressTransit:Z

    .line 56
    iput-object p1, p0, Lcom/android/launcher3/common/stage/StageManager;->mActivity:Lcom/android/launcher3/Launcher;

    .line 57
    invoke-direct {p0, p2}, Lcom/android/launcher3/common/stage/StageManager;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v0

    .line 60
    .local v0, "proxy":Lcom/android/launcher3/proxy/LauncherProxy;
    new-instance v1, Lcom/android/launcher3/common/stage/StageManagerProxyCallBacksImpl;

    invoke-direct {v1, p1, p0}, Lcom/android/launcher3/common/stage/StageManagerProxyCallBacksImpl;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/common/stage/StageManager;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/proxy/LauncherProxy;->setStageManagerProxyCallbacks(Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;)V

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/common/stage/StageManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/stage/StageManager;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/launcher3/common/stage/StageManager;->cleanupAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/common/stage/StageManager;Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/stage/StageManager;
    .param p1, "x1"    # Lcom/android/launcher3/common/stage/Stage;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/common/stage/StageManager;->transitAnimEnd(Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher3/common/stage/StageManager;Lcom/android/launcher3/common/stage/Stage;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/stage/StageManager;
    .param p1, "x1"    # Lcom/android/launcher3/common/stage/Stage;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/stage/StageManager;->dumpStageView(Lcom/android/launcher3/common/stage/Stage;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher3/common/stage/StageManager;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/stage/StageManager;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/common/stage/StageManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/stage/StageManager;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/launcher3/common/stage/StageManager;->dumpStack()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/launcher3/common/stage/StageManager;Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/stage/StageManager;
    .param p1, "x1"    # Lcom/android/launcher3/common/stage/Stage;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/common/stage/StageManager;->transitAnimStart(Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    return-void
.end method

.method private assertTransitInProgress()V
    .locals 1

    .prologue
    .line 691
    iget-boolean v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mInProgressTransit:Z

    if-eqz v0, :cond_0

    .line 692
    invoke-direct {p0}, Lcom/android/launcher3/common/stage/StageManager;->dumpStack()V

    .line 693
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 695
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mInProgressTransit:Z

    .line 696
    return-void
.end method

.method private cancelAnimation()V
    .locals 4

    .prologue
    .line 617
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/common/stage/StageManager;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1

    .line 618
    iget-object v1, p0, Lcom/android/launcher3/common/stage/StageManager;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 619
    iget-object v1, p0, Lcom/android/launcher3/common/stage/StageManager;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 620
    iget-object v1, p0, Lcom/android/launcher3/common/stage/StageManager;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 622
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/common/stage/StageManager;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 623
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/common/stage/StageManager;->mCurrentAnimation:Landroid/animation/AnimatorSet;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    :cond_1
    :goto_0
    return-void

    .line 625
    :catch_0
    move-exception v0

    .line 626
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "StageManager"

    const-string v2, "mCurrentAnimation is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private cleanupAnimation()V
    .locals 1

    .prologue
    .line 631
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    .line 632
    return-void
.end method

.method private dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z
    .param p4, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 684
    instance-of v0, p1, Lcom/android/launcher3/common/base/view/LauncherTransitionable;

    if-eqz v0, :cond_0

    .line 685
    check-cast p1, Lcom/android/launcher3/common/base/view/LauncherTransitionable;

    .end local p1    # "v":Landroid/view/View;
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mActivity:Lcom/android/launcher3/Launcher;

    invoke-interface {p1, v0, p2, p3, p4}, Lcom/android/launcher3/common/base/view/LauncherTransitionable;->onLauncherTransitionEnd(Lcom/android/launcher3/Launcher;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    .line 688
    :cond_0
    return-void
.end method

.method private dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z
    .param p4, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 664
    instance-of v0, p1, Lcom/android/launcher3/common/base/view/LauncherTransitionable;

    if-eqz v0, :cond_0

    .line 665
    check-cast p1, Lcom/android/launcher3/common/base/view/LauncherTransitionable;

    .end local p1    # "v":Landroid/view/View;
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mActivity:Lcom/android/launcher3/Launcher;

    invoke-interface {p1, v0, p2, p3, p4}, Lcom/android/launcher3/common/base/view/LauncherTransitionable;->onLauncherTransitionPrepare(Lcom/android/launcher3/Launcher;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    .line 668
    :cond_0
    return-void
.end method

.method private dispatchOnLauncherTransitionStart(Landroid/view/View;ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z
    .param p4, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 674
    instance-of v0, p1, Lcom/android/launcher3/common/base/view/LauncherTransitionable;

    if-eqz v0, :cond_0

    .line 675
    check-cast p1, Lcom/android/launcher3/common/base/view/LauncherTransitionable;

    .end local p1    # "v":Landroid/view/View;
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mActivity:Lcom/android/launcher3/Launcher;

    invoke-interface {p1, v0, p2, p3, p4}, Lcom/android/launcher3/common/base/view/LauncherTransitionable;->onLauncherTransitionStart(Lcom/android/launcher3/Launcher;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    .line 678
    :cond_0
    return-void
.end method

.method private dumpStack()V
    .locals 4

    .prologue
    .line 699
    iget-boolean v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mDumpStack:Z

    if-eqz v2, :cond_1

    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "dump stage\n"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 701
    .local v0, "out":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/stage/Stage;

    .line 702
    .local v1, "stage":Lcom/android/launcher3/common/stage/Stage;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 703
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 705
    .end local v1    # "stage":Lcom/android/launcher3/common/stage/Stage;
    :cond_0
    const-string v2, "StageManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    .end local v0    # "out":Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method private dumpStageView(Lcom/android/launcher3/common/stage/Stage;)V
    .locals 6
    .param p1, "stage"    # Lcom/android/launcher3/common/stage/Stage;

    .prologue
    .line 710
    iget-boolean v1, p0, Lcom/android/launcher3/common/stage/StageManager;->mDumpStack:Z

    if-eqz v1, :cond_0

    .line 711
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/Stage;->getContainerView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 712
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/Stage;->getContainerView()Landroid/view/View;

    move-result-object v0

    .line 713
    .local v0, "view":Landroid/view/View;
    const-string v1, "StageManager"

    const-string v2, "dump stageview info : mode(%d), visible(%d) , alpha(%f)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 714
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    .line 713
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 716
    :cond_1
    const-string v1, "StageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dump stageview info fail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getStage(IZ)Lcom/android/launcher3/common/stage/Stage;
    .locals 5
    .param p1, "stageMode"    # I
    .param p2, "initView"    # Z

    .prologue
    .line 504
    iget-object v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mStageMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/stage/Stage;

    .line 505
    .local v1, "stage":Lcom/android/launcher3/common/stage/Stage;
    if-nez v1, :cond_0

    .line 507
    :try_start_0
    invoke-static {p1}, Lcom/android/launcher3/common/stage/StageFactory;->buildStage(I)Lcom/android/launcher3/common/stage/Stage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 511
    iget-object v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mActivity:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v2, p1}, Lcom/android/launcher3/common/stage/Stage;->initialize(Lcom/android/launcher3/Launcher;I)V

    .line 512
    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/Stage;->setup()V

    .line 513
    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/Stage;->keepInstance()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 514
    iget-object v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mStageMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    :cond_0
    if-eqz p2, :cond_1

    iget-boolean v2, v1, Lcom/android/launcher3/common/stage/Stage;->mViewInitiated:Z

    if-nez v2, :cond_1

    .line 518
    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/Stage;->initStageView()V

    .line 520
    :cond_1
    return-object v1

    .line 508
    :catch_0
    move-exception v0

    .line 509
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " fail to create instance"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 357
    if-eqz p1, :cond_0

    .line 359
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/common/stage/StageManager;->restoreStack(Landroid/os/Bundle;Z)V

    .line 363
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/stage/StageManager;->getStage(I)Lcom/android/launcher3/common/stage/Stage;

    .line 364
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 365
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/stage/StageManager;->getStage(I)Lcom/android/launcher3/common/stage/Stage;

    .line 367
    :cond_1
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/stage/StageManager;->getStage(I)Lcom/android/launcher3/common/stage/Stage;

    .line 368
    return-void
.end method

.method private playTransitAnimation(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/Stage;Landroid/animation/Animator;Landroid/animation/Animator;Lcom/android/launcher3/common/stage/StageEntry;)V
    .locals 13
    .param p1, "toStage"    # Lcom/android/launcher3/common/stage/Stage;
    .param p2, "fromStage"    # Lcom/android/launcher3/common/stage/Stage;
    .param p3, "enterAnim"    # Landroid/animation/Animator;
    .param p4, "exitAnim"    # Landroid/animation/Animator;
    .param p5, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 525
    const-string v3, "StageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "start stageTransitionAnim : from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/common/stage/StageManager;->mActivity:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/common/drag/DragManager;->isQuickOptionShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 528
    iget-object v3, p0, Lcom/android/launcher3/common/stage/StageManager;->mActivity:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/common/drag/DragManager;->removeQuickOptionView()V

    .line 531
    :cond_0
    if-nez p3, :cond_1

    if-eqz p4, :cond_5

    .line 533
    :cond_1
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v11

    .line 535
    .local v11, "animatorSet":Landroid/animation/AnimatorSet;
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 536
    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 538
    iput-object v11, p0, Lcom/android/launcher3/common/stage/StageManager;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    .line 540
    if-eqz p3, :cond_2

    const/4 v3, 0x1

    :goto_0
    instance-of v6, p1, Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p5

    invoke-direct {p0, p1, v3, v6, v0}, Lcom/android/launcher3/common/stage/StageManager;->transitAnimPrepare(Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    .line 541
    if-eqz p4, :cond_3

    const/4 v3, 0x1

    :goto_1
    instance-of v6, p1, Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p5

    invoke-direct {p0, p2, v3, v6, v0}, Lcom/android/launcher3/common/stage/StageManager;->transitAnimPrepare(Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    .line 543
    new-instance v2, Lcom/android/launcher3/common/stage/StageManager$1;

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/common/stage/StageManager$1;-><init>(Lcom/android/launcher3/common/stage/StageManager;Lcom/android/launcher3/common/stage/Stage;Landroid/animation/Animator;Lcom/android/launcher3/common/stage/StageEntry;Lcom/android/launcher3/common/stage/Stage;)V

    invoke-virtual {v11, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 566
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 567
    .local v4, "time":J
    new-instance v2, Lcom/android/launcher3/common/stage/StageManager$2;

    move-object v3, p0

    move-object v6, v11

    move-object v7, p1

    move-object v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    invoke-direct/range {v2 .. v10}, Lcom/android/launcher3/common/stage/StageManager$2;-><init>(Lcom/android/launcher3/common/stage/StageManager;JLandroid/animation/AnimatorSet;Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/Stage;Landroid/animation/Animator;Lcom/android/launcher3/common/stage/StageEntry;)V

    .line 595
    .local v2, "startAnimRunnable":Ljava/lang/Runnable;
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/Stage;->getContainerView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 596
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/Stage;->getContainerView()Landroid/view/View;

    move-result-object v12

    .line 597
    .local v12, "postView":Landroid/view/View;
    :goto_2
    invoke-virtual {v12, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 612
    .end local v2    # "startAnimRunnable":Ljava/lang/Runnable;
    .end local v4    # "time":J
    .end local v11    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v12    # "postView":Landroid/view/View;
    :goto_3
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher3/common/stage/StageManager;->mInProgressTransit:Z

    .line 613
    return-void

    .line 540
    .restart local v11    # "animatorSet":Landroid/animation/AnimatorSet;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 541
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 596
    .restart local v2    # "startAnimRunnable":Ljava/lang/Runnable;
    .restart local v4    # "time":J
    :cond_4
    invoke-virtual {p2}, Lcom/android/launcher3/common/stage/Stage;->getContainerView()Landroid/view/View;

    move-result-object v12

    goto :goto_2

    .line 599
    .end local v2    # "startAnimRunnable":Ljava/lang/Runnable;
    .end local v4    # "time":J
    .end local v11    # "animatorSet":Landroid/animation/AnimatorSet;
    :cond_5
    const/4 v3, 0x0

    instance-of v6, p1, Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p5

    invoke-direct {p0, p1, v3, v6, v0}, Lcom/android/launcher3/common/stage/StageManager;->transitAnimPrepare(Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    .line 600
    const/4 v3, 0x0

    instance-of v6, p1, Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p5

    invoke-direct {p0, p1, v3, v6, v0}, Lcom/android/launcher3/common/stage/StageManager;->transitAnimStart(Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    .line 601
    const/4 v3, 0x0

    instance-of v6, p1, Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p5

    invoke-direct {p0, p1, v3, v6, v0}, Lcom/android/launcher3/common/stage/StageManager;->transitAnimEnd(Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    .line 603
    const/4 v3, 0x0

    instance-of v6, p1, Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p5

    invoke-direct {p0, p2, v3, v6, v0}, Lcom/android/launcher3/common/stage/StageManager;->transitAnimPrepare(Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    .line 604
    const/4 v3, 0x0

    instance-of v6, p1, Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p5

    invoke-direct {p0, p2, v3, v6, v0}, Lcom/android/launcher3/common/stage/StageManager;->transitAnimStart(Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    .line 605
    const/4 v3, 0x0

    instance-of v6, p1, Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p5

    invoke-direct {p0, p2, v3, v6, v0}, Lcom/android/launcher3/common/stage/StageManager;->transitAnimEnd(Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    .line 608
    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher3/common/stage/StageEntry;->notifyOnCompleteRunnables()V

    .line 610
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/stage/StageManager;->dumpStageView(Lcom/android/launcher3/common/stage/Stage;)V

    goto :goto_3
.end method

.method private restoreStack(Landroid/os/Bundle;Z)V
    .locals 5
    .param p1, "savedState"    # Landroid/os/Bundle;
    .param p2, "initView"    # Z

    .prologue
    .line 314
    const-string v2, "RUNTIME_STAGE_STACK"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 315
    .local v1, "restoredStack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    .line 316
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 317
    .local v0, "mode":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 318
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 324
    .end local v0    # "mode":Ljava/lang/Integer;
    :cond_0
    return-void

    .line 321
    .restart local v0    # "mode":Ljava/lang/Integer;
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4, p2}, Lcom/android/launcher3/common/stage/StageManager;->getStage(IZ)Lcom/android/launcher3/common/stage/Stage;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private restoreStagesOutOfStack(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 327
    const-string v3, "RUNTIME_STAGE_STAGES"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 328
    .local v1, "restoreStages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_2

    .line 329
    const/4 v2, 0x0

    .line 330
    .local v2, "stage":Lcom/android/launcher3/common/stage/Stage;
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 331
    .local v0, "mode":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 332
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 335
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/launcher3/common/stage/StageManager;->getStage(IZ)Lcom/android/launcher3/common/stage/Stage;

    move-result-object v2

    .line 336
    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4}, Lcom/android/launcher3/common/stage/Stage;->restoreState(Landroid/os/Bundle;Z)V

    .line 337
    iget-object v4, p0, Lcom/android/launcher3/common/stage/StageManager;->mStageMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 340
    .end local v0    # "mode":Ljava/lang/Integer;
    .end local v2    # "stage":Lcom/android/launcher3/common/stage/Stage;
    :cond_2
    return-void
.end method

.method private transitAnimEnd(Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 1
    .param p1, "stage"    # Lcom/android/launcher3/common/stage/Stage;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z
    .param p4, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 655
    if-eqz p1, :cond_0

    .line 656
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/Stage;->getContainerView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/launcher3/common/stage/StageManager;->dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    .line 658
    :cond_0
    return-void
.end method

.method private transitAnimPrepare(Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 1
    .param p1, "stage"    # Lcom/android/launcher3/common/stage/Stage;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z
    .param p4, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 643
    if-eqz p1, :cond_0

    .line 644
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/Stage;->getContainerView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/launcher3/common/stage/StageManager;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    .line 646
    :cond_0
    return-void
.end method

.method private transitAnimStart(Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 1
    .param p1, "stage"    # Lcom/android/launcher3/common/stage/Stage;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z
    .param p4, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 649
    if-eqz p1, :cond_0

    .line 650
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/Stage;->getContainerView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/launcher3/common/stage/StageManager;->dispatchOnLauncherTransitionStart(Landroid/view/View;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    .line 652
    :cond_0
    return-void
.end method


# virtual methods
.method public deliverDataWithOutStageChange(ILcom/android/launcher3/common/stage/StageEntry;)V
    .locals 3
    .param p1, "stageMode"    # I
    .param p2, "entry"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 495
    iget-object v1, p0, Lcom/android/launcher3/common/stage/StageManager;->mStageMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    .line 496
    .local v0, "stage":Lcom/android/launcher3/common/stage/Stage;
    invoke-virtual {v0, p2}, Lcom/android/launcher3/common/stage/Stage;->setDataWithOutStageChange(Lcom/android/launcher3/common/stage/StageEntry;)V

    .line 497
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 452
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/stage/Stage;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 454
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public finishAllStage(Lcom/android/launcher3/common/stage/StageEntry;)V
    .locals 7
    .param p1, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    const/4 v6, 0x1

    .line 189
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-gt v0, v6, :cond_0

    .line 190
    const-string v0, "StageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid finishAllStage : stack="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :goto_0
    return-void

    .line 194
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/common/stage/StageManager;->assertTransitInProgress()V

    .line 196
    if-nez p1, :cond_1

    .line 197
    new-instance p1, Lcom/android/launcher3/common/stage/StageEntry;

    .end local p1    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    invoke-direct {p1}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 199
    .restart local p1    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v0

    iput v0, p1, Lcom/android/launcher3/common/stage/StageEntry;->fromStage:I

    .line 200
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v0

    iput v0, p1, Lcom/android/launcher3/common/stage/StageEntry;->toStage:I

    .line 201
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    iput v0, p1, Lcom/android/launcher3/common/stage/StageEntry;->stageCountOnFinishAllStage:I

    .line 202
    const-string v0, "StageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finishAllStage : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p1, Lcom/android/launcher3/common/stage/StageEntry;->toStage:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " <--- "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p1, Lcom/android/launcher3/common/stage/StageEntry;->fromStage:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " , stack="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-direct {p0}, Lcom/android/launcher3/common/stage/StageManager;->cancelAnimation()V

    .line 206
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/stage/Stage;

    .line 207
    .local v2, "oldStage":Lcom/android/launcher3/common/stage/Stage;
    invoke-virtual {v2, p1}, Lcom/android/launcher3/common/stage/Stage;->onStageExit(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;

    move-result-object v4

    .line 208
    .local v4, "exitAnim":Landroid/animation/Animator;
    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-le v0, v6, :cond_2

    .line 209
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/stage/Stage;->onStageMovingToInitial(Lcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_1

    .line 211
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/stage/Stage;->onStageEnter(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;

    move-result-object v3

    .line 213
    .local v3, "enterAnim":Landroid/animation/Animator;
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/stage/Stage;

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/common/stage/StageManager;->playTransitAnimation(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/Stage;Landroid/animation/Animator;Landroid/animation/Animator;Lcom/android/launcher3/common/stage/StageEntry;)V

    .line 215
    invoke-direct {p0}, Lcom/android/launcher3/common/stage/StageManager;->dumpStack()V

    goto/16 :goto_0
.end method

.method public finishStage(ILcom/android/launcher3/common/stage/StageEntry;)V
    .locals 4
    .param p1, "stageMode"    # I
    .param p2, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 107
    iget-object v1, p0, Lcom/android/launcher3/common/stage/StageManager;->mStageMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    .line 108
    .local v0, "toStage":Lcom/android/launcher3/common/stage/Stage;
    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0, v0, p2}, Lcom/android/launcher3/common/stage/StageManager;->finishStage(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    const-string v1, "StageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid finishStage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public finishStage(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V
    .locals 8
    .param p1, "stage"    # Lcom/android/launcher3/common/stage/Stage;
    .param p2, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    if-nez p1, :cond_1

    .line 117
    :cond_0
    const-string v0, "StageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid finishStage : stack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_4

    .line 122
    invoke-direct {p0}, Lcom/android/launcher3/common/stage/StageManager;->assertTransitInProgress()V

    .line 124
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/stage/Stage;

    .line 125
    .local v6, "currentStage":Lcom/android/launcher3/common/stage/Stage;
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/stage/Stage;

    .line 126
    .local v7, "nextStage":Lcom/android/launcher3/common/stage/Stage;
    if-nez p2, :cond_2

    .line 127
    new-instance p2, Lcom/android/launcher3/common/stage/StageEntry;

    .end local p2    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    invoke-direct {p2}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 130
    .restart local p2    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    :cond_2
    invoke-virtual {v6}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v0

    iput v0, p2, Lcom/android/launcher3/common/stage/StageEntry;->fromStage:I

    .line 131
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v0

    :goto_1
    iput v0, p2, Lcom/android/launcher3/common/stage/StageEntry;->toStage:I

    .line 132
    const-string v0, "StageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishStage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/launcher3/common/stage/StageEntry;->toStage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " <- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/launcher3/common/stage/StageEntry;->fromStage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-direct {p0}, Lcom/android/launcher3/common/stage/StageManager;->cancelAnimation()V

    .line 136
    invoke-virtual {v6, p2}, Lcom/android/launcher3/common/stage/Stage;->onStageExit(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;

    move-result-object v4

    .line 139
    .local v4, "exitAnim":Landroid/animation/Animator;
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/common/stage/Stage;->onStageEnter(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;

    move-result-object v3

    .line 141
    .local v3, "enterAnim":Landroid/animation/Animator;
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/stage/Stage;

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/common/stage/StageManager;->playTransitAnimation(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/Stage;Landroid/animation/Animator;Landroid/animation/Animator;Lcom/android/launcher3/common/stage/StageEntry;)V

    .line 142
    invoke-direct {p0}, Lcom/android/launcher3/common/stage/StageManager;->dumpStack()V

    goto :goto_0

    .line 131
    .end local v3    # "enterAnim":Landroid/animation/Animator;
    .end local v4    # "exitAnim":Landroid/animation/Animator;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 144
    .end local v6    # "currentStage":Lcom/android/launcher3/common/stage/Stage;
    .end local v7    # "nextStage":Lcom/android/launcher3/common/stage/Stage;
    :cond_4
    invoke-direct {p0}, Lcom/android/launcher3/common/stage/StageManager;->dumpStack()V

    .line 145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishStage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSecondTopStage()Lcom/android/launcher3/common/stage/Stage;
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 351
    const/4 v0, 0x0

    .line 353
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    goto :goto_0
.end method

.method public getStackSize()I
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    return v0
.end method

.method public getStage(I)Lcom/android/launcher3/common/stage/Stage;
    .locals 1
    .param p1, "stageMode"    # I

    .prologue
    .line 500
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/common/stage/StageManager;->getStage(IZ)Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    return-object v0
.end method

.method public getTopStage()Lcom/android/launcher3/common/stage/Stage;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    const/4 v0, 0x0

    .line 346
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    goto :goto_0
.end method

.method public isRunningAnimation()Z
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveToOverHome(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V
    .locals 3
    .param p1, "stage"    # Lcom/android/launcher3/common/stage/Stage;
    .param p2, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 219
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 220
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    if-eq v0, p1, :cond_2

    .line 223
    const-string v0, "StageManager"

    const-string v1, "can not move to over Home"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 227
    :cond_2
    if-nez p2, :cond_3

    .line 228
    new-instance p2, Lcom/android/launcher3/common/stage/StageEntry;

    .end local p2    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    invoke-direct {p2}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 230
    .restart local p2    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    :cond_3
    iput-boolean v2, p2, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 231
    invoke-virtual {p2, v1}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    .line 232
    invoke-virtual {p0, p2}, Lcom/android/launcher3/common/stage/StageManager;->finishAllStage(Lcom/android/launcher3/common/stage/StageEntry;)V

    .line 234
    new-instance p2, Lcom/android/launcher3/common/stage/StageEntry;

    .end local p2    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    invoke-direct {p2}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 235
    .restart local p2    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    iput-boolean v2, p2, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 236
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 445
    const-string v0, "StageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult : result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher3/common/stage/Stage;->onActivityResult(IILandroid/content/Intent;)V

    .line 448
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mActivity:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 426
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/common/stage/StageManager;->mActivity:Lcom/android/launcher3/Launcher;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/util/logging/SALogging;->insertMultiSelectCancelLog(Lcom/android/launcher3/Launcher;ZZ)V

    .line 429
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/Stage;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 430
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/common/stage/StageManager;->finishStage(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_0
.end method

.method public onChangeColorForBg(Z)V
    .locals 4
    .param p1, "whiteBg"    # Z

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v1

    .line 459
    .local v1, "topStage":Lcom/android/launcher3/common/stage/Stage;
    if-eqz v1, :cond_0

    .line 460
    invoke-virtual {v1, p1}, Lcom/android/launcher3/common/stage/Stage;->onChangeColorForBg(Z)V

    .line 463
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mStageMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    .line 464
    .local v0, "stage":Lcom/android/launcher3/common/stage/Stage;
    if-eq v1, v0, :cond_1

    .line 465
    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/stage/Stage;->onChangeColorForBg(Z)V

    goto :goto_0

    .line 468
    .end local v0    # "stage":Lcom/android/launcher3/common/stage/Stage;
    :cond_2
    return-void
.end method

.method public onChangeGrid()V
    .locals 4

    .prologue
    .line 484
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mStageMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 485
    .local v1, "tobeNotify":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/stage/Stage;>;"
    iget-object v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    .line 486
    .local v0, "stage":Lcom/android/launcher3/common/stage/Stage;
    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/Stage;->onChangeGrid()V

    .line 487
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 489
    .end local v0    # "stage":Lcom/android/launcher3/common/stage/Stage;
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    .line 490
    .restart local v0    # "stage":Lcom/android/launcher3/common/stage/Stage;
    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/Stage;->onChangeGrid()V

    goto :goto_1

    .line 492
    .end local v0    # "stage":Lcom/android/launcher3/common/stage/Stage;
    :cond_1
    return-void
.end method

.method public onCheckedChanged(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isChecked"    # Z

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    .line 478
    .local v0, "topStage":Lcom/android/launcher3/common/stage/Stage;
    if-eqz v0, :cond_0

    .line 479
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/common/stage/Stage;->onCheckedChanged(Landroid/view/View;Z)V

    .line 481
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 472
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/stage/Stage;->onClick(Landroid/view/View;)Z

    .line 474
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 241
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mStageMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 242
    .local v1, "tobeNotify":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/stage/Stage;>;"
    iget-object v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    .line 243
    .local v0, "stage":Lcom/android/launcher3/common/stage/Stage;
    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/stage/Stage;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 244
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 246
    .end local v0    # "stage":Lcom/android/launcher3/common/stage/Stage;
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    .line 247
    .restart local v0    # "stage":Lcom/android/launcher3/common/stage/Stage;
    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/stage/Stage;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_1

    .line 249
    .end local v0    # "stage":Lcom/android/launcher3/common/stage/Stage;
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v1

    .line 402
    .local v1, "topStage":Lcom/android/launcher3/common/stage/Stage;
    if-eqz v1, :cond_0

    .line 403
    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/Stage;->onDestroyActivity()V

    .line 404
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mStageMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    .line 405
    .local v0, "stage":Lcom/android/launcher3/common/stage/Stage;
    if-eq v1, v0, :cond_1

    .line 406
    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/Stage;->onDestroyActivity()V

    goto :goto_0

    .line 409
    .end local v0    # "stage":Lcom/android/launcher3/common/stage/Stage;
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mStageMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 410
    iget-object v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->clear()V

    .line 411
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v1

    .line 391
    .local v1, "topStage":Lcom/android/launcher3/common/stage/Stage;
    if-eqz v1, :cond_0

    .line 392
    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/Stage;->onPauseActivity()V

    .line 393
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mStageMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    .line 394
    .local v0, "stage":Lcom/android/launcher3/common/stage/Stage;
    if-eq v1, v0, :cond_1

    .line 395
    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/Stage;->onPauseActivity()V

    goto :goto_0

    .line 398
    .end local v0    # "stage":Lcom/android/launcher3/common/stage/Stage;
    :cond_2
    return-void
.end method

.method public onPrepareOptionMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 414
    const/4 v0, 0x0

    .line 415
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 416
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/common/stage/Stage;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 417
    :cond_0
    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 252
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mStageMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 253
    .local v1, "tobeRestored":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/stage/Stage;>;"
    iget-object v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    .line 254
    .local v0, "stage":Lcom/android/launcher3/common/stage/Stage;
    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/stage/Stage;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 255
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 257
    .end local v0    # "stage":Lcom/android/launcher3/common/stage/Stage;
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    .line 258
    .restart local v0    # "stage":Lcom/android/launcher3/common/stage/Stage;
    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/stage/Stage;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_1

    .line 260
    .end local v0    # "stage":Lcom/android/launcher3/common/stage/Stage;
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v1

    .line 380
    .local v1, "topStage":Lcom/android/launcher3/common/stage/Stage;
    if-eqz v1, :cond_0

    .line 381
    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/Stage;->onResumeActivity()V

    .line 382
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mStageMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    .line 383
    .local v0, "stage":Lcom/android/launcher3/common/stage/Stage;
    if-eq v1, v0, :cond_1

    .line 384
    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/Stage;->onResumeActivity()V

    goto :goto_0

    .line 387
    .end local v0    # "stage":Lcom/android/launcher3/common/stage/Stage;
    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 263
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/launcher3/common/stage/StageManager;->mStageMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 264
    .local v3, "tobeSaved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/stage/Stage;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .local v0, "inStack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/stage/Stage;

    .line 268
    .local v2, "stage":Lcom/android/launcher3/common/stage/Stage;
    invoke-virtual {v2}, Lcom/android/launcher3/common/stage/Stage;->isRestorable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 269
    invoke-virtual {v2}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    invoke-virtual {v2, p1}, Lcom/android/launcher3/common/stage/Stage;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 271
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 273
    :cond_0
    const-string v4, "StageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "does not restore remain-stages in stack : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .end local v2    # "stage":Lcom/android/launcher3/common/stage/Stage;
    :cond_1
    const-string v4, "RUNTIME_STAGE_STACK"

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 280
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .local v1, "outStages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/stage/Stage;

    .line 282
    .restart local v2    # "stage":Lcom/android/launcher3/common/stage/Stage;
    invoke-virtual {v2}, Lcom/android/launcher3/common/stage/Stage;->isRestorable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 283
    invoke-virtual {v2}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    invoke-virtual {v2, p1}, Lcom/android/launcher3/common/stage/Stage;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_1

    .line 287
    .end local v2    # "stage":Lcom/android/launcher3/common/stage/Stage;
    :cond_3
    const-string v4, "RUNTIME_STAGE_STAGES"

    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 288
    const-string v4, "StageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saved stages : inStack "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , outStack"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return-void
.end method

.method public onStartForResult(I)V
    .locals 3
    .param p1, "requestCode"    # I

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 436
    const-string v0, "StageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartForResult : result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/stage/Stage;->onStartForResult(I)V

    .line 439
    :cond_0
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 293
    iget-object v3, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 294
    invoke-direct {p0, p1, v4}, Lcom/android/launcher3/common/stage/StageManager;->restoreStack(Landroid/os/Bundle;Z)V

    .line 296
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v2

    .line 297
    .local v2, "topMode":I
    iget-object v3, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/stage/Stage;

    .line 298
    .local v1, "stage":Lcom/android/launcher3/common/stage/Stage;
    iget-boolean v3, v1, Lcom/android/launcher3/common/stage/Stage;->mViewInitiated:Z

    if-nez v3, :cond_1

    .line 299
    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/Stage;->initStageView()V

    .line 301
    :cond_1
    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v3

    if-ne v2, v3, :cond_2

    move v3, v4

    :goto_1
    invoke-virtual {v1, p1, v3}, Lcom/android/launcher3/common/stage/Stage;->restoreState(Landroid/os/Bundle;Z)V

    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_1

    .line 305
    .end local v1    # "stage":Lcom/android/launcher3/common/stage/Stage;
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/stage/StageManager;->restoreStagesOutOfStack(Landroid/os/Bundle;)V

    .line 307
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 308
    .local v0, "data":Lcom/android/launcher3/common/stage/StageEntry;
    iput-boolean v5, v0, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 310
    iget-object v3, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/stage/Stage;

    invoke-virtual {v3}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v3

    invoke-virtual {p0, v3, v0}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    .line 311
    return-void
.end method

.method public setupStartupViews()V
    .locals 1

    .prologue
    .line 372
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/stage/StageManager;->getStage(I)Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/Stage;->initStageView()V

    .line 373
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 374
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/stage/StageManager;->getStage(I)Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/Stage;->initStageView()V

    .line 376
    :cond_0
    return-void
.end method

.method public startStage(ILcom/android/launcher3/common/stage/StageEntry;)V
    .locals 8
    .param p1, "stageMode"    # I
    .param p2, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v6

    .line 66
    .local v6, "topStage":Lcom/android/launcher3/common/stage/Stage;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 67
    const-string v0, "StageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startStage : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " is already on top"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/common/stage/StageManager;->assertTransitInProgress()V

    .line 73
    if-nez p2, :cond_1

    .line 74
    new-instance p2, Lcom/android/launcher3/common/stage/StageEntry;

    .end local p2    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    invoke-direct {p2}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 77
    .restart local p2    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    :goto_1
    iput v0, p2, Lcom/android/launcher3/common/stage/StageEntry;->fromStage:I

    .line 78
    iput p1, p2, Lcom/android/launcher3/common/stage/StageEntry;->toStage:I

    .line 79
    const-string v0, "StageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startStage : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p2, Lcom/android/launcher3/common/stage/StageEntry;->fromStage:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " -> "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p2, Lcom/android/launcher3/common/stage/StageEntry;->toStage:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v3, 0x0

    .line 82
    .local v3, "enterAnim":Landroid/animation/Animator;
    const/4 v4, 0x0

    .line 83
    .local v4, "exitAnim":Landroid/animation/Animator;
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStageMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/stage/Stage;

    .line 84
    .local v1, "toStage":Lcom/android/launcher3/common/stage/Stage;
    if-nez v1, :cond_2

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/stage/StageManager;->getStage(I)Lcom/android/launcher3/common/stage/Stage;

    move-result-object v1

    .line 87
    :cond_2
    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/Stage;->isViewInitiated()Z

    move-result v0

    if-nez v0, :cond_3

    .line 88
    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/Stage;->initStageView()V

    .line 91
    :cond_3
    invoke-direct {p0}, Lcom/android/launcher3/common/stage/StageManager;->cancelAnimation()V

    .line 93
    const/4 v2, 0x0

    .line 94
    .local v2, "fromStage":Lcom/android/launcher3/common/stage/Stage;
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 95
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "fromStage":Lcom/android/launcher3/common/stage/Stage;
    check-cast v2, Lcom/android/launcher3/common/stage/Stage;

    .line 96
    .restart local v2    # "fromStage":Lcom/android/launcher3/common/stage/Stage;
    invoke-virtual {v2, p2}, Lcom/android/launcher3/common/stage/Stage;->onStageExit(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;

    move-result-object v4

    .line 98
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-virtual {v1, p2}, Lcom/android/launcher3/common/stage/Stage;->onStageEnter(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;

    move-result-object v3

    move-object v0, p0

    move-object v5, p2

    .line 101
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/common/stage/StageManager;->playTransitAnimation(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/Stage;Landroid/animation/Animator;Landroid/animation/Animator;Lcom/android/launcher3/common/stage/StageEntry;)V

    .line 103
    invoke-direct {p0}, Lcom/android/launcher3/common/stage/StageManager;->dumpStack()V

    goto/16 :goto_0

    .line 77
    .end local v1    # "toStage":Lcom/android/launcher3/common/stage/Stage;
    .end local v2    # "fromStage":Lcom/android/launcher3/common/stage/Stage;
    .end local v3    # "enterAnim":Landroid/animation/Animator;
    .end local v4    # "exitAnim":Landroid/animation/Animator;
    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v0

    goto :goto_1
.end method

.method public switchInternalState(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V
    .locals 0
    .param p1, "stage"    # Lcom/android/launcher3/common/stage/Stage;
    .param p2, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 185
    invoke-virtual {p1, p2}, Lcom/android/launcher3/common/stage/Stage;->switchState(Lcom/android/launcher3/common/stage/StageEntry;)V

    .line 186
    return-void
.end method

.method public switchStage(ILcom/android/launcher3/common/stage/StageEntry;)V
    .locals 7
    .param p1, "stageMode"    # I
    .param p2, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 151
    const-string v0, "StageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid switchStage : stack="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/common/stage/StageManager;->assertTransitInProgress()V

    .line 157
    if-nez p2, :cond_1

    .line 158
    new-instance p2, Lcom/android/launcher3/common/stage/StageEntry;

    .end local p2    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    invoke-direct {p2}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 161
    .restart local p2    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v0

    iput v0, p2, Lcom/android/launcher3/common/stage/StageEntry;->fromStage:I

    .line 162
    iput p1, p2, Lcom/android/launcher3/common/stage/StageEntry;->toStage:I

    .line 163
    const-string v0, "StageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switchStage : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p2, Lcom/android/launcher3/common/stage/StageEntry;->fromStage:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " <-> "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p2, Lcom/android/launcher3/common/stage/StageEntry;->toStage:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStageMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/stage/Stage;

    .line 167
    .local v6, "toStage":Lcom/android/launcher3/common/stage/Stage;
    if-nez v6, :cond_2

    .line 168
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/stage/StageManager;->getStage(I)Lcom/android/launcher3/common/stage/Stage;

    move-result-object v6

    .line 170
    :cond_2
    invoke-virtual {v6}, Lcom/android/launcher3/common/stage/Stage;->isViewInitiated()Z

    move-result v0

    if-nez v0, :cond_3

    .line 171
    invoke-virtual {v6}, Lcom/android/launcher3/common/stage/Stage;->initStageView()V

    .line 173
    :cond_3
    invoke-direct {p0}, Lcom/android/launcher3/common/stage/StageManager;->cancelAnimation()V

    .line 175
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/stage/Stage;

    .line 176
    .local v2, "fromStage":Lcom/android/launcher3/common/stage/Stage;
    invoke-virtual {v2, p2}, Lcom/android/launcher3/common/stage/Stage;->onStageExit(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;

    move-result-object v4

    .line 177
    .local v4, "exitAnim":Landroid/animation/Animator;
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/common/stage/Stage;->onStageEnter(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;

    move-result-object v3

    .line 180
    .local v3, "enterAnim":Landroid/animation/Animator;
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/stage/Stage;

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/common/stage/StageManager;->playTransitAnimation(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/Stage;Landroid/animation/Animator;Landroid/animation/Animator;Lcom/android/launcher3/common/stage/StageEntry;)V

    .line 181
    invoke-direct {p0}, Lcom/android/launcher3/common/stage/StageManager;->dumpStack()V

    goto/16 :goto_0
.end method
