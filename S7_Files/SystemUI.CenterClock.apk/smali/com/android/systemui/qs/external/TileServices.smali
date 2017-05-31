.class public Lcom/android/systemui/qs/external/TileServices;
.super Landroid/service/quicksettings/IQSService$Stub;
.source "TileServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/external/TileServices$1;,
        Lcom/android/systemui/qs/external/TileServices$2;
    }
.end annotation


# static fields
.field private static final SERVICE_SORT:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/systemui/qs/external/TileServiceManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

.field private final mMainHandler:Landroid/os/Handler;

.field private mMaxBound:I

.field private final mRequestListeningReceiver:Landroid/content/BroadcastReceiver;

.field private final mServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/android/systemui/qs/external/CustomTile;",
            "Lcom/android/systemui/qs/external/TileServiceManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mTiles:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/systemui/qs/external/CustomTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mTokenMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/systemui/qs/external/CustomTile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/external/TileServices;)Lcom/android/systemui/statusbar/phone/QSTileHost;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/external/TileServices;Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->requestListening(Landroid/content/ComponentName;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 367
    new-instance v0, Lcom/android/systemui/qs/external/TileServices$2;

    invoke-direct {v0}, Lcom/android/systemui/qs/external/TileServices$2;-><init>()V

    .line 366
    sput-object v0, Lcom/android/systemui/qs/external/TileServices;->SERVICE_SORT:Ljava/util/Comparator;

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/QSTileHost;Landroid/os/Looper;)V
    .locals 4
    .param p1, "host"    # Lcom/android/systemui/statusbar/phone/QSTileHost;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/service/quicksettings/IQSService$Stub;-><init>()V

    .line 56
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    .line 57
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mTiles:Landroid/util/ArrayMap;

    .line 58
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mTokenMap:Landroid/util/ArrayMap;

    .line 64
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/systemui/qs/external/TileServices;->mMaxBound:I

    .line 356
    new-instance v0, Lcom/android/systemui/qs/external/TileServices$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/external/TileServices$1;-><init>(Lcom/android/systemui/qs/external/TileServices;)V

    iput-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mRequestListeningReceiver:Landroid/content/BroadcastReceiver;

    .line 67
    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServices;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    .line 68
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mContext:Landroid/content/Context;

    .line 69
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServices;->mRequestListeningReceiver:Landroid/content/BroadcastReceiver;

    .line 70
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.service.quicksettings.action.REQUEST_LISTENING"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mHandler:Landroid/os/Handler;

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mMainHandler:Landroid/os/Handler;

    .line 66
    return-void
.end method

