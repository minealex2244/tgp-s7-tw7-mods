.class Lcom/android/systemui/recents/RecentsImpl$2;
.super Ljava/lang/Object;
.source "RecentsImpl.java"

# interfaces
.implements Landroid/app/ActivityOptions$OnAnimationStartedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/RecentsImpl;->getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsImpl;

.field triggered:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsImpl;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/recents/RecentsImpl;

    .prologue
    .line 804
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsImpl$2;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 805
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsImpl$2;->triggered:Z

    .line 804
    return-void
.end method


# virtual methods
.method public onAnimationStarted()V
    .locals 2

    .prologue
    .line 808
    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsImpl$2;->triggered:Z

    if-nez v0, :cond_0

    .line 809
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    .line 810
    new-instance v1, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;-><init>()V

    .line 809
    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 811
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsImpl$2;->triggered:Z

    .line 807
    :cond_0
    return-void
.end method
