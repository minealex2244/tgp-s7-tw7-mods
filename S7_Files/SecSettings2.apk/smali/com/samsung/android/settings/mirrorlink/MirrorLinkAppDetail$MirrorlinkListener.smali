.class Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;
.super Lcom/mirrorlink/android/service/IMirrorlinkListener$Stub;
.source "MirrorLinkAppDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MirrorlinkListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;

    .prologue
    .line 370
    iput-object p1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-direct {p0}, Lcom/mirrorlink/android/service/IMirrorlinkListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;-><init>(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;)V

    return-void
.end method


# virtual methods
.method public notifyRevocationCheckResult(Ljava/lang/String;I)V
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "result"    # I

    .prologue
    const/4 v5, 0x1

    .line 374
    const-string/jumbo v2, "MirrorLinkAppDetail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MirrorlinkListener : notifyRevocationCheckResult() & enabling menu item: result  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    if-ne p2, v5, :cond_1

    .line 378
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-static {v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->-get3(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 379
    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-static {v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->-get5(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;)Lcom/mirrorlink/android/service/IMirrorlinkManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 380
    const/4 v0, 0x0

    .line 381
    .local v0, "appListInfo":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-static {v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->-get5(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;)Lcom/mirrorlink/android/service/IMirrorlinkManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/mirrorlink/android/service/IMirrorlinkManager;->getApplicationElements(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 382
    .local v0, "appListInfo":Landroid/os/Bundle;
    const-string/jumbo v2, "MirrorLinkAppDetail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyRevocationCheckResult() : Bundle Received for the package Name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-static {v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->-get1(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;)Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 385
    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-static {v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->-get1(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;)Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    move-result-object v2

    const-string/jumbo v3, "pkgName"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mAppName:Ljava/lang/String;

    .line 386
    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-static {v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->-get1(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;)Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    move-result-object v2

    const-string/jumbo v3, "EntitiesName"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mEntityName:Ljava/lang/String;

    .line 387
    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-static {v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->-get1(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;)Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    move-result-object v2

    const-string/jumbo v3, "AppStatus"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mStatus:Ljava/lang/String;

    .line 388
    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-static {v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->-get1(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;)Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    move-result-object v2

    const-string/jumbo v3, "NONRESTRICTED"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mNonRestricted:Ljava/lang/String;

    .line 389
    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-static {v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->-get1(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;)Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    move-result-object v2

    const-string/jumbo v3, "RESTRICTED"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mRestricted:Ljava/lang/String;

    .line 390
    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-static {v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->-get1(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;)Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    move-result-object v2

    const-string/jumbo v3, "VALID_DATE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mValidDate:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    .end local v0    # "appListInfo":Landroid/os/Bundle;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-static {v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->-get0(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 402
    :try_start_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "MirrorLinkAppDetailfrom ACMS thread"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 403
    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->-set1(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;Z)Z

    .line 404
    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-static {v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->-get0(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 373
    return-void

    .line 395
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;->this$0:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-static {v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->-get3(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 397
    :catch_0
    move-exception v1

    .line 398
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 401
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method