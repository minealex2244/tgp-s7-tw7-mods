.class Lcom/android/systemui/recents/views/RecentsView$1;
.super Ljava/lang/Object;
.source "RecentsView.java"

# interfaces
.implements Landroid/app/ActivityOptions$OnAnimationStartedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentsView;->onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/RecentsView;

.field final synthetic val$event:Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/views/RecentsView;
    .param p2, "val$event"    # Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;

    .prologue
    .line 594
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView$1;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iput-object p2, p0, Lcom/android/systemui/recents/views/RecentsView$1;->val$event:Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStarted()V
    .locals 4

    .prologue
    .line 597
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/DockedFirstAnimationFrameEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/DockedFirstAnimationFrameEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 598
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$1;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v0, v0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView$1;->val$event:Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;

    iget-object v1, v1, Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;->task:Lcom/android/systemui/recents/model/Task;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/model/TaskStack;->removeTask(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/AnimationProps;Z)V

    .line 600
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/recents/RecentsConfiguration;->blockTouchAction:Z

    .line 596
    return-void
.end method
