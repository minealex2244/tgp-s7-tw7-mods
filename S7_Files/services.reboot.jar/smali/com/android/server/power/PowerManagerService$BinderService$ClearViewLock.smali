.class Lcom/android/server/power/PowerManagerService$BinderService$ClearViewLock;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService$BinderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClearViewLock"
.end annotation


# instance fields
.field binder:Landroid/os/IBinder;

.field final synthetic this$1:Lcom/android/server/power/PowerManagerService$BinderService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService$BinderService;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "this$1"    # Lcom/android/server/power/PowerManagerService$BinderService;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 6675
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$BinderService$ClearViewLock;->this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    .line 6676
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6677
    iput-object p2, p0, Lcom/android/server/power/PowerManagerService$BinderService$ClearViewLock;->binder:Landroid/os/IBinder;

    .line 6679
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p2, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6675
    :goto_0
    return-void

    .line 6680
    :catch_0
    move-exception v0

    .line 6681
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$BinderService$ClearViewLock;->binderDied()V

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 6685
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService$ClearViewLock;->this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get34(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 6686
    :try_start_0
    const-string/jumbo v0, "PowerManagerService"

    const-string/jumbo v2, "ClearViewLock : binderDied"

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6687
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService$ClearViewLock;->this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->-set2(Lcom/android/server/power/PowerManagerService;I)I

    .line 6688
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService$ClearViewLock;->this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->-set3(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 6689
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService$ClearViewLock;->this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService$BinderService;->-set0(Lcom/android/server/power/PowerManagerService$BinderService;Lcom/android/server/power/PowerManagerService$BinderService$ClearViewLock;)Lcom/android/server/power/PowerManagerService$BinderService$ClearViewLock;

    .line 6690
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService$ClearViewLock;->this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    iget v2, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 6691
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService$ClearViewLock;->this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 6684
    return-void

    .line 6685
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method