.class Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$2;
.super Ljava/lang/Object;
.source "SimpleStatusBarIconController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/systemui/statusbar/NotificationData$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$2;->this$0:Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I
    .locals 5
    .param p1, "a"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "b"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 163
    iget-object v4, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-wide v2, v4, Landroid/app/Notification;->when:J

    .line 164
    .local v2, "notificationWhenA":J
    iget-object v4, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-wide v0, v4, Landroid/app/Notification;->when:J

    .line 165
    .local v0, "notiffcationWhenB":J
    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    .line 166
    const/4 v4, 0x1

    return v4

    .line 168
    :cond_0
    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    .line 169
    const/4 v4, -0x1

    return v4

    .line 172
    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;

    .prologue
    .line 162
    check-cast p1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .end local p1    # "a":Ljava/lang/Object;
    check-cast p2, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .end local p2    # "b":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$2;->compare(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result v0

    return v0
.end method
