.class Lcom/android/launcher3/home/HomeLoader$15$1;
.super Ljava/lang/Object;
.source "HomeLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeLoader$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/home/HomeLoader$15;

.field final synthetic val$addedWorkspaceScreensFinal:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeLoader$15;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/launcher3/home/HomeLoader$15;

    .prologue
    .line 1928
    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader$15$1;->this$1:Lcom/android/launcher3/home/HomeLoader$15;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeLoader$15$1;->val$addedWorkspaceScreensFinal:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1930
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$15$1;->this$1:Lcom/android/launcher3/home/HomeLoader$15;

    iget-object v1, v1, Lcom/android/launcher3/home/HomeLoader$15;->this$0:Lcom/android/launcher3/home/HomeLoader;

    # invokes: Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    invoke-static {v1}, Lcom/android/launcher3/home/HomeLoader;->access$700(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v0

    .line 1931
    .local v0, "cb":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$15$1;->this$1:Lcom/android/launcher3/home/HomeLoader$15;

    iget-object v1, v1, Lcom/android/launcher3/home/HomeLoader$15;->val$callbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    if-ne v1, v0, :cond_0

    .line 1932
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$15$1;->this$1:Lcom/android/launcher3/home/HomeLoader$15;

    iget-object v1, v1, Lcom/android/launcher3/home/HomeLoader$15;->val$callbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader$15$1;->val$addedWorkspaceScreensFinal:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;->bindAddScreens(Ljava/util/ArrayList;)V

    .line 1934
    :cond_0
    return-void
.end method
