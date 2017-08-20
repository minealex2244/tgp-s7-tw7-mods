.class Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MPTCPObserver;
.super Landroid/database/ContentObserver;
.source "NetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MPTCPObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 5
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1588
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MPTCPObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .line 1589
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1591
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1592
    const-string/jumbo v3, "mptcp_value_internal"

    const/4 v4, -0x2

    .line 1591
    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-set0(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z

    .line 1593
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshMPTCPIndicator()V

    .line 1594
    const-string/jumbo v0, "NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MPTCPObserver():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get4(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    return-void

    :cond_0
    move v0, v1

    .line 1591
    goto :goto_0
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1598
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MPTCPObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MPTCPObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1599
    const-string/jumbo v4, "mptcp_value_internal"

    const/4 v5, -0x2

    .line 1598
    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-set0(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z

    .line 1600
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MPTCPObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshMPTCPIndicator()V

    .line 1601
    const-string/jumbo v0, "NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MPTCPObserver onChange():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MPTCPObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get4(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    return-void

    :cond_0
    move v0, v1

    .line 1598
    goto :goto_0
.end method
