.class Lcom/android/server/power/PowerManagerService$DozeLock;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DozeLock"
.end annotation


# instance fields
.field binder:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 5027
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$DozeLock;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 5028
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5029
    iput-object p2, p0, Lcom/android/server/power/PowerManagerService$DozeLock;->binder:Landroid/os/IBinder;

    .line 5032
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p2, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5027
    :goto_0
    return-void

    .line 5033
    :catch_0
    move-exception v0

    .line 5034
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$DozeLock;->binderDied()V

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 5038
    const-string/jumbo v0, "PowerManagerService"

    const-string/jumbo v1, "Doze binder is died"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5039
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DozeLock;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->-wrap39(Lcom/android/server/power/PowerManagerService;I)V

    .line 5040
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DozeLock;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-wrap28(Lcom/android/server/power/PowerManagerService;)V

    .line 5037
    return-void
.end method
