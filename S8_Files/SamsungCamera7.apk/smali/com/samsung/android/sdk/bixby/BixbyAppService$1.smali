.class Lcom/samsung/android/sdk/bixby/BixbyAppService$1;
.super Ljava/lang/Object;
.source "BixbyAppService.java"

# interfaces
.implements Lcom/samsung/android/sdk/bixby/BixbyApi$OnResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/bixby/BixbyAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/bixby/BixbyAppService;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/bixby/BixbyAppService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/sdk/bixby/BixbyAppService;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService$1;->this$0:Lcom/samsung/android/sdk/bixby/BixbyAppService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 123
    # getter for: Lcom/samsung/android/sdk/bixby/BixbyAppService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BixbyAppService onResponse "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v2, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService$1;->this$0:Lcom/samsung/android/sdk/bixby/BixbyAppService;

    # getter for: Lcom/samsung/android/sdk/bixby/BixbyAppService;->mCallbackToBa:Lcom/samsung/android/bixby/agent/IBixbyAgentAppServiceCallback;
    invoke-static {v2}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->access$100(Lcom/samsung/android/sdk/bixby/BixbyAppService;)Lcom/samsung/android/bixby/agent/IBixbyAgentAppServiceCallback;

    move-result-object v2

    if-nez v2, :cond_0

    .line 125
    # getter for: Lcom/samsung/android/sdk/bixby/BixbyAppService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "No Bixby Agent response callback method registered."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :goto_0
    return-void

    .line 130
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService$1;->this$0:Lcom/samsung/android/sdk/bixby/BixbyAppService;

    # invokes: Lcom/samsung/android/sdk/bixby/BixbyAppService;->handleResponseCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, p1, p2}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->access$200(Lcom/samsung/android/sdk/bixby/BixbyAppService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "jsonResponse":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 132
    # getter for: Lcom/samsung/android/sdk/bixby/BixbyAppService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to handle response command to Bixby Agent."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    .end local v1    # "jsonResponse":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/samsung/android/sdk/bixby/BixbyAppService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to send command to Bixby Agent."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 136
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "jsonResponse":Ljava/lang/String;
    :cond_1
    :try_start_1
    # getter for: Lcom/samsung/android/sdk/bixby/BixbyAppService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "jsonResponse:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v2, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService$1;->this$0:Lcom/samsung/android/sdk/bixby/BixbyAppService;

    # getter for: Lcom/samsung/android/sdk/bixby/BixbyAppService;->mCallbackToBa:Lcom/samsung/android/bixby/agent/IBixbyAgentAppServiceCallback;
    invoke-static {v2}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->access$100(Lcom/samsung/android/sdk/bixby/BixbyAppService;)Lcom/samsung/android/bixby/agent/IBixbyAgentAppServiceCallback;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/samsung/android/bixby/agent/IBixbyAgentAppServiceCallback;->onResponse(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
