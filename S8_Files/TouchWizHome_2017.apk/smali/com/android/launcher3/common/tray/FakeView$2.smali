.class Lcom/android/launcher3/common/tray/FakeView$2;
.super Ljava/lang/Object;
.source "FakeView.java"

# interfaces
.implements Lcom/android/launcher3/util/alarm/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/tray/FakeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/tray/FakeView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/tray/FakeView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/common/tray/FakeView;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/launcher3/common/tray/FakeView$2;->this$0:Lcom/android/launcher3/common/tray/FakeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/launcher3/util/alarm/Alarm;)V
    .locals 3
    .param p1, "alarm"    # Lcom/android/launcher3/util/alarm/Alarm;

    .prologue
    .line 82
    iget-object v1, p0, Lcom/android/launcher3/common/tray/FakeView$2;->this$0:Lcom/android/launcher3/common/tray/FakeView;

    # getter for: Lcom/android/launcher3/common/tray/FakeView;->mDragEventCallback:Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;
    invoke-static {v1}, Lcom/android/launcher3/common/tray/FakeView;->access$100(Lcom/android/launcher3/common/tray/FakeView;)Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/android/launcher3/common/tray/FakeView$2;->this$0:Lcom/android/launcher3/common/tray/FakeView;

    # getter for: Lcom/android/launcher3/common/tray/FakeView;->mDirection:I
    invoke-static {v1}, Lcom/android/launcher3/common/tray/FakeView;->access$200(Lcom/android/launcher3/common/tray/FakeView;)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 85
    .local v0, "direction":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/common/tray/FakeView$2;->this$0:Lcom/android/launcher3/common/tray/FakeView;

    # getter for: Lcom/android/launcher3/common/tray/FakeView;->mDragEventCallback:Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;
    invoke-static {v1}, Lcom/android/launcher3/common/tray/FakeView;->access$100(Lcom/android/launcher3/common/tray/FakeView;)Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/common/tray/FakeView$2;->this$0:Lcom/android/launcher3/common/tray/FakeView;

    # getter for: Lcom/android/launcher3/common/tray/FakeView;->mTrayLevel:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;
    invoke-static {v2}, Lcom/android/launcher3/common/tray/FakeView;->access$300(Lcom/android/launcher3/common/tray/FakeView;)Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;->onChangeStage(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;I)V

    .line 87
    .end local v0    # "direction":I
    :cond_0
    return-void

    .line 83
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
