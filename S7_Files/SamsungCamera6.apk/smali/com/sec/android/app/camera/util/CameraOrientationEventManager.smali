.class public Lcom/sec/android/app/camera/util/CameraOrientationEventManager;
.super Ljava/lang/Object;
.source "CameraOrientationEventManager.java"

# interfaces
.implements Lcom/samsung/android/hardware/context/SemContextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/util/CameraOrientationEventManager$CameraOrientationEventListener;
    }
.end annotation


# static fields
.field private static final ORIENTATION_CHANGE_MARGIN_IN_DEGREE:I = 0xa

.field private static final SENSORHUB_SERVICE_NAME:Ljava/lang/String; = "scontext"

.field private static final TAG:Ljava/lang/String; = "CameraOrientationEvtMgr"

.field private static mInstance:Lcom/sec/android/app/camera/util/CameraOrientationEventManager;

.field private static final mInstanceLock:Ljava/lang/Object;


# instance fields
.field private mIsSemContextListenerAvailable:Z

.field private mLastOrientation:I

.field private mListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/util/CameraOrientationEventManager$CameraOrientationEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mSemContextListener:Lcom/samsung/android/hardware/context/SemContextListener;

.field private mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v2, p0, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 50
    iput-object v2, p0, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mSemContextListener:Lcom/samsung/android/hardware/context/SemContextListener;

    .line 51
    iput-boolean v3, p0, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mIsSemContextListenerAvailable:Z

    .line 54
    iput-object v2, p0, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 56
    iput v3, p0, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mLastOrientation:I

    .line 59
    iput-object v2, p0, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mListenerList:Ljava/util/ArrayList;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 63
    .local v0, "applicationContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 64
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "com.sec.feature.sensorhub"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    const-string v2, "scontext"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/context/SemContextManager;

    iput-object v2, p0, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 67
    iget-object v2, p0, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    if-eqz v2, :cond_0

    .line 68
    iget-object v2, p0, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mIsSemContextListenerAvailable:Z

    .line 71
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mListenerList:Ljava/util/ArrayList;

    .line 73
    iget-boolean v2, p0, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mIsSemContextListenerAvailable:Z

    if-eqz v2, :cond_1

    .line 74
    const-string v2, "CameraOrientationEvtMgr"

    const-string v3, "using SemContextListener"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-direct {p0, p0}, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->setSemContextListener(Lcom/samsung/android/hardware/context/SemContextListener;)V

    .line 92
    :goto_0
    return-void

    .line 77
    :cond_1
    const-string v2, "CameraOrientationEvtMgr"

    const-string v3, "using OrientationEventListener of android"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v2, Lcom/sec/android/app/camera/util/CameraOrientationEventManager$1;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/camera/util/CameraOrientationEventManager$1;-><init>(Lcom/sec/android/app/camera/util/CameraOrientationEventManager;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/util/CameraOrientationEventManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/util/CameraOrientationEventManager;

    .prologue
    .line 38
    iget v0, p0, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mLastOrientation:I

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/camera/util/CameraOrientationEventManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/util/CameraOrientationEventManager;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mLastOrientation:I

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/util/CameraOrientationEventManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/util/CameraOrientationEventManager;
    .param p1, "x1"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->notifyOrientationChanged(I)V

    return-void
.end method

.method private convertSemContextOrientationToDegree(I)I
    .locals 1
    .param p1, "sContextOrientation"    # I

    .prologue
    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, "orientation":I
    packed-switch p1, :pswitch_data_0

    .line 201
    :goto_0
    return v0

    .line 186
    :pswitch_0
    const/4 v0, -0x1

    .line 187
    goto :goto_0

    .line 189
    :pswitch_1
    const/4 v0, 0x0

    .line 190
    goto :goto_0

    .line 192
    :pswitch_2
    const/16 v0, 0x10e

    .line 193
    goto :goto_0

    .line 195
    :pswitch_3
    const/16 v0, 0xb4

    .line 196
    goto :goto_0

    .line 198
    :pswitch_4
    const/16 v0, 0x5a

    goto :goto_0

    .line 184
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/app/camera/util/CameraOrientationEventManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    sget-object v1, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 96
    :try_start_0
    sget-object v0, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mInstance:Lcom/sec/android/app/camera/util/CameraOrientationEventManager;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mInstance:Lcom/sec/android/app/camera/util/CameraOrientationEventManager;

    .line 99
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mInstance:Lcom/sec/android/app/camera/util/CameraOrientationEventManager;

    monitor-exit v1

    return-object v0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private notifyOrientationChanged(I)V
    .locals 4
    .param p1, "orientation"    # I

    .prologue
    .line 210
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 211
    const-string v1, "CameraOrientationEvtMgr"

    const-string v2, "notifyOrientationChanged - ORIENTATION_UNKNOWN"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :goto_0
    return-void

    .line 214
    :cond_0
    iput p1, p0, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mLastOrientation:I

    .line 215
    iget-object v2, p0, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mListenerList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 216
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/util/CameraOrientationEventManager$CameraOrientationEventListener;

    .line 217
    .local v0, "listener":Lcom/sec/android/app/camera/util/CameraOrientationEventManager$CameraOrientationEventListener;
    iget v3, p0, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mLastOrientation:I

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/util/CameraOrientationEventManager$CameraOrientationEventListener;->onCameraOrientationChanged(I)V

    goto :goto_1

    .line 219
    .end local v0    # "listener":Lcom/sec/android/app/camera/util/CameraOrientationEventManager$CameraOrientationEventListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private roundOrientation(I)I
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 237
    const/4 v0, 0x0

    .line 239
    .local v0, "newOrientation":I
    const/16 v1, 0x131

    if-le v1, p1, :cond_0

    const/16 v1, 0x37

    if-ge p1, v1, :cond_2

    .line 240
    :cond_0
    const/4 v0, 0x0

    .line 249
    :cond_1
    :goto_0
    return v0

    .line 241
    :cond_2
    const/16 v1, 0x23

    if-gt v1, p1, :cond_3

    const/16 v1, 0x91

    if-ge p1, v1, :cond_3

    .line 242
    const/16 v0, 0x5a

    goto :goto_0

    .line 243
    :cond_3
    const/16 v1, 0x7d

    if-gt v1, p1, :cond_4

    const/16 v1, 0xeb

    if-ge p1, v1, :cond_4

    .line 244
    const/16 v0, 0xb4

    goto :goto_0

    .line 245
    :cond_4
    const/16 v1, 0xd7

    if-gt v1, p1, :cond_1

    const/16 v1, 0x145

    if-ge p1, v1, :cond_1

    .line 246
    const/16 v0, 0x10e

    goto :goto_0
.end method

.method private setSemContextListener(Lcom/samsung/android/hardware/context/SemContextListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/hardware/context/SemContextListener;

    .prologue
    .line 258
    const-string v0, "CameraOrientationEvtMgr"

    const-string v1, "setSemContextListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iput-object p1, p0, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mSemContextListener:Lcom/samsung/android/hardware/context/SemContextListener;

    .line 260
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 3

    .prologue
    .line 107
    const-string v0, "CameraOrientationEvtMgr"

    const-string v1, "orientation listener disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-boolean v0, p0, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mIsSemContextListenerAvailable:Z

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mSemContextListener:Lcom/samsung/android/hardware/context/SemContextListener;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    .line 113
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mLastOrientation:I

    .line 114
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    goto :goto_0
.end method

.method public enable()V
    .locals 3

    .prologue
    .line 120
    const-string v0, "CameraOrientationEvtMgr"

    const-string v1, "orientation listener enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-boolean v0, p0, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mIsSemContextListenerAvailable:Z

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mSemContextListener:Lcom/samsung/android/hardware/context/SemContextListener;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;I)Z

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_0
.end method

.method public isSemContextOrientationEventListenerAvailable()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mIsSemContextListenerAvailable:Z

    return v0
.end method

.method public onSemContextChanged(Lcom/samsung/android/hardware/context/SemContextEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/samsung/android/hardware/context/SemContextEvent;

    .prologue
    .line 139
    iget-object v3, p1, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    .line 141
    .local v3, "scontext":Lcom/samsung/android/hardware/context/SemContext;
    invoke-virtual {v3}, Lcom/samsung/android/hardware/context/SemContext;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 155
    :goto_0
    return-void

    .line 145
    :pswitch_0
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getAutoRotationContext()Lcom/samsung/android/hardware/context/SemContextAutoRotation;

    move-result-object v1

    .line 146
    .local v1, "autoRotation":Lcom/samsung/android/hardware/context/SemContextAutoRotation;
    invoke-virtual {v1}, Lcom/samsung/android/hardware/context/SemContextAutoRotation;->getAngle()I

    move-result v0

    .line 147
    .local v0, "angle":I
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->convertSemContextOrientationToDegree(I)I

    move-result v2

    .line 148
    .local v2, "newOrientation":I
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->notifyOrientationChanged(I)V

    goto :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public registerListener(Lcom/sec/android/app/camera/util/CameraOrientationEventManager$CameraOrientationEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/android/app/camera/util/CameraOrientationEventManager$CameraOrientationEventListener;

    .prologue
    .line 163
    iget v0, p0, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mLastOrientation:I

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/util/CameraOrientationEventManager$CameraOrientationEventListener;->onCameraOrientationChanged(I)V

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    return-void
.end method

.method public unregisterListener(Lcom/sec/android/app/camera/util/CameraOrientationEventManager$CameraOrientationEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/android/app/camera/util/CameraOrientationEventManager$CameraOrientationEventListener;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/util/CameraOrientationEventManager;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 174
    return-void
.end method
