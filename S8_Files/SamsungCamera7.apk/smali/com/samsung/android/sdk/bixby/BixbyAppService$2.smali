.class Lcom/samsung/android/sdk/bixby/BixbyAppService$2;
.super Lcom/samsung/android/bixby/agent/IBixbyAgentAppService$Stub;
.source "BixbyAppService.java"


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
    .line 215
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService$2;->this$0:Lcom/samsung/android/sdk/bixby/BixbyAppService;

    invoke-direct {p0}, Lcom/samsung/android/bixby/agent/IBixbyAgentAppService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendCommand(Ljava/lang/String;)V
    .locals 3
    .param p1, "jsonCommandFromBa"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 219
    # getter for: Lcom/samsung/android/sdk/bixby/BixbyAppService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BixbyAppService Command From EM: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService$2;->this$0:Lcom/samsung/android/sdk/bixby/BixbyAppService;

    # invokes: Lcom/samsung/android/sdk/bixby/BixbyAppService;->checkSenderIdentity()Z
    invoke-static {v0}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->access$300(Lcom/samsung/android/sdk/bixby/BixbyAppService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    # getter for: Lcom/samsung/android/sdk/bixby/BixbyAppService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unauthorized access detected!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService$2;->this$0:Lcom/samsung/android/sdk/bixby/BixbyAppService;

    # getter for: Lcom/samsung/android/sdk/bixby/BixbyAppService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->access$400(Lcom/samsung/android/sdk/bixby/BixbyAppService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;

    invoke-direct {v1, p1}, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setCallback(Lcom/samsung/android/bixby/agent/IBixbyAgentAppServiceCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/samsung/android/bixby/agent/IBixbyAgentAppServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 230
    # getter for: Lcom/samsung/android/sdk/bixby/BixbyAppService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BixbyAppService setCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService$2;->this$0:Lcom/samsung/android/sdk/bixby/BixbyAppService;

    # invokes: Lcom/samsung/android/sdk/bixby/BixbyAppService;->checkSenderIdentity()Z
    invoke-static {v0}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->access$300(Lcom/samsung/android/sdk/bixby/BixbyAppService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    # getter for: Lcom/samsung/android/sdk/bixby/BixbyAppService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unauthorized access detected!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :goto_0
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService$2;->this$0:Lcom/samsung/android/sdk/bixby/BixbyAppService;

    # setter for: Lcom/samsung/android/sdk/bixby/BixbyAppService;->mCallbackToBa:Lcom/samsung/android/bixby/agent/IBixbyAgentAppServiceCallback;
    invoke-static {v0, p1}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->access$102(Lcom/samsung/android/sdk/bixby/BixbyAppService;Lcom/samsung/android/bixby/agent/IBixbyAgentAppServiceCallback;)Lcom/samsung/android/bixby/agent/IBixbyAgentAppServiceCallback;

    goto :goto_0
.end method
