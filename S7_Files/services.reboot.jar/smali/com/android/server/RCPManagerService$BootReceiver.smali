.class public Lcom/android/server/RCPManagerService$BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RCPManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/RCPManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BootReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/RCPManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/RCPManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/RCPManagerService;

    .prologue
    .line 1238
    iput-object p1, p0, Lcom/android/server/RCPManagerService$BootReceiver;->this$0:Lcom/android/server/RCPManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1242
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1243
    invoke-static {}, Lcom/android/server/RCPManagerService;->-get2()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "ACTION_BOOT_COMPLETED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    :try_start_0
    invoke-static {}, Lcom/android/server/RCPManagerService;->-get2()Ljava/lang/String;

    move-result-object v5

    .line 1246
    const-string/jumbo v6, " BootReceiver : calling scanAndStartRCPProxy ACTION_BOOT_COMPLETED "

    .line 1245
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    iget-object v5, p0, Lcom/android/server/RCPManagerService$BootReceiver;->this$0:Lcom/android/server/RCPManagerService;

    iget-object v5, v5, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    .line 1248
    const-string/jumbo v6, "persona"

    .line 1247
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/SemPersonaManager;

    .line 1249
    .local v4, "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    if-eqz v4, :cond_0

    .line 1251
    invoke-static {}, Lcom/android/server/RCPManagerService;->-get1()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1250
    invoke-virtual {v4, v5}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonasForUser(I)Ljava/util/List;

    move-result-object v3

    .line 1252
    .local v3, "personaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    invoke-static {}, Lcom/android/server/RCPManagerService;->-get2()Ljava/lang/String;

    move-result-object v5

    .line 1253
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "BootReceiver.onReceive(): Starting RCP Proxy for user = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1252
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    if-eqz v3, :cond_0

    .line 1256
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 1257
    iget-object v5, p0, Lcom/android/server/RCPManagerService$BootReceiver;->this$0:Lcom/android/server/RCPManagerService;

    invoke-static {}, Lcom/android/server/RCPManagerService;->-get1()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/RCPManagerService;->scanAndStartRCPProxy(I)V

    .line 1258
    iget-object v5, p0, Lcom/android/server/RCPManagerService$BootReceiver;->this$0:Lcom/android/server/RCPManagerService;

    .line 1259
    const-string/jumbo v6, "com.sec.knox.bridge.receiver.ACTION_USER_SWITCHED"

    .line 1260
    invoke-static {}, Lcom/android/server/RCPManagerService;->-get1()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1258
    invoke-static {v5, v6, v7}, Lcom/android/server/RCPManagerService;->-wrap7(Lcom/android/server/RCPManagerService;Ljava/lang/String;I)V

    .line 1262
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "mPersonaInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaInfo;

    .line 1263
    .local v1, "mPersonaInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    iget-object v5, p0, Lcom/android/server/RCPManagerService$BootReceiver;->this$0:Lcom/android/server/RCPManagerService;

    iget v6, v1, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v5, v6}, Lcom/android/server/RCPManagerService;->scanAndStartRCPProxy(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1268
    .end local v1    # "mPersonaInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    .end local v2    # "mPersonaInfo$iterator":Ljava/util/Iterator;
    .end local v3    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    .end local v4    # "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    :catch_0
    move-exception v0

    .line 1269
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/RCPManagerService;->-get2()Ljava/lang/String;

    move-result-object v5

    .line 1270
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " BootReceiver : Exception while scanAndStartRCPProxy() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1271
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 1270
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1269
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method
