.class Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnRestart;
.super Ljava/lang/Object;
.source "KnoxVpnEngineService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VpnRestart"
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mProfileName:Ljava/lang/String;

.field private retryIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 4816
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4811
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnRestart;->mProfileName:Ljava/lang/String;

    .line 4812
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnRestart;->mContext:Landroid/content/Context;

    .line 4813
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnRestart;->retryIntent:Landroid/content/Intent;

    .line 4814
    const-string/jumbo v0, "KnoxVpnEngineService"

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnRestart;->TAG:Ljava/lang/String;

    .line 4817
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnRestart;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "VpnRestart init "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4818
    iput-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnRestart;->mProfileName:Ljava/lang/String;

    .line 4819
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnRestart;->mContext:Landroid/content/Context;

    .line 4816
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 4823
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnRestart;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "VpnRestart running "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4824
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnRestart;->retryIntent:Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.knox.intent.action.VPN_RETRY_INTERNAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4825
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnRestart;->retryIntent:Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.PROFILE_NAME_INTERNAL"

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnRestart;->mProfileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4826
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnRestart;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnRestart;->retryIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_GENERIC_VPN"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 4822
    return-void
.end method