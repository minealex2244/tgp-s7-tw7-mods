.class Lcom/android/launcher3/allapps/controller/AppsDragController$1;
.super Ljava/lang/Object;
.source "AppsDragController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/controller/AppsDragController;->onDropInternal(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
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
    .line 184
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$1;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$1;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    # getter for: Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;
    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$000(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/controller/AppsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->exitDragStateDelayed()V

    .line 188
    return-void
.end method