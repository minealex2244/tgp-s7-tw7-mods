.class Lcom/samsung/android/settings/notification/BlockNotificationList$6;
.super Ljava/lang/Object;
.source "BlockNotificationList.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/BlockNotificationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/BlockNotificationList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/notification/BlockNotificationList;

    .prologue
    .line 781
    iput-object p1, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$6;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 3

    .prologue
    .line 784
    iget-object v1, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$6;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    .line 786
    .local v0, "stateId":Ljava/lang/String;
    const-string/jumbo v1, "AppNotificationsListOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 787
    const-string/jumbo v1, "AppNotificationsListOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 786
    if-nez v1, :cond_0

    .line 788
    const-string/jumbo v1, "AppNotificationsListApplicationNameOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 786
    if-nez v1, :cond_0

    .line 789
    const-string/jumbo v1, "AppNotificationsListApplicationNameOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 786
    if-eqz v1, :cond_2

    .line 790
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$6;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setPendingState(Z)V

    .line 795
    :cond_1
    :goto_0
    return-void

    .line 791
    :cond_2
    const-string/jumbo v1, "AdvancedNoficiations"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "AdvancedNotifications"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 792
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$6;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-wrap3(Lcom/samsung/android/settings/notification/BlockNotificationList;)V

    .line 793
    iget-object v1, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$6;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0
.end method
