.class Lcom/android/launcher3/home/Workspace$7;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/Workspace;->onLauncherTransitionEnd(Lcom/android/launcher3/Launcher;ZZLcom/android/launcher3/common/stage/StageEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/Workspace;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/Workspace;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/Workspace;

    .prologue
    .line 1331
    iput-object p1, p0, Lcom/android/launcher3/home/Workspace$7;->this$0:Lcom/android/launcher3/home/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1334
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace$7;->this$0:Lcom/android/launcher3/home/Workspace;

    # getter for: Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;
    invoke-static {v0}, Lcom/android/launcher3/home/Workspace;->access$500(Lcom/android/launcher3/home/Workspace;)Lcom/android/launcher3/home/HomeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->isNormalState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1335
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace$7;->this$0:Lcom/android/launcher3/home/Workspace;

    const/4 v1, 0x0

    const/4 v2, 0x1

    # invokes: Lcom/android/launcher3/home/Workspace;->setCustomFlagOnChild(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/android/launcher3/home/Workspace;->access$600(Lcom/android/launcher3/home/Workspace;ZZ)V

    .line 1337
    :cond_0
    return-void
.end method
