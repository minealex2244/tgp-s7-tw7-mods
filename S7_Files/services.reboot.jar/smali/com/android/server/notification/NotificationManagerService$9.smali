.class Lcom/android/server/notification/NotificationManagerService$9;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService;->removeEdgeNotificationInternal(IILjava/lang/String;ILandroid/os/Bundle;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;

.field final synthetic val$extra:Landroid/os/Bundle;

.field final synthetic val$id:I

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;ILandroid/os/Bundle;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p2, "val$pkg"    # Ljava/lang/String;
    .param p3, "val$id"    # I
    .param p4, "val$extra"    # Landroid/os/Bundle;
    .param p5, "val$userId"    # I

    .prologue
    .line 3697
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$pkg:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$id:I

    iput-object p4, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$extra:Landroid/os/Bundle;

    iput p5, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 3700
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get13(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$pkg:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$id:I

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$extra:Landroid/os/Bundle;

    iget v4, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$userId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->removeEdgeNotification(Ljava/lang/String;ILandroid/os/Bundle;I)V

    .line 3699
    return-void
.end method