.class Lcom/samsung/android/settings/notification/NotificationsSubSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "NotificationsSubSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/NotificationsSubSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/NotificationsSubSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/NotificationsSubSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/notification/NotificationsSubSettings;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings$1;->this$0:Lcom/samsung/android/settings/notification/NotificationsSubSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 143
    const-string/jumbo v0, "NotificationsSubSettings"

    const-string/jumbo v1, "mAoBleChangeReceiver called"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    if-nez p2, :cond_0

    .line 145
    return-void

    .line 142
    :cond_0
    return-void
.end method