.method private getTileForComponent(Landroid/content/ComponentName;)Lcom/android/systemui/qs/external/CustomTile;
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 351
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mTiles:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/external/CustomTile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTile;
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 323
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 324
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mTokenMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/external/CustomTile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 323
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private requestListening(Landroid/content/ComponentName;)V
    .locals 7
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 161
    iget-object v4, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 162
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->getTileForComponent(Landroid/content/ComponentName;)Lcom/android/systemui/qs/external/CustomTile;

    move-result-object v0

    .line 163
    .local v0, "customTile":Lcom/android/systemui/qs/external/CustomTile;
    if-nez v0, :cond_0

    .line 164
    const-string/jumbo v3, "TileServices"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Couldn\'t find tile for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 165
    return-void

    .line 167
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/external/TileServiceManager;

    .line 168
    .local v2, "service":Lcom/android/systemui/qs/external/TileServiceManager;
    invoke-virtual {v2}, Lcom/android/systemui/qs/external/TileServiceManager;->isActiveTile()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    monitor-exit v4

    .line 169
    return-void

    .line 171
    :cond_1
    const/4 v3, 0x1

    :try_start_2
    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindRequested(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    :try_start_3
    invoke-virtual {v2}, Lcom/android/systemui/qs/external/TileServiceManager;->getTileService()Landroid/service/quicksettings/IQSTileService;

    move-result-object v3

    invoke-interface {v3}, Landroid/service/quicksettings/IQSTileService;->onStartListening()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit v4

    .line 160
    return-void

    .line 161
    .end local v0    # "customTile":Lcom/android/systemui/qs/external/CustomTile;
    .end local v2    # "service":Lcom/android/systemui/qs/external/TileServiceManager;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 174
    .restart local v0    # "customTile":Lcom/android/systemui/qs/external/CustomTile;
    .restart local v2    # "service":Lcom/android/systemui/qs/external/TileServiceManager;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private verifyCaller(Lcom/android/systemui/qs/external/CustomTile;)V
    .locals 5
    .param p1, "tile"    # Lcom/android/systemui/qs/external/CustomTile;

    .prologue
    .line 149
    :try_start_0
    invoke-virtual {p1}, Lcom/android/systemui/qs/external/CustomTile;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/qs/external/TileServices;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 151
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 150
    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v2

    .line 152
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    if-eq v3, v2, :cond_0

    .line 153
    new-instance v3, Ljava/lang/SecurityException;

    const-string/jumbo v4, "Component outside caller\'s uid"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "uid":I
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 147
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v2    # "uid":I
    :cond_0
    return-void
.end method


# virtual methods
.method public freeService(Lcom/android/systemui/qs/external/CustomTile;Lcom/android/systemui/qs/external/TileServiceManager;)V
    .locals 4
    .param p1, "tile"    # Lcom/android/systemui/qs/external/CustomTile;
    .param p2, "service"    # Lcom/android/systemui/qs/external/TileServiceManager;

    .prologue
    .line 99
    iget-object v2, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 100
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p2, v1}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindAllowed(Z)V

    .line 101
    invoke-virtual {p2}, Lcom/android/systemui/qs/external/TileServiceManager;->handleDestroy()V

    .line 102
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServices;->mTokenMap:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Lcom/android/systemui/qs/external/TileServiceManager;->getToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServices;->mTiles:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/systemui/qs/external/CustomTile;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-virtual {p1}, Lcom/android/systemui/qs/external/CustomTile;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "slot":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServices;->mMainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/qs/external/TileServices$3;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/qs/external/TileServices$3;-><init>(Lcom/android/systemui/qs/external/TileServices;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 98
    return-void

    .line 99
    .end local v0    # "slot":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getHost()Lcom/android/systemui/statusbar/phone/QSTileHost;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    return-object v0
.end method

.method public getTile(Landroid/os/IBinder;)Landroid/service/quicksettings/Tile;
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 293
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTile;

    move-result-object v0

    .line 294
    .local v0, "customTile":Lcom/android/systemui/qs/external/CustomTile;
    if-eqz v0, :cond_0

    .line 295
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/external/TileServices;->verifyCaller(Lcom/android/systemui/qs/external/CustomTile;)V

    .line 296
    invoke-virtual {v0}, Lcom/android/systemui/qs/external/CustomTile;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v1

    return-object v1

    .line 298
    :cond_0
    return-object v1
.end method

.method public getTileWrapper(Lcom/android/systemui/qs/external/CustomTile;)Lcom/android/systemui/qs/external/TileServiceManager;
    .locals 5
    .param p1, "tile"    # Lcom/android/systemui/qs/external/CustomTile;

    .prologue
    .line 84
    invoke-virtual {p1}, Lcom/android/systemui/qs/external/CustomTile;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 85
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {p1}, Lcom/android/systemui/qs/external/CustomTile;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/qs/external/TileServices;->onCreateTileService(Landroid/content/ComponentName;Landroid/service/quicksettings/Tile;)Lcom/android/systemui/qs/external/TileServiceManager;

    move-result-object v1

    .line 86
    .local v1, "service":Lcom/android/systemui/qs/external/TileServiceManager;
    iget-object v3, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 87
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v2, p0, Lcom/android/systemui/qs/external/TileServices;->mTiles:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v2, p0, Lcom/android/systemui/qs/external/TileServices;->mTokenMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Lcom/android/systemui/qs/external/TileServiceManager;->getToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 91
    return-object v1

    .line 86
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public isLocked()Z
    .locals 2

    .prologue
    .line 312
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServices;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v0

    .line 313
    .local v0, "keyguardMonitor":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v1

    return v1
.end method

.method public isSecure()Z
    .locals 2

    .prologue
    .line 318
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServices;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v0

    .line 319
    .local v0, "keyguardMonitor":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onCreateTileService(Landroid/content/ComponentName;Landroid/service/quicksettings/Tile;)Lcom/android/systemui/qs/external/TileServiceManager;
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "tile"    # Landroid/service/quicksettings/Tile;

    .prologue
    .line 95
    new-instance v0, Lcom/android/systemui/qs/external/TileServiceManager;

    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServices;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/systemui/qs/external/TileServiceManager;-><init>(Lcom/android/systemui/qs/external/TileServices;Landroid/os/Handler;Landroid/content/ComponentName;Landroid/service/quicksettings/Tile;)V

    return-object v0
.end method

.method public onDialogHidden(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTile;

    move-result-object v0

    .line 236
    .local v0, "customTile":Lcom/android/systemui/qs/external/CustomTile;
    if-eqz v0, :cond_0

    .line 237
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/external/TileServices;->verifyCaller(Lcom/android/systemui/qs/external/CustomTile;)V

    .line 238
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/external/TileServiceManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/external/TileServiceManager;->setShowingDialog(Z)V

    .line 239
    invoke-virtual {v0}, Lcom/android/systemui/qs/external/CustomTile;->onDialogHidden()V

    .line 234
    :cond_0
    return-void
.end method

.method public onShowDialog(Landroid/os/IBinder;)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTile;

    move-result-object v0

    .line 216
    .local v0, "customTile":Lcom/android/systemui/qs/external/CustomTile;
    if-eqz v0, :cond_0

    .line 217
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/external/TileServices;->verifyCaller(Lcom/android/systemui/qs/external/CustomTile;)V

    .line 218
    invoke-virtual {v0}, Lcom/android/systemui/qs/external/CustomTile;->onDialogShown()V

    .line 220
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServices;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/qs/external/TileServices$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/external/TileServices$4;-><init>(Lcom/android/systemui/qs/external/TileServices;)V

    .line 225
    const-wide/16 v4, 0x1f4

    .line 220
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 229
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/external/TileServiceManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/external/TileServiceManager;->setShowingDialog(Z)V

    .line 214
    :cond_0
    return-void
.end method

.method public onStartActivity(Landroid/os/IBinder;)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 245
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTile;

    move-result-object v0

    .line 246
    .local v0, "customTile":Lcom/android/systemui/qs/external/CustomTile;
    if-eqz v0, :cond_0

    .line 247
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/external/TileServices;->verifyCaller(Lcom/android/systemui/qs/external/CustomTile;)V

    .line 249
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServices;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/qs/external/TileServices$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/external/TileServices$5;-><init>(Lcom/android/systemui/qs/external/TileServices;)V

    .line 254
    const-wide/16 v4, 0x1f4

    .line 249
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 244
    :cond_0
    return-void
.end method

.method public onStartSuccessful(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTile;

    move-result-object v0

    .line 200
    .local v0, "customTile":Lcom/android/systemui/qs/external/CustomTile;
    if-eqz v0, :cond_1

    .line 201
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/external/TileServices;->verifyCaller(Lcom/android/systemui/qs/external/CustomTile;)V

    .line 202
    iget-object v3, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 203
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/external/TileServiceManager;

    .line 205
    .local v1, "tileServiceManager":Lcom/android/systemui/qs/external/TileServiceManager;
    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {v1}, Lcom/android/systemui/qs/external/TileServiceManager;->clearPendingBind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    .line 209
    invoke-virtual {v0}, Lcom/android/systemui/qs/external/CustomTile;->refreshState()V

    .line 198
    .end local v1    # "tileServiceManager":Lcom/android/systemui/qs/external/TileServiceManager;
    :cond_1
    return-void

    .line 202
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public recalculateBindAllowance()V
    .locals 7

    .prologue
    .line 122
    iget-object v6, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    monitor-enter v6

    .line 123
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v4, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/qs/external/TileServiceManager;>;"
    monitor-exit v6

    .line 125
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 126
    .local v0, "N":I
    iget v5, p0, Lcom/android/systemui/qs/external/TileServices;->mMaxBound:I

    if-le v0, v5, :cond_1

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 129
    .local v2, "currentTime":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 130
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-virtual {v5, v2, v3}, Lcom/android/systemui/qs/external/TileServiceManager;->calculateBindPriority(J)V

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "currentTime":J
    .end local v4    # "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/qs/external/TileServiceManager;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 133
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v2    # "currentTime":J
    .restart local v4    # "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/qs/external/TileServiceManager;>;"
    :cond_0
    sget-object v5, Lcom/android/systemui/qs/external/TileServices;->SERVICE_SORT:Ljava/util/Comparator;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 137
    .end local v1    # "i":I
    .end local v2    # "currentTime":J
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget v5, p0, Lcom/android/systemui/qs/external/TileServices;->mMaxBound:I

    if-ge v1, v5, :cond_2

    if-ge v1, v0, :cond_2

    .line 138
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/external/TileServiceManager;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindAllowed(Z)V

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 141
    :cond_2
    :goto_2
    if-ge v1, v0, :cond_3

    .line 142
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/external/TileServiceManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindAllowed(Z)V

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 120
    :cond_3
    return-void
.end method

.method public semFireToggleStateChanged(Landroid/os/IBinder;ZZ)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "state"    # Z
    .param p3, "enabled"    # Z

    .prologue
    .line 339
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTile;

    move-result-object v0

    .line 340
    .local v0, "customTile":Lcom/android/systemui/qs/external/CustomTile;
    const-string/jumbo v1, "TileServices"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "semFireToggleStateChanged : customTile =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const-string/jumbo v1, "TileServices"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "semFireToggleStateChanged : state =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    if-eqz v0, :cond_0

    .line 343
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/external/TileServices;->verifyCaller(Lcom/android/systemui/qs/external/CustomTile;)V

    .line 344
    invoke-virtual {v0, p2}, Lcom/android/systemui/qs/external/CustomTile;->fireToggleStateChanged(Z)V

    .line 345
    if-eqz p3, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/external/CustomTile;->fireDisableStateChanged(Z)V

    .line 338
    :cond_0
    return-void

    .line 345
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public semUpdateDetailView(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 330
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTile;

    move-result-object v0

    .line 331
    .local v0, "customTile":Lcom/android/systemui/qs/external/CustomTile;
    const-string/jumbo v1, "TileServices"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "semUpdateDetailView : customTile =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    if-eqz v0, :cond_0

    .line 333
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/external/TileServices;->verifyCaller(Lcom/android/systemui/qs/external/CustomTile;)V

    .line 334
    invoke-virtual {v0}, Lcom/android/systemui/qs/external/CustomTile;->updateDetail()V

    .line 329
    :cond_0
    return-void
.end method

.method public startUnlockAndRun(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 303
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTile;

    move-result-object v0

    .line 304
    .local v0, "customTile":Lcom/android/systemui/qs/external/CustomTile;
    if-eqz v0, :cond_0

    .line 305
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/external/TileServices;->verifyCaller(Lcom/android/systemui/qs/external/CustomTile;)V

    .line 306
    invoke-virtual {v0}, Lcom/android/systemui/qs/external/CustomTile;->startUnlockAndRun()V

    .line 302
    :cond_0
    return-void
.end method

.method public updateQsTile(Landroid/service/quicksettings/Tile;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "tile"    # Landroid/service/quicksettings/Tile;
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 181
    invoke-direct {p0, p2}, Lcom/android/systemui/qs/external/TileServices;->getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTile;

    move-result-object v0

    .line 182
    .local v0, "customTile":Lcom/android/systemui/qs/external/CustomTile;
    if-eqz v0, :cond_1

    .line 183
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/external/TileServices;->verifyCaller(Lcom/android/systemui/qs/external/CustomTile;)V

    .line 184
    iget-object v3, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 185
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/external/TileServiceManager;

    .line 187
    .local v1, "tileServiceManager":Lcom/android/systemui/qs/external/TileServiceManager;
    if-eqz v1, :cond_0

    .line 188
    invoke-virtual {v1}, Lcom/android/systemui/qs/external/TileServiceManager;->clearPendingBind()V

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/android/systemui/qs/external/TileServiceManager;->setLastUpdate(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    .line 192
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/external/CustomTile;->updateState(Landroid/service/quicksettings/Tile;)V

    .line 193
    invoke-virtual {v0}, Lcom/android/systemui/qs/external/CustomTile;->refreshState()V

    .line 180
    .end local v1    # "tileServiceManager":Lcom/android/systemui/qs/external/TileServiceManager;
    :cond_1
    return-void

    .line 184
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public updateStatusIcon(Landroid/os/IBinder;Landroid/graphics/drawable/Icon;Ljava/lang/String;)V
    .locals 11
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "icon"    # Landroid/graphics/drawable/Icon;
    .param p3, "contentDescription"    # Ljava/lang/String;

    .prologue
    .line 263
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTile;

    move-result-object v8

    .line 264
    .local v8, "customTile":Lcom/android/systemui/qs/external/CustomTile;
    if-eqz v8, :cond_0

    .line 265
    invoke-direct {p0, v8}, Lcom/android/systemui/qs/external/TileServices;->verifyCaller(Lcom/android/systemui/qs/external/CustomTile;)V

    .line 267
    :try_start_0
    invoke-virtual {v8}, Lcom/android/systemui/qs/external/CustomTile;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    .line 268
    .local v7, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 269
    .local v2, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/qs/external/TileServices;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 270
    .local v1, "userHandle":Landroid/os/UserHandle;
    iget-object v3, p0, Lcom/android/systemui/qs/external/TileServices;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 271
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 270
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 272
    .local v10, "info":Landroid/content/pm/PackageInfo;
    iget-object v3, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 273
    if-eqz p2, :cond_1

    .line 274
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;)V

    .line 277
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/external/TileServices;->mMainHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/systemui/qs/external/TileServices$6;

    invoke-direct {v4, p0, v7, v0}, Lcom/android/systemui/qs/external/TileServices$6;-><init>(Lcom/android/systemui/qs/external/TileServices;Landroid/content/ComponentName;Lcom/android/internal/statusbar/StatusBarIcon;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    .end local v1    # "userHandle":Landroid/os/UserHandle;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v7    # "componentName":Landroid/content/ComponentName;
    .end local v10    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_1
    return-void

    .line 276
    .restart local v1    # "userHandle":Landroid/os/UserHandle;
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v7    # "componentName":Landroid/content/ComponentName;
    .restart local v10    # "info":Landroid/content/pm/PackageInfo;
    :cond_1
    const/4 v0, 0x0

    .local v0, "statusIcon":Lcom/android/internal/statusbar/StatusBarIcon;
    goto :goto_0

    .line 286
    .end local v0    # "statusIcon":Lcom/android/internal/statusbar/StatusBarIcon;
    .end local v1    # "userHandle":Landroid/os/UserHandle;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v7    # "componentName":Landroid/content/ComponentName;
    .end local v10    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v9

    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1
.end method
