.class public Lcom/android/server/pm/KnoxTimeoutHandler;
.super Ljava/lang/Object;
.source "KnoxTimeoutHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/KnoxTimeoutHandler$1;,
        Lcom/android/server/pm/KnoxTimeoutHandler$KnoxPointerEventListener;,
        Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;,
        Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;
    }
.end annotation


# static fields
.field private static final INTENT_ACTION_LOCK_TIMEOUT:Ljava/lang/String; = "com.sec.knox.container.INTENT_ACTION_LOCK_TIMEOUT"

.field private static final LOG_TAG:Ljava/lang/String; = "KnoxTimeoutHandler"

.field private static final MSG_ACTIVE_USER_CHANGE:I = 0x1

.field private static final MSG_CANCEL_LOCK_TIMEOUT:I = 0x3

.field private static final MSG_HIDE_KEYGUARD_IF_NEEDED:I = 0x5

.field private static final MSG_HOME_SHOW:I = 0x4

.field private static final MSG_NOTIFY_ACTIVITY_DRAWN:I = 0x6

.field private static final MSG_RESET_LOCK_TIMEOUT:I = 0x2

.field private static final PERSONA_ID:Ljava/lang/String; = "personaId"


# instance fields
.field private isKnox:Z

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mContainerTimeoutReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentId:I

.field private mCurrentPersonaId:I

.field private final mHandler:Landroid/os/Handler;

.field private mLatestTouchedTime:J

.field private final mService:Lcom/android/server/pm/PersonaManagerService;

.field private final mWakeLockHeldArr:Landroid/util/SparseBooleanArray;

.field private mWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/pm/KnoxTimeoutHandler;)I
    .locals 1

    iget v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mCurrentId:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/pm/KnoxTimeoutHandler;)Lcom/android/server/pm/PersonaManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/pm/KnoxTimeoutHandler;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mCurrentPersonaId:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/pm/KnoxTimeoutHandler;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mLatestTouchedTime:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/android/server/pm/KnoxTimeoutHandler;)Lcom/android/server/wm/WindowManagerService;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/pm/KnoxTimeoutHandler;->getWindowManagerLocked()Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/pm/KnoxTimeoutHandler;Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;)V
    .locals 0
    .param p1, "msgParam"    # Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/KnoxTimeoutHandler;->activityDrawn(Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/pm/KnoxTimeoutHandler;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/KnoxTimeoutHandler;->cancelLockTimer(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/pm/KnoxTimeoutHandler;Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;)V
    .locals 0
    .param p1, "msgParam"    # Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/KnoxTimeoutHandler;->handleActiveUserChange(Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/pm/KnoxTimeoutHandler;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/KnoxTimeoutHandler;->handleHomeShow(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/pm/KnoxTimeoutHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pm/KnoxTimeoutHandler;->hideKeyguardIfNeeded()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/pm/KnoxTimeoutHandler;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/KnoxTimeoutHandler;->resetLockTimer(I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PersonaManagerService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    const/4 v0, 0x0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mCurrentId:I

    .line 64
    iput v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mCurrentPersonaId:I

    .line 66
    iput-boolean v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->isKnox:Z

    .line 68
    new-instance v0, Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;-><init>(Lcom/android/server/pm/KnoxTimeoutHandler;Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;)V

    iput-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mHandler:Landroid/os/Handler;

    .line 70
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mLatestTouchedTime:J

    .line 79
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mWakeLockHeldArr:Landroid/util/SparseBooleanArray;

    .line 414
    new-instance v0, Lcom/android/server/pm/KnoxTimeoutHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/KnoxTimeoutHandler$1;-><init>(Lcom/android/server/pm/KnoxTimeoutHandler;)V

    iput-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mContainerTimeoutReceiver:Landroid/content/BroadcastReceiver;

    .line 171
    iput-object p1, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mContext:Landroid/content/Context;

    .line 172
    iput-object p2, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    .line 173
    iget-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mAlarmManager:Landroid/app/AlarmManager;

    .line 175
    invoke-direct {p0}, Lcom/android/server/pm/KnoxTimeoutHandler;->registerTapInputEventListener()V

    .line 176
    invoke-direct {p0}, Lcom/android/server/pm/KnoxTimeoutHandler;->registerTimeoutReceiver()V

    .line 177
    invoke-direct {p0}, Lcom/android/server/pm/KnoxTimeoutHandler;->registerSystemPersonaObserver()V

    .line 170
    return-void
.end method

