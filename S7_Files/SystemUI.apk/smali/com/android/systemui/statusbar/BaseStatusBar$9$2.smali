.class Lcom/android/systemui/statusbar/BaseStatusBar$9$2;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar$9;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/BaseStatusBar$9;

.field final synthetic val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

.field final synthetic val$sbn:Landroid/service/notification/StatusBarNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar$9;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/BaseStatusBar$9;
    .param p2, "val$sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p3, "val$rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 773
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$9$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$9;

    iput-object p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$9$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    iput-object p3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$9$2;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 776
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$9$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$9;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$9;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$9$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->-wrap0(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/app/Notification;)V

    .line 777
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$9$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 778
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$9$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$9;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$9;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeysKeptForRemoteInput:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 779
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$9$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$9;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$9;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 784
    .local v0, "isUpdate":Z
    :goto_0
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->ENABLE_CHILD_NOTIFICATIONS:Z

    if-nez v2, :cond_2

    .line 785
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$9$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$9;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$9;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$9$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    .line 784
    if-eqz v2, :cond_2

    .line 791
    if-eqz v0, :cond_1

    .line 792
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$9$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$9;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$9;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$9$2;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 796
    :goto_1
    return-void

    .line 779
    .end local v0    # "isUpdate":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isUpdate":Z
    goto :goto_0

    .line 794
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$9$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$9;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$9;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$9$2;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto :goto_1

    .line 798
    :cond_2
    if-eqz v0, :cond_3

    .line 799
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$9$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$9;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$9;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$9$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$9$2;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 775
    :goto_2
    return-void

    .line 801
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$9$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$9;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$9;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$9$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$9$2;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    goto :goto_2
.end method
