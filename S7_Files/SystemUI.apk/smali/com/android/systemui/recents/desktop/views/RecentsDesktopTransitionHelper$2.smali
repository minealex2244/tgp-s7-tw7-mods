.class Lcom/android/systemui/recents/desktop/views/RecentsDesktopTransitionHelper$2;
.super Ljava/lang/Object;
.source "RecentsDesktopTransitionHelper.java"

# interfaces
.implements Landroid/app/ActivityOptions$OnAnimationStartedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/desktop/views/RecentsDesktopTransitionHelper;->launchTaskFromRecents(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;Lcom/android/systemui/recents/tv/views/TaskCardView;Landroid/graphics/Rect;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/desktop/views/RecentsDesktopTransitionHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/desktop/views/RecentsDesktopTransitionHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/desktop/views/RecentsDesktopTransitionHelper;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/systemui/recents/desktop/views/RecentsDesktopTransitionHelper$2;->this$0:Lcom/android/systemui/recents/desktop/views/RecentsDesktopTransitionHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStarted()V
    .locals 2

    .prologue
    .line 76
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/ExitRecentsWindowFirstAnimationFrameEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/ExitRecentsWindowFirstAnimationFrameEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 75
    return-void
.end method
