.class Lcom/android/launcher3/home/HomeLoader$24;
.super Ljava/lang/Object;
.source "HomeLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeLoader;->updateAndBindItems(Ljava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeLoader;

.field final synthetic val$addedWorkspaceScreensFinal:Ljava/util/ArrayList;

.field final synthetic val$callbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

.field final synthetic val$updateItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 2575
    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader$24;->this$0:Lcom/android/launcher3/home/HomeLoader;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeLoader$24;->val$callbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    iput-object p3, p0, Lcom/android/launcher3/home/HomeLoader$24;->val$addedWorkspaceScreensFinal:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/launcher3/home/HomeLoader$24;->val$updateItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2577
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$24;->this$0:Lcom/android/launcher3/home/HomeLoader;

    # invokes: Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    invoke-static {v1}, Lcom/android/launcher3/home/HomeLoader;->access$700(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v0

    .line 2578
    .local v0, "cb":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$24;->val$callbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    if-ne v1, v0, :cond_0

    .line 2579
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$24;->val$callbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader$24;->val$addedWorkspaceScreensFinal:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeLoader$24;->val$updateItems:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;->bindAppsAdded(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2581
    :cond_0
    return-void
.end method
