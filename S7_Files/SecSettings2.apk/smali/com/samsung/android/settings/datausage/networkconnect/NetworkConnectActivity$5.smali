.class Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$5;
.super Ljava/lang/Object;
.source "NetworkConnectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$5;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 253
    new-instance v2, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$5;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->-get0(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;-><init>(Landroid/content/Context;)V

    .line 254
    .local v2, "utils":Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;
    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->getUsedSubIds()Ljava/util/List;

    move-result-object v1

    .line 255
    .local v1, "usedSubIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 256
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 257
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v3, "warningWhiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "data_warning_app_whitelist_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->putWhiteList(Ljava/util/List;Ljava/lang/String;)V

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 261
    .end local v0    # "i":I
    .end local v3    # "warningWhiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$5;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->-get8(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Landroid/net/NetworkPolicyManager;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$5;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;

    invoke-static {v5}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->-get10(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/NetworkPolicyManager;->setFirewallRuleMobileDataMap(Ljava/util/Map;)V

    .line 262
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$5;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->-get2(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 252
    return-void
.end method
