.class Lcom/android/launcher3/folder/controller/FolderIconDropController$3$1;
.super Ljava/lang/Object;
.source "FolderIconDropController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/controller/FolderIconDropController$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/folder/controller/FolderIconDropController$3;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/controller/FolderIconDropController$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/launcher3/folder/controller/FolderIconDropController$3;

    .prologue
    .line 350
    iput-object p1, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController$3$1;->this$1:Lcom/android/launcher3/folder/controller/FolderIconDropController$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController$3$1;->this$1:Lcom/android/launcher3/folder/controller/FolderIconDropController$3;

    iget-object v0, v0, Lcom/android/launcher3/folder/controller/FolderIconDropController$3;->this$0:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController$3$1;->this$1:Lcom/android/launcher3/folder/controller/FolderIconDropController$3;

    iget-object v1, v1, Lcom/android/launcher3/folder/controller/FolderIconDropController$3;->val$fi:Lcom/android/launcher3/folder/view/FolderIconView;

    const/4 v2, 0x1

    # invokes: Lcom/android/launcher3/folder/controller/FolderIconDropController;->openFolder(Lcom/android/launcher3/folder/view/FolderIconView;I)V
    invoke-static {v0, v1, v2}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->access$100(Lcom/android/launcher3/folder/controller/FolderIconDropController;Lcom/android/launcher3/folder/view/FolderIconView;I)V

    .line 354
    return-void
.end method