.method private declared-synchronized activityDrawn(Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;)V
    .locals 7
    .param p1, "msgParam"    # Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;

    .prologue
    monitor-enter p0

    .line 324
    :try_start_0
    const-string/jumbo v3, "KnoxTimeoutHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "activityDrawn "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    if-nez p1, :cond_0

    monitor-exit p0

    .line 326
    return-void

    .line 328
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/PersonaManagerService;->isKioskContainerExistOnDevice()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 329
    iget-boolean v3, p1, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->showWhenLocked:Z

    if-eqz v3, :cond_1

    .line 330
    iget-object v3, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    .line 323
    return-void

    .line 333
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    iget v4, p1, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->userId:I

    invoke-virtual {v3, v4}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 334
    iget-boolean v3, p1, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->showWhenLocked:Z

    if-eqz v3, :cond_1

    .line 335
    iget-object v3, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 339
    :cond_3
    :try_start_3
    iget-object v3, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mContext:Landroid/content/Context;

    .line 340
    const-string/jumbo v4, "enterprise_policy_new"

    .line 339
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 341
    .local v0, "edm":Lcom/samsung/android/knox/EnterpriseDeviceManager;
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/samsung/android/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/shareddevice/EnterpriseSharedDevicePolicy;->isSharedDeviceEnabled()Z

    move-result v1

    .line 343
    .local v1, "isSharedDevice":Z
    const-string/jumbo v3, "KnoxTimeoutHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SD activity"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v3, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "isEmergencyCall"

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 344
    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 346
    .local v2, "mSharedDeviceCall":I
    if-eqz v1, :cond_5

    .line 347
    iget-boolean v3, p1, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->showWhenLocked:Z

    if-eqz v3, :cond_4

    .line 348
    iget-object v3, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 349
    const-string/jumbo v3, "KnoxTimeoutHandler"

    const-string/jumbo v4, "Hide"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    monitor-exit p0

    .line 351
    return-void

    .line 354
    :cond_5
    :try_start_4
    iget v3, p1, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->multiwindowstyle:I

    if-eqz v3, :cond_6

    .line 355
    iget v3, p1, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->multiwindowstyle:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    :cond_6
    iget-boolean v3, p1, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->fullscreen:Z

    .line 354
    if-eqz v3, :cond_1

    .line 356
    iget-boolean v3, p1, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->isMutiwindowRecord:Z

    if-nez v3, :cond_1

    .line 357
    iget-object v3, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    iget v4, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mCurrentId:I

    invoke-virtual {v3, v4}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 358
    iget-object v3, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 359
    const-string/jumbo v3, "KnoxTimeoutHandler"

    const-string/jumbo v4, "Fullscreen and mCurrent is not KNOX user. Hence hide keyguard"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 361
    :cond_7
    const-string/jumbo v3, "KnoxTimeoutHandler"

    const-string/jumbo v4, "Fullscreen but mCurrent is KNOX user."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized cancelLockTimer(I)V
    .locals 7
    .param p1, "userId"    # I

    .prologue
    monitor-enter p0

    .line 550
    :try_start_0
    const-string/jumbo v4, "KnoxTimeoutHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " cancel lock timer for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 553
    .local v2, "token":J
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "com.sec.knox.container.INTENT_ACTION_LOCK_TIMEOUT"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 555
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "personaId"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 556
    iget-object v4, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mContext:Landroid/content/Context;

    .line 557
    const/high16 v5, 0x48000000    # 131072.0f

    .line 556
    invoke-static {v4, p1, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 558
    .local v1, "pi":Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v4, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 560
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 549
    return-void

    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "pi":Landroid/app/PendingIntent;
    .end local v2    # "token":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private getWindowManagerLocked()Lcom/android/server/wm/WindowManagerService;
    .locals 2

    .prologue
    .line 83
    iget-object v1, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    if-nez v1, :cond_0

    .line 84
    const-string/jumbo v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 85
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerService;

    iput-object v1, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 87
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    return-object v1
.end method

.method private declared-synchronized handleActiveUserChange(Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;)V
    .locals 10
    .param p1, "msgParam"    # Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;

    .prologue
    monitor-enter p0

    .line 234
    :try_start_0
    iget v5, p1, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->userId:I

    .line 235
    .local v5, "userId":I
    const-string/jumbo v6, "KnoxTimeoutHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleActiveUserChange "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v6, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v6, v5}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 238
    iget-boolean v6, p1, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->isMutiwindowRecord:Z

    if-nez v6, :cond_0

    .line 239
    iput v5, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mCurrentId:I

    .line 241
    :cond_0
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->isKnox:Z

    .line 242
    const-string/jumbo v6, "KnoxTimeoutHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " active change for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v6, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    sget-object v7, Lcom/samsung/android/knox/SemPersonaState;->ACTIVE:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v6, v7, v5}, Lcom/android/server/pm/PersonaManagerService;->inState(Lcom/samsung/android/knox/SemPersonaState;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 245
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mLatestTouchedTime:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 246
    .local v4, "td":Ljava/lang/Long;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v8, v6

    if-gtz v6, :cond_1

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x7d0

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 247
    const-string/jumbo v6, "KnoxTimeoutHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " reset timeout from active user change. The time difference is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-direct {p0, v5}, Lcom/android/server/pm/KnoxTimeoutHandler;->resetLockTimer(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v4    # "td":Ljava/lang/Long;
    :cond_1
    :goto_0
    monitor-exit p0

    .line 233
    return-void

    .line 251
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v6, v5}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Lcom/samsung/android/knox/SemPersonaInfo;

    move-result-object v3

    .line 252
    .local v3, "pInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    if-eqz v3, :cond_3

    iget-boolean v6, v3, Lcom/samsung/android/knox/SemPersonaInfo;->removePersona:Z

    if-eqz v6, :cond_3

    .line 253
    const-string/jumbo v6, "KnoxTimeoutHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "container "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " is removed, no locking needed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 254
    return-void

    .line 257
    :cond_3
    :try_start_2
    iget-object v6, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v6, v5}, Lcom/android/server/pm/PersonaManagerService;->isUserHasTrust(I)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    sget-object v7, Lcom/samsung/android/knox/SemPersonaState;->LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v6, v7, v5}, Lcom/android/server/pm/PersonaManagerService;->inState(Lcom/samsung/android/knox/SemPersonaState;I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 258
    const-string/jumbo v6, "KnoxTimeoutHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " isUserHasTrust "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v6, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v6, v5}, Lcom/android/server/pm/PersonaManagerService;->dismissPersonaKeyGuard(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 260
    return-void

    .line 263
    :cond_4
    :try_start_3
    const-string/jumbo v6, "KnoxTimeoutHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " container is locked "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-boolean v6, p1, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->showWhenLocked:Z

    if-eqz v6, :cond_5

    .line 265
    const-string/jumbo v6, "KnoxTimeoutHandler"

    const-string/jumbo v7, "Do not show knox security screen cause it has FLAG_SHOW_WHEN_LOCKED but hide if needed"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v6, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0x1f4

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .end local v3    # "pInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    .end local v5    # "userId":I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 268
    .restart local v3    # "pInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    .restart local v5    # "userId":I
    :cond_5
    :try_start_4
    iget-boolean v6, p1, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->isMutiwindowRecord:Z

    if-eqz v6, :cond_6

    .line 269
    iget-object v6, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    const/4 v7, 0x1

    invoke-virtual {v6, v5, v7}, Lcom/android/server/pm/PersonaManagerService;->showKeyguard(II)V

    goto/16 :goto_0

    .line 271
    :cond_6
    iget-object v6, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v6, v5}, Lcom/android/server/pm/PersonaManagerService;->showKeyguard(I)V

    goto/16 :goto_0

    .line 277
    .end local v3    # "pInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    :cond_7
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->isKnox:Z

    .line 279
    iget-object v6, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mContext:Landroid/content/Context;

    .line 280
    const-string/jumbo v7, "enterprise_policy_new"

    .line 279
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 281
    .local v0, "edm":Lcom/samsung/android/knox/EnterpriseDeviceManager;
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/samsung/android/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/knox/shareddevice/EnterpriseSharedDevicePolicy;->isSharedDeviceEnabled()Z

    move-result v1

    .line 283
    .local v1, "isSharedDevice":Z
    const-string/jumbo v6, "KnoxTimeoutHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Shared devices show user state"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v6, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "isEmergencyCall"

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 284
    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 286
    .local v2, "mSharedDeviceCall":I
    if-eqz v1, :cond_9

    const/4 v6, 0x1

    if-ne v2, v6, :cond_9

    .line 287
    const-string/jumbo v6, "KnoxTimeoutHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Shared devices flag "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-boolean v6, p1, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->showWhenLocked:Z

    if-nez v6, :cond_8

    .line 289
    iget-object v6, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/pm/PersonaManagerService;->showKeyguard(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_8
    monitor-exit p0

    .line 291
    return-void

    .line 292
    :cond_9
    if-eqz v1, :cond_a

    monitor-exit p0

    .line 293
    return-void

    .line 296
    :cond_a
    :try_start_5
    iget-object v6, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PersonaManagerService;->isKioskContainerExistOnDevice()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 297
    iput v5, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mCurrentId:I

    .line 298
    const-string/jumbo v6, "KnoxTimeoutHandler"

    const-string/jumbo v7, "handleActiveUserChange"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v6, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    sget-object v7, Lcom/samsung/android/knox/SemPersonaState;->ACTIVE:Lcom/samsung/android/knox/SemPersonaState;

    iget-object v8, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    iget v8, v8, Lcom/android/server/pm/PersonaManagerService;->enabledKioskContainerId:I

    invoke-virtual {v6, v7, v8}, Lcom/android/server/pm/PersonaManagerService;->inState(Lcom/samsung/android/knox/SemPersonaState;I)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 300
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mLatestTouchedTime:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 301
    .restart local v4    # "td":Ljava/lang/Long;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v8, v6

    if-gtz v6, :cond_1

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x7d0

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 302
    const-string/jumbo v6, "KnoxTimeoutHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " reset timeout from active Kiosk user. The time difference is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v6, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    iget v6, v6, Lcom/android/server/pm/PersonaManagerService;->enabledKioskContainerId:I

    invoke-direct {p0, v6}, Lcom/android/server/pm/KnoxTimeoutHandler;->resetLockTimer(I)V

    goto/16 :goto_0

    .line 305
    .end local v4    # "td":Ljava/lang/Long;
    :cond_b
    iget-object v6, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    sget-object v7, Lcom/samsung/android/knox/SemPersonaState;->CREATING:Lcom/samsung/android/knox/SemPersonaState;

    iget-object v8, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    iget v8, v8, Lcom/android/server/pm/PersonaManagerService;->enabledKioskContainerId:I

    invoke-virtual {v6, v7, v8}, Lcom/android/server/pm/PersonaManagerService;->inState(Lcom/samsung/android/knox/SemPersonaState;I)Z

    move-result v6

    if-nez v6, :cond_c

    .line 306
    iget-object v6, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    sget-object v7, Lcom/samsung/android/knox/SemPersonaState;->ACTIVE:Lcom/samsung/android/knox/SemPersonaState;

    iget-object v8, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    iget v8, v8, Lcom/android/server/pm/PersonaManagerService;->enabledKioskContainerId:I

    invoke-virtual {v6, v7, v8}, Lcom/android/server/pm/PersonaManagerService;->inState(Lcom/samsung/android/knox/SemPersonaState;I)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 309
    :cond_c
    iget-boolean v6, p1, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->showWhenLocked:Z

    if-eqz v6, :cond_1

    goto/16 :goto_0

    .line 307
    :cond_d
    iget-boolean v6, p1, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->showWhenLocked:Z

    if-nez v6, :cond_c

    .line 308
    iget-object v6, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    iget-object v7, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    iget v7, v7, Lcom/android/server/pm/PersonaManagerService;->enabledKioskContainerId:I

    invoke-virtual {v6, v7}, Lcom/android/server/pm/PersonaManagerService;->showKeyguard(I)V

    goto/16 :goto_0

    .line 313
    :cond_e
    iget-boolean v6, p1, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->fullscreen:Z

    if-eqz v6, :cond_f

    .line 314
    iput v5, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mCurrentId:I

    goto/16 :goto_0

    .line 317
    :cond_f
    const-string/jumbo v6, "KnoxTimeoutHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Target Activity is not fullscreen. We will not show this activity"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method

.method private handleHomeShow(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 217
    const-string/jumbo v1, "KnoxTimeoutHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleHomeShow for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " and current "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mCurrentPersonaId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    if-eqz p1, :cond_1

    const/16 v1, 0x64

    if-lt p1, v1, :cond_0

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    .line 220
    :cond_1
    iget v1, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mCurrentPersonaId:I

    if-eq v1, p1, :cond_2

    .line 221
    const-string/jumbo v1, "KnoxTimeoutHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " launch home intent for calibration because home is shown for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    .local v0, "homeIntent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 225
    iget-object v1, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 216
    .end local v0    # "homeIntent":Landroid/content/Intent;
    :cond_2
    return-void
.end method

.method private hideKeyguardIfNeeded()V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->hideKeyguardIfNeeded()V

    .line 368
    return-void
.end method

.method private registerSystemPersonaObserver()V
    .locals 2

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    new-instance v1, Lcom/android/server/pm/KnoxTimeoutHandler$2;

    invoke-direct {v1, p0}, Lcom/android/server/pm/KnoxTimeoutHandler$2;-><init>(Lcom/android/server/pm/KnoxTimeoutHandler;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z

    .line 487
    return-void
.end method

.method private registerTapInputEventListener()V
    .locals 3

    .prologue
    .line 469
    const-string/jumbo v0, "KnoxTimeoutHandler"

    const-string/jumbo v1, " register tap input event listener "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-direct {p0}, Lcom/android/server/pm/KnoxTimeoutHandler;->getWindowManagerLocked()Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/KnoxTimeoutHandler$KnoxPointerEventListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/pm/KnoxTimeoutHandler$KnoxPointerEventListener;-><init>(Lcom/android/server/pm/KnoxTimeoutHandler;Lcom/android/server/pm/KnoxTimeoutHandler$KnoxPointerEventListener;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 468
    return-void
.end method

.method private registerTimeoutReceiver()V
    .locals 3

    .prologue
    .line 477
    const-string/jumbo v1, "KnoxTimeoutHandler"

    const-string/jumbo v2, " register time out receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 480
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.sec.knox.container.INTENT_ACTION_LOCK_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 481
    iget-object v1, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mContainerTimeoutReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 476
    return-void
.end method

.method private declared-synchronized resetLockTimer(I)V
    .locals 12
    .param p1, "userId"    # I

    .prologue
    monitor-enter p0

    .line 518
    :try_start_0
    const-string/jumbo v8, "KnoxTimeoutHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " reset lock timer for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v8, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mWakeLockHeldArr:Landroid/util/SparseBooleanArray;

    const/4 v9, 0x0

    invoke-virtual {v8, p1, v9}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 521
    const-string/jumbo v8, "KnoxTimeoutHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " Wake lock acquired for this user. Ignore reset timeout for userId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 522
    return-void

    .line 525
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 526
    .local v6, "token":J
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v8, "com.sec.knox.container.INTENT_ACTION_LOCK_TIMEOUT"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 528
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v8, "personaId"

    invoke-virtual {v0, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 529
    iget-object v8, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mContext:Landroid/content/Context;

    .line 530
    const/high16 v9, 0x48000000    # 131072.0f

    .line 529
    invoke-static {v8, p1, v0, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 531
    .local v1, "pi":Landroid/app/PendingIntent;
    iget-object v8, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v8, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 533
    iget-object v8, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v8, p1}, Lcom/android/server/pm/PersonaManagerService;->getScreenOffTime(I)J

    move-result-wide v4

    .line 535
    .local v4, "timeout":J
    const-string/jumbo v8, "KnoxTimeoutHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " timeout value "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-lez v8, :cond_1

    .line 538
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 539
    .local v2, "now":J
    iget-object v8, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mAlarmManager:Landroid/app/AlarmManager;

    add-long v10, v2, v4

    const/4 v9, 0x2

    invoke-virtual {v8, v9, v10, v11, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 542
    .end local v2    # "now":J
    :cond_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 517
    return-void

    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "pi":Landroid/app/PendingIntent;
    .end local v4    # "timeout":J
    .end local v6    # "token":J
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method


# virtual methods
.method declared-synchronized getForegroundUser()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 209
    :try_start_0
    iget v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mCurrentId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method notifyActivityDrawn(IZZI)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "fullscreen"    # Z
    .param p3, "showWhenLocked"    # Z
    .param p4, "mws"    # I

    .prologue
    .line 191
    new-instance v0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;-><init>(Lcom/android/server/pm/KnoxTimeoutHandler;IZZI)V

    .line 192
    .local v0, "msgParam":Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;
    const-string/jumbo v1, "KnoxTimeoutHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyActivityDrawn "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v1, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 190
    return-void
.end method

.method onHomeShow(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 201
    const-string/jumbo v0, "KnoxTimeoutHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "post home show event for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 200
    return-void
.end method

.method postActiveUserChange(IZZZ)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "fullscreen"    # Z
    .param p3, "showWhenLocked"    # Z
    .param p4, "isMutiwindowRecord"    # Z

    .prologue
    .line 185
    new-instance v0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;-><init>(Lcom/android/server/pm/KnoxTimeoutHandler;IZZZ)V

    .line 186
    .local v0, "msgParam":Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;
    const-string/jumbo v1, "KnoxTimeoutHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "postActiveUserChange "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v1, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 184
    return-void
.end method

.method postTimeoutCancel(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 576
    iget-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 575
    return-void
.end method

.method postTimeoutReset(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 567
    return-void
.end method

.method setWakeLockAcquired(IZ)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "isAcquired"    # Z

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mWakeLockHeldArr:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 584
    return-void
.end method
