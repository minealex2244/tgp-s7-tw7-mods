.class Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$4;
.super Ljava/lang/Object;
.source "Vpn.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->monitorDaemons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .prologue
    .line 2644
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$4;->this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2647
    const-string/jumbo v2, "LegacyVpnRunner"

    const-string/jumbo v3, "stopDeamon Thread started "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2648
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$4;->this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-static {v2}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->-get0(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 2649
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$4;->this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-static {v2}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->-get0(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, v1

    .line 2650
    .local v0, "daemon":Ljava/lang/String;
    const-string/jumbo v2, "charon"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 2651
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$4;->this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-static {v2}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->-get3(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)[Landroid/net/LocalSocket;

    move-result-object v2

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 2652
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$4;->this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-static {v2}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->-get3(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)[Landroid/net/LocalSocket;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v2

    .line 2650
    if-eqz v2, :cond_0

    .line 2653
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$4;->this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-static {v2}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->-get3(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)[Landroid/net/LocalSocket;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2655
    :cond_0
    invoke-static {v0}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 2648
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2646
    .end local v0    # "daemon":Ljava/lang/String;
    :cond_1
    return-void
.end method
