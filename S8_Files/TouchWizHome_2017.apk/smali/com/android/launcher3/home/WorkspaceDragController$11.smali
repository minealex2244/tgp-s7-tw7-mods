.class Lcom/android/launcher3/home/WorkspaceDragController$11;
.super Ljava/lang/Object;
.source "WorkspaceDragController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/WorkspaceDragController;->onDropExtraObjects(Ljava/util/ArrayList;Ljava/lang/Runnable;ZZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/WorkspaceDragController;

.field final synthetic val$restoreExtraDropItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/WorkspaceDragController;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/WorkspaceDragController;

    .prologue
    .line 959
    iput-object p1, p0, Lcom/android/launcher3/home/WorkspaceDragController$11;->this$0:Lcom/android/launcher3/home/WorkspaceDragController;

    iput-object p2, p0, Lcom/android/launcher3/home/WorkspaceDragController$11;->val$restoreExtraDropItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 962
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController$11;->this$0:Lcom/android/launcher3/home/WorkspaceDragController;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController$11;->val$restoreExtraDropItems:Ljava/util/ArrayList;

    const/4 v2, 0x1

    # invokes: Lcom/android/launcher3/home/WorkspaceDragController;->addItemOnNewPage(Ljava/util/ArrayList;Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;Z)V
    invoke-static {v0, v1, v3, v3, v2}, Lcom/android/launcher3/home/WorkspaceDragController;->access$100(Lcom/android/launcher3/home/WorkspaceDragController;Ljava/util/ArrayList;Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;Z)V

    .line 963
    return-void
.end method
