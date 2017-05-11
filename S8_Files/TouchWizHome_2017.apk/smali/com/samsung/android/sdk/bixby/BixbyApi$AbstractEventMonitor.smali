.class public abstract Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;
.super Ljava/lang/Object;
.source "BixbyApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/bixby/BixbyApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractEventMonitor"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPathRuleStarted(Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;)V
    .locals 2
    .param p1, "pri"    # Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;

    .prologue
    .line 289
    # getter for: Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbstractEventMonitor onPathRuleStarted()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return-void
.end method

.method public onServiceBound(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 301
    # getter for: Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbstractEventMonitor onServiceBound()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return-void
.end method

.method public onServiceCreated()V
    .locals 2

    .prologue
    .line 315
    # getter for: Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbstractEventMonitor onServiceCreated()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    return-void
.end method

.method public onServiceDestroyed()V
    .locals 2

    .prologue
    .line 322
    # getter for: Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbstractEventMonitor onServiceDestroyed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    return-void
.end method

.method public onServiceUnbound(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 308
    # getter for: Lcom/samsung/android/sdk/bixby/BixbyApi;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbstractEventMonitor onServiceUnbound()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    return-void
.end method
