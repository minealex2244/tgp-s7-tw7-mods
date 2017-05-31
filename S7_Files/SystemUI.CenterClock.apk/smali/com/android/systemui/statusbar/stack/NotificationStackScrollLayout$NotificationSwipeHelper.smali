.class Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;
.super Lcom/android/systemui/SwipeHelper;
.source "NotificationStackScrollLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationSwipeHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper$CheckForDrag;
    }
.end annotation


# instance fields
.field private mCheckForDrag:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper$CheckForDrag;

.field private mFalsingCheck:Ljava/lang/Runnable;

.field private mGearSnappedOnLeft:Z

.field private mGearSnappedTo:Z

.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;Landroid/view/View;)F
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->getSize(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->getSpaceForGear(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;Z)V
    .locals 0
    .param p1, "snapped"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->setSnappedToGear(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;ILcom/android/systemui/SwipeHelper$Callback;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .param p2, "swipeDirection"    # I
    .param p3, "callback"    # Lcom/android/systemui/SwipeHelper$Callback;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 3983
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 3984
    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/SwipeHelper;-><init>(ILcom/android/systemui/SwipeHelper$Callback;Landroid/content/Context;)V

    .line 3985
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->mHandler:Landroid/os/Handler;

    .line 3986
    new-instance v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper$1;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->mFalsingCheck:Ljava/lang/Runnable;

    .line 3983
    return-void
.end method

.method private cancelCheckForDrag()V
    .locals 2

    .prologue
    .line 4267
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get2(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4268
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get2(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->cancelFadeAnimator()V

    .line 4270
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->mCheckForDrag:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper$CheckForDrag;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4266
    return-void
.end method

.method private checkForDrag()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 4260
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->mCheckForDrag:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper$CheckForDrag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->mCheckForDrag:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper$CheckForDrag;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4259
    :goto_0
    return-void

    .line 4261
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper$CheckForDrag;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper$CheckForDrag;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper$CheckForDrag;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->mCheckForDrag:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper$CheckForDrag;

    .line 4262
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->mCheckForDrag:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper$CheckForDrag;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private dismissOrSnapBack(Landroid/view/View;FLandroid/view/MotionEvent;)V
    .locals 1
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "velocity"    # F
    .param p3, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4128
    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->isDismissGesture(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4130
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->swipedFastEnough()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4129
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->dismissChild(Landroid/view/View;FZ)V

    .line 4127
    :goto_1
    return-void

    .line 4130
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 4132
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->snapChild(Landroid/view/View;FF)V

    goto :goto_1
.end method

.method private getSpaceForGear(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 4253
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 4254
    check-cast p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getSpaceForGear()F

    move-result v0

    return v0

    .line 4256
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private handleGearCoveredOrDismissed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4076
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->cancelCheckForDrag()V

    .line 4077
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->setSnappedToGear(Z)V

    .line 4078
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get6(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get6(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get16(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Landroid/view/View;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 4079
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-set6(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Landroid/view/View;)Landroid/view/View;

    .line 4075
    :cond_0
    return-void
.end method

.method private isTowardsGear(FZ)Z
    .locals 4
    .param p1, "velocity"    # F
    .param p2, "onLeft"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 4233
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get2(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    move-result-object v2

    if-nez v2, :cond_0

    .line 4234
    return v1

    .line 4236
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get2(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4237
    if-eqz p2, :cond_2

    cmpg-float v2, p1, v3

    if-gtz v2, :cond_2

    .line 4236
    :cond_1
    :goto_0
    return v0

    .line 4237
    :cond_2
    if-nez p2, :cond_3

    cmpl-float v2, p1, v3

    if-gez v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 4236
    goto :goto_0
.end method

.method private setSnappedToGear(Z)V
    .locals 2
    .param p1, "snapped"    # Z

    .prologue
    const/4 v1, 0x0

    .line 4244
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get2(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get2(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->isIconOnLeft()Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->mGearSnappedOnLeft:Z

    .line 4245
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get2(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->mGearSnappedTo:Z

    .line 4243
    return-void

    :cond_1
    move v0, v1

    .line 4244
    goto :goto_0
.end method

.method private snapToGear(Landroid/view/View;F)V
    .locals 6
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "velocity"    # F

    .prologue
    const/4 v5, 0x1

    .line 4137
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->getSpaceForGear(Landroid/view/View;)F

    move-result v0

    .line 4138
    .local v0, "snapBackThreshold":F
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get2(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->isIconOnLeft()Z

    move-result v2

    if-eqz v2, :cond_3

    move v1, v0

    .line 4140
    .local v1, "target":F
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get16(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Landroid/view/View;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-set6(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Landroid/view/View;)Landroid/view/View;

    .line 4141
    instance-of v2, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v2, :cond_0

    .line 4142
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get1(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Landroid/content/Context;

    move-result-object v3

    move-object v2, p1

    .line 4143
    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 4142
    const/16 v4, 0x14c

    invoke-static {v3, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 4146
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get2(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4147
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get2(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->setSnapping(Z)V

    .line 4148
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->setSnappedToGear(Z)V

    .line 4150
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onDragCancelled(Landroid/view/View;)V

    .line 4153
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get11(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 4154
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->mFalsingCheck:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4155
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->mFalsingCheck:Ljava/lang/Runnable;

    const-wide/16 v4, 0xfa0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4157
    :cond_2
    invoke-super {p0, p1, v1, p2}, Lcom/android/systemui/SwipeHelper;->snapChild(Landroid/view/View;FF)V

    .line 4136
    return-void

    .line 4139
    .end local v1    # "target":F
    :cond_3
    neg-float v1, v0

    .restart local v1    # "target":F
    goto :goto_0
.end method

.method private swipedEnoughToShowGear(Landroid/view/View;)Z
    .locals 10
    .param p1, "animView"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 4161
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get16(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_0

    .line 4162
    return v7

    .line 4166
    :cond_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v8, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_2

    const v2, 0x3ecccccd    # 0.4f

    .line 4167
    .local v2, "multiplier":F
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->getSpaceForGear(Landroid/view/View;)F

    move-result v8

    mul-float v4, v8, v2

    .line 4168
    .local v4, "snapBackThreshold":F
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v5

    .line 4169
    .local v5, "translation":F
    const/4 v8, 0x0

    cmpl-float v8, v5, v8

    if-lez v8, :cond_3

    const/4 v1, 0x1

    .line 4170
    .local v1, "fromLeft":Z
    :goto_1
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 4171
    .local v0, "absTrans":F
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get16(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->getSize(Landroid/view/View;)F

    move-result v8

    const v9, 0x3ecccccd    # 0.4f

    mul-float v3, v8, v9

    .line 4173
    .local v3, "notiThreshold":F
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get2(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get2(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->isIconOnLeft()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 4174
    cmpl-float v8, v5, v4

    if-lez v8, :cond_4

    cmpg-float v8, v5, v3

    if-gtz v8, :cond_4

    .line 4173
    :cond_1
    :goto_2
    return v6

    .line 4166
    .end local v0    # "absTrans":F
    .end local v1    # "fromLeft":Z
    .end local v2    # "multiplier":F
    .end local v3    # "notiThreshold":F
    .end local v4    # "snapBackThreshold":F
    .end local v5    # "translation":F
    :cond_2
    const v2, 0x3e4ccccd    # 0.2f

    .restart local v2    # "multiplier":F
    goto :goto_0

    .line 4169
    .restart local v4    # "snapBackThreshold":F
    .restart local v5    # "translation":F
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "fromLeft":Z
    goto :goto_1

    .restart local v0    # "absTrans":F
    .restart local v3    # "notiThreshold":F
    :cond_4
    move v6, v7

    .line 4174
    goto :goto_2

    .line 4175
    :cond_5
    neg-float v8, v4

    cmpg-float v8, v5, v8

    if-gez v8, :cond_6

    neg-float v8, v3

    cmpl-float v8, v5, v8

    if-gez v8, :cond_1

    :cond_6
    move v6, v7

    goto :goto_2

    :cond_7
    move v6, v7

    .line 4173
    goto :goto_2
.end method


# virtual methods
.method public closeControlsIfOutsideTouch(Landroid/view/MotionEvent;)V
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v13, 0x0

    const/4 v12, -0x1

    const/4 v11, 0x1

    .line 4199
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v9}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get11(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getExposedGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v0

    .line 4200
    .local v0, "guts":Lcom/android/systemui/statusbar/NotificationGuts;
    const/4 v6, 0x0

    .line 4201
    .local v6, "view":Landroid/view/View;
    const/4 v1, 0x0

    .line 4202
    .local v1, "height":I
    if-eqz v0, :cond_2

    .line 4204
    move-object v6, v0

    .line 4205
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->getActualHeight()I

    move-result v1

    .line 4212
    .end local v6    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 4213
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    float-to-int v4, v9

    .line 4214
    .local v4, "rx":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    float-to-int v5, v9

    .line 4216
    .local v5, "ry":I
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v10, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v10}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get15(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)[I

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLocationOnScreen([I)V

    .line 4217
    const/4 v9, 0x2

    new-array v2, v9, [I

    .line 4218
    .local v2, "location":[I
    invoke-virtual {v6, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 4219
    aget v9, v2, v13

    iget-object v10, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v10}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get15(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)[I

    move-result-object v10

    aget v10, v10, v13

    sub-int v7, v9, v10

    .line 4220
    .local v7, "x":I
    aget v9, v2, v11

    iget-object v10, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v10}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get15(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)[I

    move-result-object v10

    aget v10, v10, v11

    sub-int v8, v9, v10

    .line 4221
    .local v8, "y":I
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v9, v7

    add-int v10, v8, v1

    invoke-direct {v3, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 4222
    .local v3, "rect":Landroid/graphics/Rect;
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-nez v9, :cond_1

    .line 4224
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v9}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get11(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v9

    invoke-virtual {v9, v12, v12, v11, v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dismissPopups(IIZZ)V

    .line 4198
    .end local v2    # "location":[I
    .end local v3    # "rect":Landroid/graphics/Rect;
    .end local v4    # "rx":I
    .end local v5    # "ry":I
    .end local v7    # "x":I
    .end local v8    # "y":I
    :cond_1
    return-void

    .line 4206
    .local v6, "view":Landroid/view/View;
    :cond_2
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v9}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get2(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v9}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get2(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->isVisible()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 4207
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v9}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get16(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 4209
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v9}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get16(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Landroid/view/View;

    move-result-object v6

    .line 4210
    .local v6, "view":Landroid/view/View;
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v9}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get16(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v1

    goto :goto_0
.end method

.method public dismissChild(Landroid/view/View;FZ)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocity"    # F
    .param p3, "useAccelerateInterpolator"    # Z

    .prologue
    .line 4057
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;FZ)V

    .line 4058
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get7(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4061
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-wrap1(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Landroid/view/View;)V

    .line 4063
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->handleGearCoveredOrDismissed()V

    .line 4056
    return-void
.end method

.method public getTranslation(Landroid/view/View;)F
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 4195
    check-cast p1, Lcom/android/systemui/statusbar/ExpandableView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslation()F

    move-result v0

    return v0
.end method

.method public getViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "target"    # F
    .param p3, "listener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .prologue
    .line 4181
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 4182
    check-cast p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslateViewAnimator(FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0

    .line 4184
    .restart local p1    # "v":Landroid/view/View;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/SwipeHelper;->getViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public handleUpEvent(Landroid/view/MotionEvent;Landroid/view/View;FF)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "animView"    # Landroid/view/View;
    .param p3, "velocity"    # F
    .param p4, "translation"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4086
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get2(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    move-result-object v5

    if-nez v5, :cond_0

    .line 4087
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->cancelCheckForDrag()V

    .line 4088
    return v3

    .line 4091
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get2(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->isIconOnLeft()Z

    move-result v5

    invoke-direct {p0, p3, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->isTowardsGear(FZ)Z

    move-result v2

    .line 4092
    .local v2, "gestureTowardsGear":Z
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->getEscapeVelocity()F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    const/4 v1, 0x1

    .line 4094
    .local v1, "gestureFastEnough":Z
    :goto_0
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->mGearSnappedTo:Z

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get2(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 4095
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->mGearSnappedOnLeft:Z

    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get2(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->isIconOnLeft()Z

    move-result v6

    if-ne v5, v6, :cond_7

    .line 4097
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->getSpaceForGear(Landroid/view/View;)F

    move-result v6

    const v7, 0x3f19999a    # 0.6f

    mul-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_3

    const/4 v0, 0x1

    .line 4098
    .local v0, "coveringGear":Z
    :goto_1
    if-nez v2, :cond_1

    if-eqz v0, :cond_4

    .line 4100
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, p2, v3, p3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->snapChild(Landroid/view/View;FF)V

    .line 4124
    .end local v0    # "coveringGear":Z
    :goto_2
    return v4

    .line 4092
    .end local v1    # "gestureFastEnough":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "gestureFastEnough":Z
    goto :goto_0

    .line 4097
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "coveringGear":Z
    goto :goto_1

    .line 4101
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->isDismissGesture(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 4104
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->swipedFastEnough()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 4103
    :goto_3
    invoke-virtual {p0, p2, p3, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->dismissChild(Landroid/view/View;FZ)V

    goto :goto_2

    :cond_5
    move v3, v4

    .line 4104
    goto :goto_3

    .line 4107
    :cond_6
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->snapToGear(Landroid/view/View;F)V

    goto :goto_2

    .line 4109
    .end local v0    # "coveringGear":Z
    :cond_7
    if-nez v1, :cond_8

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->swipedEnoughToShowGear(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 4110
    :cond_8
    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->swipedFarEnough()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 4115
    :cond_9
    invoke-direct {p0, p2, p3, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->dismissOrSnapBack(Landroid/view/View;FLandroid/view/MotionEvent;)V

    goto :goto_2

    .line 4113
    :cond_a
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->snapToGear(Landroid/view/View;F)V

    goto :goto_2

    .line 4117
    :cond_b
    if-nez v1, :cond_c

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->swipedEnoughToShowGear(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_d

    :cond_c
    if-eqz v2, :cond_e

    .line 4120
    :cond_d
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->snapToGear(Landroid/view/View;F)V

    goto :goto_2

    .line 4122
    :cond_e
    invoke-direct {p0, p2, p3, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->dismissOrSnapBack(Landroid/view/View;FLandroid/view/MotionEvent;)V

    goto :goto_2
.end method

.method public onDownUpdate(Landroid/view/View;)V
    .locals 3
    .param p1, "currView"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 3997
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-set8(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Landroid/view/View;)Landroid/view/View;

    .line 4000
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->cancelCheckForDrag()V

    .line 4001
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get2(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4002
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get2(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->setSnapping(Z)V

    .line 4004
    :cond_0
    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->mCheckForDrag:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper$CheckForDrag;

    .line 4005
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-set2(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/NotificationSettingsIconRow;)Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    .line 4006
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->mFalsingCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4009
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->resetExposedGearView(ZZ)V

    .line 4011
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_1

    .line 4013
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    check-cast p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .end local p1    # "currView":Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getSettingsRow()Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-set2(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/NotificationSettingsIconRow;)Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    .line 4014
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get2(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->setGearListener(Lcom/android/systemui/statusbar/NotificationSettingsIconRow$SettingsIconRowListener;)V

    .line 3995
    :cond_1
    return-void
.end method

.method public onMoveUpdate(Landroid/view/View;FF)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "translation"    # F
    .param p3, "delta"    # F

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 4020
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->mFalsingCheck:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4022
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get2(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 4023
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get2(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->setSnapping(Z)V

    .line 4026
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->mGearSnappedTo:Z

    if-eqz v4, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->mGearSnappedOnLeft:Z

    .line 4027
    .local v2, "onLeft":Z
    :goto_0
    invoke-direct {p0, p2, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->isTowardsGear(FZ)Z

    move-result v4

    if-eqz v4, :cond_3

    move v1, v3

    .line 4029
    .local v1, "locationChange":Z
    :goto_1
    if-eqz v1, :cond_0

    .line 4031
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->setSnappedToGear(Z)V

    .line 4034
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->mCheckForDrag:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper$CheckForDrag;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 4036
    iput-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->mCheckForDrag:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper$CheckForDrag;

    .line 4045
    .end local v1    # "locationChange":Z
    .end local v2    # "onLeft":Z
    :cond_0
    :goto_2
    instance-of v3, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v3, :cond_6

    move-object v3, p1

    .line 4046
    check-cast v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v0

    .line 4048
    :goto_3
    invoke-static {p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isPinnedHeadsUp(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v0, :cond_7

    .line 4019
    :cond_1
    :goto_4
    return-void

    .line 4026
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get2(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->isIconOnLeft()Z

    move-result v2

    goto :goto_0

    .line 4028
    .restart local v2    # "onLeft":Z
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get2(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->isIconLocationChange(F)Z

    move-result v1

    goto :goto_1

    .line 4039
    .restart local v1    # "locationChange":Z
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get2(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->setGearAlpha(F)V

    .line 4040
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get2(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    move-result-object v4

    cmpl-float v5, p2, v6

    if-lez v5, :cond_5

    const/4 v3, 0x1

    :cond_5
    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->setIconLocation(Z)V

    goto :goto_2

    .line 4045
    .end local v1    # "locationChange":Z
    .end local v2    # "onLeft":Z
    :cond_6
    const/4 v0, 0x0

    .local v0, "gutsExposed":Z
    goto :goto_3

    .line 4050
    .end local v0    # "gutsExposed":Z
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->checkForDrag()V

    goto :goto_4
.end method

.method public resetExposedGearView(ZZ)V
    .locals 5
    .param p1, "animate"    # Z
    .param p2, "force"    # Z

    .prologue
    const/4 v4, 0x0

    .line 4295
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get6(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4296
    if-nez p2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get6(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get16(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Landroid/view/View;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 4298
    :cond_0
    return-void

    .line 4300
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get6(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Landroid/view/View;

    move-result-object v1

    .line 4301
    .local v1, "prevGearExposedView":Landroid/view/View;
    if-eqz p1, :cond_3

    .line 4303
    const/4 v2, 0x0

    .line 4302
    invoke-virtual {p0, v1, v2, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->getViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    move-result-object v0

    .line 4304
    .local v0, "anim":Landroid/animation/Animator;
    if-eqz v0, :cond_2

    .line 4305
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 4314
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v2, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-set6(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Landroid/view/View;)Landroid/view/View;

    .line 4315
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->mGearSnappedTo:Z

    .line 4294
    return-void

    .line 4307
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get6(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v2, :cond_2

    .line 4309
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->mSnapAnimatorForNotification:Landroid/animation/Animator;

    if-eqz v2, :cond_4

    .line 4310
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->mSnapAnimatorForNotification:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 4312
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get6(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->resetTranslation()V

    goto :goto_0
.end method

.method public setTranslation(Landroid/view/View;F)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "translate"    # F

    .prologue
    .line 4190
    check-cast p1, Lcom/android/systemui/statusbar/ExpandableView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/ExpandableView;->setTranslation(F)V

    .line 4189
    return-void
.end method

.method public snapChild(Landroid/view/View;FF)V
    .locals 1
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "targetLeft"    # F
    .param p3, "velocity"    # F

    .prologue
    .line 4068
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/SwipeHelper;->snapChild(Landroid/view/View;FF)V

    .line 4069
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onDragCancelled(Landroid/view/View;)V

    .line 4070
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 4071
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$NotificationSwipeHelper;->handleGearCoveredOrDismissed()V

    .line 4067
    :cond_0
    return-void
.end method
