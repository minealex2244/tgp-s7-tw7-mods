.class public abstract Lcom/android/launcher3/common/stage/Stage;
.super Ljava/lang/Object;
.source "Stage.java"


# static fields
.field public static final BUILD_AND_SET_LAYER:I = 0x1

.field public static final BUILD_LAYER:I = 0x0

.field public static final STAGE_MODE_APPS:I = 0x2

.field public static final STAGE_MODE_APPSPICKER:I = 0x6

.field public static final STAGE_MODE_FOLDER:I = 0x5

.field public static final STAGE_MODE_HOME:I = 0x1

.field public static final STAGE_MODE_NONE:I = 0x0

.field public static final STAGE_MODE_WIDGETFOLDER:I = 0x4

.field public static final STAGE_MODE_WIDGETS:I = 0x3

.field public static final TAG:Ljava/lang/String; = "Stage"


# instance fields
.field private mCurrentHeightDp:I

.field private mCurrentMobileKeyboard:I

.field private mCurrentOrientation:I

.field protected mLauncher:Lcom/android/launcher3/Launcher;

.field private mMode:I

.field private mStateSwitchAnim:Landroid/animation/AnimatorSet;

.field protected mViewInitiated:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput v0, p0, Lcom/android/launcher3/common/stage/Stage;->mMode:I

    .line 63
    iput-boolean v0, p0, Lcom/android/launcher3/common/stage/Stage;->mViewInitiated:Z

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/common/stage/Stage;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/stage/Stage;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/launcher3/common/stage/Stage;->cleanupSwitchAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/stage/Stage;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/common/stage/Stage;->transitAnimEnd(ZZLcom/android/launcher3/common/stage/StageEntry;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher3/common/stage/Stage;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/stage/Stage;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/launcher3/common/stage/Stage;->mStateSwitchAnim:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/stage/Stage;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/common/stage/Stage;->transitAnimStart(ZZLcom/android/launcher3/common/stage/StageEntry;)V

    return-void
.end method

.method private cancelStateSwitchAnimation()V
    .locals 4

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/launcher3/common/stage/Stage;->mStateSwitchAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/launcher3/common/stage/Stage;->mStateSwitchAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 197
    iget-object v0, p0, Lcom/android/launcher3/common/stage/Stage;->mStateSwitchAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/stage/Stage;->mStateSwitchAnim:Landroid/animation/AnimatorSet;

    .line 200
    :cond_0
    return-void
.end method

.method private cleanupSwitchAnimation()V
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/stage/Stage;->mStateSwitchAnim:Landroid/animation/AnimatorSet;

    .line 204
    return-void
.end method

.method private playStateTransitAnim(Landroid/animation/Animator;Lcom/android/launcher3/common/stage/StageEntry;)V
    .locals 11
    .param p1, "switchAnim"    # Landroid/animation/Animator;
    .param p2, "entry"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 215
    const-string v8, "Stage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "playStateTransitAnim : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v8

    if-ne v8, v1, :cond_0

    move v5, v1

    .line 217
    .local v5, "toWorkSpace":Z
    :goto_0
    if-eqz p1, :cond_2

    .line 218
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v4

    .line 219
    .local v4, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v4, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 220
    iput-object v4, p0, Lcom/android/launcher3/common/stage/Stage;->mStateSwitchAnim:Landroid/animation/AnimatorSet;

    .line 221
    invoke-direct {p0, v1, v5, p2}, Lcom/android/launcher3/common/stage/Stage;->transitAnimPrepare(ZZLcom/android/launcher3/common/stage/StageEntry;)V

    .line 223
    new-instance v1, Lcom/android/launcher3/common/stage/Stage$1;

    invoke-direct {v1, p0, v5, p2}, Lcom/android/launcher3/common/stage/Stage$1;-><init>(Lcom/android/launcher3/common/stage/Stage;ZLcom/android/launcher3/common/stage/StageEntry;)V

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 245
    .local v2, "time":J
    new-instance v0, Lcom/android/launcher3/common/stage/Stage$2;

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/common/stage/Stage$2;-><init>(Lcom/android/launcher3/common/stage/Stage;JLandroid/animation/AnimatorSet;ZLcom/android/launcher3/common/stage/StageEntry;)V

    .line 269
    .local v0, "startAnimRunnable":Ljava/lang/Runnable;
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/Stage;->getContainerView()Landroid/view/View;

    move-result-object v7

    .line 270
    .local v7, "postView":Landroid/view/View;
    if-nez v7, :cond_1

    .line 271
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " : there is no containerview"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0    # "startAnimRunnable":Ljava/lang/Runnable;
    .end local v2    # "time":J
    .end local v4    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v5    # "toWorkSpace":Z
    .end local v7    # "postView":Landroid/view/View;
    :cond_0
    move v5, v6

    .line 216
    goto :goto_0

    .line 273
    .restart local v0    # "startAnimRunnable":Ljava/lang/Runnable;
    .restart local v2    # "time":J
    .restart local v4    # "animatorSet":Landroid/animation/AnimatorSet;
    .restart local v5    # "toWorkSpace":Z
    .restart local v7    # "postView":Landroid/view/View;
    :cond_1
    invoke-virtual {v7, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 282
    .end local v0    # "startAnimRunnable":Ljava/lang/Runnable;
    .end local v2    # "time":J
    .end local v4    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v7    # "postView":Landroid/view/View;
    :goto_1
    return-void

    .line 275
    :cond_2
    invoke-direct {p0, v6, v5, p2}, Lcom/android/launcher3/common/stage/Stage;->transitAnimPrepare(ZZLcom/android/launcher3/common/stage/StageEntry;)V

    .line 276
    invoke-direct {p0, v6, v5, p2}, Lcom/android/launcher3/common/stage/Stage;->transitAnimStart(ZZLcom/android/launcher3/common/stage/StageEntry;)V

    .line 277
    invoke-direct {p0, v6, v5, p2}, Lcom/android/launcher3/common/stage/Stage;->transitAnimEnd(ZZLcom/android/launcher3/common/stage/StageEntry;)V

    .line 280
    invoke-virtual {p2}, Lcom/android/launcher3/common/stage/StageEntry;->notifyOnCompleteRunnables()V

    goto :goto_1
.end method

.method private transitAnimEnd(ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 2
    .param p1, "animated"    # Z
    .param p2, "toWorkspace"    # Z
    .param p3, "entry"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/Stage;->getContainerView()Landroid/view/View;

    move-result-object v0

    .line 300
    .local v0, "v":Landroid/view/View;
    instance-of v1, v0, Lcom/android/launcher3/common/base/view/LauncherTransitionable;

    if-eqz v1, :cond_0

    .line 301
    check-cast v0, Lcom/android/launcher3/common/base/view/LauncherTransitionable;

    .end local v0    # "v":Landroid/view/View;
    iget-object v1, p0, Lcom/android/launcher3/common/stage/Stage;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/launcher3/common/base/view/LauncherTransitionable;->onLauncherTransitionEnd(Lcom/android/launcher3/Launcher;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    .line 303
    :cond_0
    return-void
.end method

.method private transitAnimPrepare(ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 2
    .param p1, "animated"    # Z
    .param p2, "toWorkspace"    # Z
    .param p3, "entry"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/Stage;->getContainerView()Landroid/view/View;

    move-result-object v0

    .line 286
    .local v0, "v":Landroid/view/View;
    instance-of v1, v0, Lcom/android/launcher3/common/base/view/LauncherTransitionable;

    if-eqz v1, :cond_0

    .line 287
    check-cast v0, Lcom/android/launcher3/common/base/view/LauncherTransitionable;

    .end local v0    # "v":Landroid/view/View;
    iget-object v1, p0, Lcom/android/launcher3/common/stage/Stage;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/launcher3/common/base/view/LauncherTransitionable;->onLauncherTransitionPrepare(Lcom/android/launcher3/Launcher;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    .line 289
    :cond_0
    return-void
.end method

.method private transitAnimStart(ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 2
    .param p1, "animated"    # Z
    .param p2, "toWorkspace"    # Z
    .param p3, "entry"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/Stage;->getContainerView()Landroid/view/View;

    move-result-object v0

    .line 293
    .local v0, "v":Landroid/view/View;
    instance-of v1, v0, Lcom/android/launcher3/common/base/view/LauncherTransitionable;

    if-eqz v1, :cond_0

    .line 294
    check-cast v0, Lcom/android/launcher3/common/base/view/LauncherTransitionable;

    .end local v0    # "v":Landroid/view/View;
    iget-object v1, p0, Lcom/android/launcher3/common/stage/Stage;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/launcher3/common/base/view/LauncherTransitionable;->onLauncherTransitionStart(Lcom/android/launcher3/Launcher;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    .line 296
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public finishOnTouchOutSide()Z
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getContainerView()Landroid/view/View;
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/android/launcher3/common/stage/Stage;->mMode:I

    return v0
.end method

.method protected getStageManager()Lcom/android/launcher3/common/stage/StageManager;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/launcher3/common/stage/Stage;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v0

    return-object v0
.end method

.method protected initStageView()V
    .locals 2

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/launcher3/common/stage/Stage;->mViewInitiated:Z

    if-eqz v0, :cond_0

    .line 81
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "initStageView was called duplicately"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/stage/Stage;->mViewInitiated:Z

    .line 84
    return-void
.end method

.method public initialize(Lcom/android/launcher3/Launcher;I)V
    .locals 2
    .param p1, "activity"    # Lcom/android/launcher3/Launcher;
    .param p2, "mode"    # I

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/launcher3/common/stage/Stage;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 71
    iput p2, p0, Lcom/android/launcher3/common/stage/Stage;->mMode:I

    .line 73
    iget-object v1, p0, Lcom/android/launcher3/common/stage/Stage;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 74
    .local v0, "currentConfig":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/launcher3/common/stage/Stage;->mCurrentOrientation:I

    .line 75
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/launcher3/common/stage/Stage;->mCurrentMobileKeyboard:I

    .line 76
    iget v1, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v1, p0, Lcom/android/launcher3/common/stage/Stage;->mCurrentHeightDp:I

    .line 77
    return-void
.end method

.method protected isRestorable()Z
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x1

    return v0
.end method

.method public final isRunningStateChangeAnimation()Z
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/launcher3/common/stage/Stage;->mStateSwitchAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isViewInitiated()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/android/launcher3/common/stage/Stage;->mViewInitiated:Z

    return v0
.end method

.method protected keepInstance()Z
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 172
    return-void
.end method

.method protected onBackPressed()Z
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public onChangeColorForBg(Z)V
    .locals 0
    .param p1, "whiteBg"    # Z

    .prologue
    .line 141
    return-void
.end method

.method public onChangeGrid()V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method public onCheckedChanged(Landroid/view/View;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isChecked"    # Z

    .prologue
    .line 144
    return-void
.end method

.method public onClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 158
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid onClick : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 127
    iget v0, p0, Lcom/android/launcher3/common/stage/Stage;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/common/stage/Stage;->mCurrentMobileKeyboard:I

    iget v1, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/common/stage/Stage;->mCurrentHeightDp:I

    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v0, v1, :cond_1

    .line 130
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iput v0, p0, Lcom/android/launcher3/common/stage/Stage;->mCurrentMobileKeyboard:I

    .line 131
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher3/common/stage/Stage;->mCurrentOrientation:I

    .line 132
    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v0, p0, Lcom/android/launcher3/common/stage/Stage;->mCurrentHeightDp:I

    .line 133
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/Stage;->onConfigurationChangedIfNeeded()V

    .line 135
    :cond_1
    return-void
.end method

.method public onConfigurationChangedIfNeeded()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public onDestroyActivity()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public onPauseActivity()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method protected onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 121
    return-void
.end method

.method public onResumeActivity()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 118
    return-void
.end method

.method protected abstract onStageEnter(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
.end method

.method protected abstract onStageExit(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
.end method

.method protected onStageMovingToInitial(Lcom/android/launcher3/common/stage/StageEntry;)V
    .locals 0
    .param p1, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 103
    return-void
.end method

.method public onStartForResult(I)V
    .locals 0
    .param p1, "requestCode"    # I

    .prologue
    .line 168
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;Z)V
    .locals 0
    .param p1, "savedState"    # Landroid/os/Bundle;
    .param p2, "isOnTop"    # Z

    .prologue
    .line 124
    return-void
.end method

.method public setDataWithOutStageChange(Lcom/android/launcher3/common/stage/StageEntry;)V
    .locals 0
    .param p1, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 306
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/android/launcher3/common/stage/Stage;->mMode:I

    .line 56
    return-void
.end method

.method public setup()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public supportStatusBar()Z
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x1

    return v0
.end method

.method protected switchInternalState(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
    .locals 1
    .param p1, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final switchState(Lcom/android/launcher3/common/stage/StageEntry;)V
    .locals 1
    .param p1, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/launcher3/common/stage/Stage;->cancelStateSwitchAnimation()V

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/stage/Stage;->switchInternalState(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;

    move-result-object v0

    .line 93
    .local v0, "switchAnim":Landroid/animation/Animator;
    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/common/stage/Stage;->playStateTransitAnim(Landroid/animation/Animator;Lcom/android/launcher3/common/stage/StageEntry;)V

    .line 94
    return-void
.end method
