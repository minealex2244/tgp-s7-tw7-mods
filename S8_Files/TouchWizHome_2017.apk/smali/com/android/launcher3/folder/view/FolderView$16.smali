.class Lcom/android/launcher3/folder/view/FolderView$16;
.super Ljava/lang/Object;
.source "FolderView.java"

# interfaces
.implements Lcom/android/launcher3/util/alarm/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/folder/view/FolderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/view/FolderView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/view/FolderView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    .line 1448
    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderView$16;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/launcher3/util/alarm/Alarm;)V
    .locals 4
    .param p1, "alarm"    # Lcom/android/launcher3/util/alarm/Alarm;

    .prologue
    .line 1450
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$16;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    # getter for: Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;
    invoke-static {v0}, Lcom/android/launcher3/folder/view/FolderView;->access$900(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/folder/view/FolderPagedView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView$16;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    # getter for: Lcom/android/launcher3/folder/view/FolderView;->mEmptyCellRank:I
    invoke-static {v1}, Lcom/android/launcher3/folder/view/FolderView;->access$1300(Lcom/android/launcher3/folder/view/FolderView;)I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView$16;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    # getter for: Lcom/android/launcher3/folder/view/FolderView;->mTargetRank:I
    invoke-static {v2}, Lcom/android/launcher3/folder/view/FolderView;->access$1400(Lcom/android/launcher3/folder/view/FolderView;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/folder/view/FolderPagedView;->realTimeReorder(IIZ)V

    .line 1451
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$16;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView$16;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    # getter for: Lcom/android/launcher3/folder/view/FolderView;->mTargetRank:I
    invoke-static {v1}, Lcom/android/launcher3/folder/view/FolderView;->access$1400(Lcom/android/launcher3/folder/view/FolderView;)I

    move-result v1

    # setter for: Lcom/android/launcher3/folder/view/FolderView;->mEmptyCellRank:I
    invoke-static {v0, v1}, Lcom/android/launcher3/folder/view/FolderView;->access$1302(Lcom/android/launcher3/folder/view/FolderView;I)I

    .line 1452
    return-void
.end method
