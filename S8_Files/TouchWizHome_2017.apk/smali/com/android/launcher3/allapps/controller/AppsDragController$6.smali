.class Lcom/android/launcher3/allapps/controller/AppsDragController$6;
.super Ljava/lang/Object;
.source "AppsDragController.java"

# interfaces
.implements Lcom/android/launcher3/util/alarm/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/controller/AppsDragController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/AppsDragController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/controller/AppsDragController;

    .prologue
    .line 1482
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$6;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/launcher3/util/alarm/Alarm;)V
    .locals 4
    .param p1, "alarm"    # Lcom/android/launcher3/util/alarm/Alarm;

    .prologue
    .line 1484
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$6;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    # getter for: Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;
    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/controller/AppsReorderController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$6;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    # getter for: Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;
    invoke-static {v2}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$200(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/controller/DragAppIcon;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$6;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    # getter for: Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;
    invoke-static {v3}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$300(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/controller/DragAppIcon;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->realTimeReorder(Lcom/android/launcher3/allapps/controller/DragAppIcon;Lcom/android/launcher3/allapps/controller/DragAppIcon;)V

    .line 1486
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$6;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$6;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    # getter for: Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;
    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$300(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/controller/DragAppIcon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/DragAppIcon;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/controller/DragAppIcon;

    # setter for: Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;
    invoke-static {v2, v1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$202(Lcom/android/launcher3/allapps/controller/AppsDragController;Lcom/android/launcher3/allapps/controller/DragAppIcon;)Lcom/android/launcher3/allapps/controller/DragAppIcon;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1490
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$6;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/controller/AppsDragController;->setDragMode(I)V

    .line 1491
    return-void

    .line 1487
    :catch_0
    move-exception v0

    .line 1488
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    const-string v1, "AppsDragController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReorderAlarm:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
