.class Lcom/android/launcher3/folder/controller/FolderController$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolderController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/controller/FolderController;->onStageEnter(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/controller/FolderController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/controller/FolderController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/folder/controller/FolderController;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/launcher3/folder/controller/FolderController$3;->this$0:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 255
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 256
    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController$3;->this$0:Lcom/android/launcher3/folder/controller/FolderController;

    # getter for: Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;
    invoke-static {v1}, Lcom/android/launcher3/folder/controller/FolderController;->access$400(Lcom/android/launcher3/folder/controller/FolderController;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "opened":Ljava/lang/String;
    sget-object v1, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/folder/controller/FolderController$3;->this$0:Lcom/android/launcher3/folder/controller/FolderController;

    # getter for: Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;
    invoke-static {v3}, Lcom/android/launcher3/folder/controller/FolderController;->access$500(Lcom/android/launcher3/folder/controller/FolderController;)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderView;->getContent()Lcom/android/launcher3/folder/view/FolderPagedView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/Talk;->say(Ljava/lang/String;)V

    .line 258
    return-void
.end method
