.class public Lcom/android/server/pm/PersonaManagerService$ExtSdcardPolicyUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExtSdcardPolicyUpdateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PersonaManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 4876
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$ExtSdcardPolicyUpdateReceiver;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x1

    .line 4880
    const-string/jumbo v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ExtSdcardPolicyUpdateReceiver intent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4881
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "com.sec.knox.container.access.extsdcard"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4883
    const-string/jumbo v6, "source"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 4884
    .local v5, "source":I
    const-string/jumbo v6, "containerId"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 4885
    .local v2, "personaId":I
    const-string/jumbo v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ExtSdcardPolicyUpdateReceiver source- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " and personaId-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4887
    if-eqz v5, :cond_0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 4889
    :cond_0
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$ExtSdcardPolicyUpdateReceiver;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v6, v2}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Lcom/samsung/android/knox/SemPersonaInfo;

    move-result-object v4

    .line 4890
    .local v4, "pi":Lcom/samsung/android/knox/SemPersonaInfo;
    if-eqz v4, :cond_1

    .line 4891
    iget-boolean v6, v4, Lcom/samsung/android/knox/SemPersonaInfo;->canUseExtSdcard:Z

    if-eqz v6, :cond_2

    .line 4892
    const-string/jumbo v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "PersonaManagerService.ExtSdcardPolicyUpdateReceiver pi.canUseExtSdcard="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, v4, Lcom/samsung/android/knox/SemPersonaInfo;->canUseExtSdcard:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " source="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4893
    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 4894
    iput-boolean v9, v4, Lcom/samsung/android/knox/SemPersonaInfo;->needsRestart:Z

    .line 4895
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$ExtSdcardPolicyUpdateReceiver;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v6}, Lcom/android/server/pm/PersonaManagerService;->-get19(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 4896
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$ExtSdcardPolicyUpdateReceiver;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v6, v4}, Lcom/android/server/pm/PersonaManagerService;->-wrap61(Lcom/android/server/pm/PersonaManagerService;Lcom/samsung/android/knox/SemPersonaInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    .line 4898
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$ExtSdcardPolicyUpdateReceiver;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v6, v2}, Lcom/android/server/pm/PersonaManagerService;->-wrap42(Lcom/android/server/pm/PersonaManagerService;I)V

    .line 4899
    const-string/jumbo v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ExtSdcardPolicyUpdateReceiver processed persona "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4878
    .end local v2    # "personaId":I
    .end local v4    # "pi":Lcom/samsung/android/knox/SemPersonaInfo;
    .end local v5    # "source":I
    :cond_1
    :goto_0
    return-void

    .line 4895
    .restart local v2    # "personaId":I
    .restart local v4    # "pi":Lcom/samsung/android/knox/SemPersonaInfo;
    .restart local v5    # "source":I
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 4901
    :cond_2
    const-string/jumbo v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ExtSdcardPolicyUpdateReceiver External sdcard is not enabled for persona"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ". Ignoring restart request."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4904
    .end local v4    # "pi":Lcom/samsung/android/knox/SemPersonaInfo;
    :cond_3
    if-ne v5, v9, :cond_1

    .line 4906
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$ExtSdcardPolicyUpdateReceiver;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v6, v9}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v3

    .line 4907
    .local v3, "personas":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "pInfo$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaInfo;

    .line 4908
    .local v0, "pInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    if-eqz v0, :cond_4

    .line 4909
    iget-boolean v6, v0, Lcom/samsung/android/knox/SemPersonaInfo;->canUseExtSdcard:Z

    if-eqz v6, :cond_5

    .line 4910
    const-string/jumbo v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "PersonaManagerService.ExtSdcardPolicyUpdateReceiver pInfo.canUseExtSdcard="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, v0, Lcom/samsung/android/knox/SemPersonaInfo;->canUseExtSdcard:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " source="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4911
    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 4912
    iput-boolean v9, v0, Lcom/samsung/android/knox/SemPersonaInfo;->needsRestart:Z

    .line 4913
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$ExtSdcardPolicyUpdateReceiver;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v6}, Lcom/android/server/pm/PersonaManagerService;->-get19(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 4914
    :try_start_1
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$ExtSdcardPolicyUpdateReceiver;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v6, v0}, Lcom/android/server/pm/PersonaManagerService;->-wrap61(Lcom/android/server/pm/PersonaManagerService;Lcom/samsung/android/knox/SemPersonaInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v7

    .line 4916
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$ExtSdcardPolicyUpdateReceiver;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget v7, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-static {v6, v7}, Lcom/android/server/pm/PersonaManagerService;->-wrap42(Lcom/android/server/pm/PersonaManagerService;I)V

    .line 4917
    const-string/jumbo v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ExtSdcardPolicyUpdateReceiver processed persona "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4913
    :catchall_1
    move-exception v6

    monitor-exit v7

    throw v6

    .line 4919
    :cond_5
    const-string/jumbo v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ExtSdcardPolicyUpdateReceiver External sdcard is not enabled for persona"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ". Ignoring restart request."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
