.class public Lcom/android/launcher3/appssearch/UpdateCheckReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UpdateCheckReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 15
    const-string v1, "Receiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update check receiver start : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    new-instance v0, Lcom/android/launcher3/appssearch/UpdateCheckThread;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1, v4, v4}, Lcom/android/launcher3/appssearch/UpdateCheckThread;-><init>(Landroid/content/Context;ZLjava/lang/String;Lcom/android/launcher3/allapps/AlphabeticalAppsList;)V

    .line 17
    .local v0, "thread":Lcom/android/launcher3/appssearch/UpdateCheckThread;
    invoke-virtual {v0}, Lcom/android/launcher3/appssearch/UpdateCheckThread;->start()V

    .line 18
    return-void
.end method
