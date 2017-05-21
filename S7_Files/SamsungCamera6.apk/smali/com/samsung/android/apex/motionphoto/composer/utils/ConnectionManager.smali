.class public Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;
.super Ljava/lang/Object;
.source "ConnectionManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager$OnConnectionListener;,
        Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager$SingletonHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mApex:Lcom/samsung/android/apex/service/IApexService;

.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mIsConnected:Z

.field private mOnConnectionListener:Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager$OnConnectionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;->mIsConnected:Z

    .line 40
    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v1, "ConnectionManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager$1;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;
    .locals 2

    .prologue
    .line 67
    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v1, "getInstance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager$SingletonHolder;->sInstance:Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager$OnConnectionListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager$OnConnectionListener;

    .prologue
    .line 72
    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-static {}, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;->getInstance()Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;->mContext:Ljava/lang/ref/WeakReference;

    .line 74
    invoke-static {}, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;->getInstance()Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;

    move-result-object v1

    iput-object p2, v1, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;->mOnConnectionListener:Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager$OnConnectionListener;

    .line 75
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 76
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string v1, "com.sec.android.app.apex"

    const-string v2, "com.sec.android.app.apex.service.ApexService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 78
    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 79
    return-void
.end method

.method public isBound()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;->mIsConnected:Z

    return v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 83
    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;->mIsConnected:Z

    .line 85
    invoke-static {p2}, Lcom/samsung/android/apex/service/IApexService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/apex/service/IApexService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;->mApex:Lcom/samsung/android/apex/service/IApexService;

    .line 86
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;->mOnConnectionListener:Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager$OnConnectionListener;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;->mOnConnectionListener:Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager$OnConnectionListener;

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;->mApex:Lcom/samsung/android/apex/service/IApexService;

    invoke-interface {v0, v1}, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager$OnConnectionListener;->onServiceConnected(Lcom/samsung/android/apex/service/IApexService;)V

    .line 89
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 93
    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;->mIsConnected:Z

    .line 95
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;->mOnConnectionListener:Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager$OnConnectionListener;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;->mOnConnectionListener:Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager$OnConnectionListener;

    invoke-interface {v0}, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager$OnConnectionListener;->onServiceDisconnected()V

    .line 98
    :cond_0
    return-void
.end method

.method public unbind()V
    .locals 2

    .prologue
    .line 57
    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v1, "unbind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-boolean v0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;->mIsConnected:Z

    if-eqz v0, :cond_0

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;->mIsConnected:Z

    .line 60
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 64
    :cond_0
    return-void
.end method
