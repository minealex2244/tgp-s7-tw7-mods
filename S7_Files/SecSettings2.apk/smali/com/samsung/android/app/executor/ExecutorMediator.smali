.class public Lcom/samsung/android/app/executor/ExecutorMediator;
.super Ljava/lang/Object;
.source "ExecutorMediator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;,
        Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;,
        Lcom/samsung/android/app/executor/ExecutorMediator$OnRuleCanceledListener;,
        Lcom/samsung/android/app/executor/ExecutorMediator$OnStateReceivedListener;,
        Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;,
        Lcom/samsung/android/app/executor/ExecutorMediator$StartStateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/samsung/android/app/executor/ExecutorMediator;


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mAppVersion:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mInterimListener:Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;

.field private mIsTestMode:Z

.field private mLoc:Ljava/util/Locale;

.field private mResponseCallback:Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;

.field private mStartListener:Lcom/samsung/android/app/executor/ExecutorMediator$StartStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/android/app/executor/ExecutorMediator;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "(v0019)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/executor/ExecutorMediator;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mHandler:Landroid/os/Handler;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mIsTestMode:Z

    .line 146
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/executor/ExecutorMediator;)Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/executor/ExecutorMediator;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInterimListener:Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/executor/ExecutorMediator;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/executor/ExecutorMediator;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static declared-synchronized createInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/executor/ExecutorMediator;
    .locals 2
    .param p0, "appName"    # Ljava/lang/String;
    .param p1, "appVersion"    # Ljava/lang/String;

    .prologue
    const-class v1, Lcom/samsung/android/app/executor/ExecutorMediator;

    monitor-enter v1

    .line 170
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInstance:Lcom/samsung/android/app/executor/ExecutorMediator;

    if-eqz v0, :cond_0

    .line 173
    :goto_0
    sget-object v0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInstance:Lcom/samsung/android/app/executor/ExecutorMediator;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/executor/ExecutorMediator;->setAppName(Ljava/lang/String;)V

    .line 174
    sget-object v0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInstance:Lcom/samsung/android/app/executor/ExecutorMediator;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/executor/ExecutorMediator;->setAppVersion(Ljava/lang/String;)V

    .line 175
    sget-object v0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInstance:Lcom/samsung/android/app/executor/ExecutorMediator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 171
    :cond_0
    :try_start_1
    new-instance v0, Lcom/samsung/android/app/executor/ExecutorMediator;

    invoke-direct {v0}, Lcom/samsung/android/app/executor/ExecutorMediator;-><init>()V

    sput-object v0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInstance:Lcom/samsung/android/app/executor/ExecutorMediator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private createIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 400
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 401
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.android.intelligence.executormanager"

    const-string/jumbo v3, "com.samsung.android.intelligence.executormanager.ExecutorManagerLoggingReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v1, "command"

    .line 403
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "appName"

    .line 404
    iget-object v2, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "appVersion"

    .line 405
    iget-object v2, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mAppVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "timestamp"

    .line 406
    invoke-direct {p0}, Lcom/samsung/android/app/executor/ExecutorMediator;->getTimestamp()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 407
    sget-object v1, Lcom/samsung/android/app/executor/ExecutorMediator;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Intent created to send for command(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/app/executor/ExecutorMediator;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const-class v1, Lcom/samsung/android/app/executor/ExecutorMediator;

    monitor-enter v1

    .line 185
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInstance:Lcom/samsung/android/app/executor/ExecutorMediator;

    if-eqz v0, :cond_0

    .line 189
    sget-object v0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInstance:Lcom/samsung/android/app/executor/ExecutorMediator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 186
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Instance is null. please call createInstance() for the first time."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getTimestamp()Ljava/lang/Long;
    .locals 4

    .prologue
    .line 412
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private logState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "stateIds"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 390
    if-eqz p1, :cond_0

    .line 391
    if-eqz p3, :cond_1

    .line 393
    invoke-direct {p0, p2}, Lcom/samsung/android/app/executor/ExecutorMediator;->createIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "stateIds"

    .line 394
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 396
    return-void

    .line 390
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Context cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 391
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Log value cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static toBcp47Language(Ljava/util/Locale;)Ljava/lang/String;
    .locals 8
    .param p0, "loc"    # Ljava/util/Locale;

    .prologue
    const/16 v7, 0x2d

    .line 508
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-ge v5, v6, :cond_3

    .line 513
    const/16 v0, 0x2d

    .line 514
    .local v0, "SEP":C
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 515
    .local v2, "language":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 516
    .local v3, "region":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v4

    .local v4, "variant":Ljava/lang/String;
    const-string/jumbo v5, "no"

    .line 520
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 526
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_1
    const-string/jumbo v2, "und"

    :cond_2
    :goto_1
    const-string/jumbo v5, "\\p{Alpha}{2}|\\p{Digit}{3}"

    .line 538
    invoke-virtual {v3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    :goto_2
    const-string/jumbo v5, "\\p{Alnum}{5,8}|\\p{Digit}\\p{Alnum}{3}"

    .line 543
    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 547
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 548
    .local v1, "bcp47Tag":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 551
    :goto_4
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 555
    :goto_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 509
    .end local v0    # "SEP":C
    .end local v1    # "bcp47Tag":Ljava/lang/StringBuilder;
    .end local v2    # "language":Ljava/lang/String;
    .end local v3    # "region":Ljava/lang/String;
    .end local v4    # "variant":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .restart local v0    # "SEP":C
    .restart local v2    # "language":Ljava/lang/String;
    .restart local v3    # "region":Ljava/lang/String;
    .restart local v4    # "variant":Ljava/lang/String;
    :cond_4
    const-string/jumbo v5, "NO"

    .line 520
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "NY"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v2, "nn"

    const-string/jumbo v3, "NO"

    const-string/jumbo v4, ""

    .line 523
    goto :goto_0

    :cond_5
    const-string/jumbo v5, "\\p{Alpha}{2,8}"

    .line 526
    invoke-virtual {v2, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "iw"

    .line 529
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string/jumbo v5, "in"

    .line 531
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string/jumbo v5, "ji"

    .line 533
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v2, "yi"

    .line 534
    goto :goto_1

    :cond_6
    const-string/jumbo v2, "he"

    .line 530
    goto :goto_1

    :cond_7
    const-string/jumbo v2, "id"

    .line 532
    goto :goto_1

    :cond_8
    const-string/jumbo v3, ""

    .line 539
    goto :goto_2

    :cond_9
    const-string/jumbo v4, ""

    .line 544
    goto :goto_3

    .line 549
    .restart local v1    # "bcp47Tag":Ljava/lang/StringBuilder;
    :cond_a
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 552
    :cond_b
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5
.end method


# virtual methods
.method public clearInterimStateListener()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 214
    iput-object v0, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInterimListener:Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;

    .line 215
    return-void
.end method

.method public logEnterState(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stateId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "state_enter"

    .line 295
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/app/executor/ExecutorMediator;->logState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method public logEnterStates(Landroid/content/Context;Ljava/util/Set;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 306
    .local p2, "stateIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    .local v1, "statesBuilder":Ljava/lang/StringBuilder;
    if-nez p2, :cond_1

    :cond_0
    :goto_0
    const-string/jumbo v2, "state_enter"

    .line 313
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3}, Lcom/samsung/android/app/executor/ExecutorMediator;->logState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    return-void

    .line 307
    :cond_1
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 308
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 311
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 308
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 309
    .local v0, "stateId":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public logExitState(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stateId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "state_exit"

    .line 323
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/app/executor/ExecutorMediator;->logState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method public logExitStates(Landroid/content/Context;Ljava/util/Set;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 334
    .local p2, "stateIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    .local v1, "statesBuilder":Ljava/lang/StringBuilder;
    if-nez p2, :cond_1

    :cond_0
    :goto_0
    const-string/jumbo v2, "state_exit"

    .line 341
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3}, Lcom/samsung/android/app/executor/ExecutorMediator;->logState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    return-void

    .line 335
    :cond_1
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 336
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 339
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 336
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 337
    .local v0, "stateId":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method requestContext()V
    .locals 6

    .prologue
    .line 473
    iget-object v3, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mResponseCallback:Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    .line 478
    .local v0, "ret":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInterimListener:Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;

    if-nez v3, :cond_2

    .line 482
    .end local v0    # "ret":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .local v2, "statesBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "{ \"stateId\":["

    .line 483
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    if-nez v0, :cond_3

    :cond_0
    :goto_1
    const-string/jumbo v3, "],\"appName\":\""

    .line 490
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mAppName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\"appVersion\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mAppVersion:Ljava/lang/String;

    .line 491
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\" }"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    iget-object v3, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mResponseCallback:Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;

    const-string/jumbo v4, "app_context"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;->onResponse(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    return-void

    .line 474
    .end local v2    # "statesBuilder":Ljava/lang/StringBuilder;
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Response listener cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 479
    .restart local v0    # "ret":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInterimListener:Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;

    invoke-interface {v3}, Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;->onScreenStatesRequested()Ljava/util/Set;

    move-result-object v0

    .local v0, "ret":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_0

    .line 484
    .end local v0    # "ret":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v2    # "statesBuilder":Ljava/lang/StringBuilder;
    :cond_3
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 485
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 488
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 485
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "stateId":Ljava/lang/String;
    const-string/jumbo v4, "\""

    .line 486
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public requestNlg(Lcom/samsung/android/app/executor/data/NlgRequestInfo;)V
    .locals 6
    .param p1, "nri"    # Lcom/samsung/android/app/executor/data/NlgRequestInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 250
    iget-object v2, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mResponseCallback:Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;

    if-eqz v2, :cond_0

    .line 254
    if-eqz p1, :cond_1

    .line 260
    iget-object v2, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mLoc:Ljava/util/Locale;

    if-nez v2, :cond_2

    .line 263
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/executor/ExecutorMediator;->toBcp47Language(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .local v0, "deviceLocale":Ljava/lang/String;
    :goto_0
    const-string/jumbo v2, "\"language\":\"%s\",\"requestedAppName\":\"%s\",%s"

    const/4 v3, 0x3

    .line 266
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mAppName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 267
    invoke-virtual {p1}, Lcom/samsung/android/app/executor/data/NlgRequestInfo;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 266
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, "ret":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mResponseCallback:Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;

    const-string/jumbo v3, "nlg"

    invoke-interface {v2, v3, v1}, Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;->onResponse(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    return-void

    .line 251
    .end local v0    # "deviceLocale":Ljava/lang/String;
    .end local v1    # "ret":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Response listener cannot be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 255
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "NlgRequestInfo cannot be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 261
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mLoc:Ljava/util/Locale;

    invoke-static {v2}, Lcom/samsung/android/app/executor/ExecutorMediator;->toBcp47Language(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "deviceLocale":Ljava/lang/String;
    goto :goto_0
.end method

.method sendParamFilling(Lcom/samsung/android/app/executor/data/ParamFilling;)V
    .locals 3
    .param p1, "pf"    # Lcom/samsung/android/app/executor/data/ParamFilling;

    .prologue
    .line 497
    iget-object v0, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInterimListener:Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;

    if-nez v0, :cond_0

    .line 501
    sget-object v0, Lcom/samsung/android/app/executor/ExecutorMediator;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "InterimListener is null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v0, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mResponseCallback:Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;

    const-string/jumbo v1, "param_filling"

    const-string/jumbo v2, "fail"

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;->onResponse(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    :goto_0
    return-void

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInterimListener:Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;->onParamFillingReceived(Lcom/samsung/android/app/executor/data/ParamFilling;)V

    .line 499
    iget-object v0, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mResponseCallback:Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;

    const-string/jumbo v1, "param_filling"

    const-string/jumbo v2, "success"

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;->onResponse(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V
    .locals 3
    .param p1, "result"    # Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 231
    iget-object v0, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mResponseCallback:Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mResponseCallback:Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;

    invoke-virtual {p1}, Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;->onResponse(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    return-void

    .line 232
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Response listener cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method sendState(Lcom/samsung/android/app/executor/data/State;)I
    .locals 4
    .param p1, "state"    # Lcom/samsung/android/app/executor/data/State;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 417
    invoke-virtual {p1}, Lcom/samsung/android/app/executor/data/State;->getSeqNum()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    .line 422
    invoke-virtual {p1}, Lcom/samsung/android/app/executor/data/State;->getSeqNum()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 425
    invoke-virtual {p1}, Lcom/samsung/android/app/executor/data/State;->getSeqNum()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 441
    new-instance v0, Lcom/samsung/android/app/executor/ExecutorMediator$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/executor/ExecutorMediator$1;-><init>(Lcom/samsung/android/app/executor/ExecutorMediator;Lcom/samsung/android/app/executor/data/State;)V

    .line 453
    .local v0, "sendStateRunnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 455
    invoke-virtual {p1}, Lcom/samsung/android/app/executor/data/State;->isLastState()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_7

    .line 458
    :goto_0
    return v3

    .line 418
    .end local v0    # "sendStateRunnable":Ljava/lang/Runnable;
    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mIsTestMode:Z

    .line 419
    sget-object v1, Lcom/samsung/android/app/executor/ExecutorMediator;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "SeqNo 0 found. isTestMode true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    sget-object v1, Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;->SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/executor/ExecutorMediator;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 421
    return v3

    .line 423
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mStartListener:Lcom/samsung/android/app/executor/ExecutorMediator$StartStateListener;

    invoke-interface {v1, p1}, Lcom/samsung/android/app/executor/ExecutorMediator$StartStateListener;->onStateReceived(Lcom/samsung/android/app/executor/data/State;)V

    .line 424
    return v3

    .line 426
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInterimListener:Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;

    if-eqz v1, :cond_4

    .line 431
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInterimListener:Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;

    if-nez v1, :cond_5

    .line 435
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mStartListener:Lcom/samsung/android/app/executor/ExecutorMediator$StartStateListener;

    if-nez v1, :cond_6

    .line 438
    :goto_2
    return v3

    .line 426
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mStartListener:Lcom/samsung/android/app/executor/ExecutorMediator$StartStateListener;

    if-nez v1, :cond_3

    .line 427
    sget-object v1, Lcom/samsung/android/app/executor/ExecutorMediator;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "No listener is set."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    return v3

    .line 432
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInterimListener:Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;

    invoke-virtual {p1}, Lcom/samsung/android/app/executor/data/State;->getRuleId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;->onRuleCanceled(Ljava/lang/String;)V

    goto :goto_1

    .line 436
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mStartListener:Lcom/samsung/android/app/executor/ExecutorMediator$StartStateListener;

    invoke-virtual {p1}, Lcom/samsung/android/app/executor/data/State;->getRuleId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/app/executor/ExecutorMediator$StartStateListener;->onRuleCanceled(Ljava/lang/String;)V

    goto :goto_2

    .line 456
    .restart local v0    # "sendStateRunnable":Ljava/lang/Runnable;
    :cond_7
    iput-boolean v3, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mIsTestMode:Z

    goto :goto_0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mAppName:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "appVersion"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mAppVersion:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setInterimStateListener(Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;)V
    .locals 0
    .param p1, "stateListener"    # Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInterimListener:Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;

    .line 206
    return-void
.end method

.method setResponseCallback(Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;

    .prologue
    .line 468
    iput-object p1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mResponseCallback:Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;

    .line 469
    return-void
.end method

.method public setStartStateListener(Lcom/samsung/android/app/executor/ExecutorMediator$StartStateListener;)V
    .locals 0
    .param p1, "stateListener"    # Lcom/samsung/android/app/executor/ExecutorMediator$StartStateListener;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mStartListener:Lcom/samsung/android/app/executor/ExecutorMediator$StartStateListener;

    .line 198
    return-void
.end method
