.class Lcom/android/launcher3/allapps/controller/AppsController$10;
.super Ljava/lang/Object;
.source "AppsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/controller/AppsController;->removeApps(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/AppsController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/AppsController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/controller/AppsController;

    .prologue
    .line 1209
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsController$10;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1212
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController$10;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->removeEmptyPagesAndUpdateAllItemsInfo()Z

    move-result v0

    .line 1213
    .local v0, "dirtyItemUpdated":Z
    if-nez v0, :cond_0

    .line 1214
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController$10;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->updateDirtyItems()V

    .line 1216
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController$10;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    const/4 v2, 0x0

    # setter for: Lcom/android/launcher3/allapps/controller/AppsController;->mRemoveInProgress:Z
    invoke-static {v1, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->access$202(Lcom/android/launcher3/allapps/controller/AppsController;Z)Z

    .line 1217
    return-void
.end method
