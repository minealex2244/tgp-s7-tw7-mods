.class Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask$1;
.super Ljava/lang/Object;
.source "HomeLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->finalCheckForDuplicateInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;

.field final synthetic val$callbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

.field final synthetic val$duplicateList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask$1;->this$1:Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask$1;->val$callbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    iput-object p3, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask$1;->val$duplicateList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 250
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask$1;->this$1:Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;

    iget-object v1, v1, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask;->this$0:Lcom/android/launcher3/home/HomeLoader;

    # invokes: Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    invoke-static {v1}, Lcom/android/launcher3/home/HomeLoader;->access$700(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v0

    .line 251
    .local v0, "cb":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask$1;->val$callbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    if-ne v1, v0, :cond_0

    .line 252
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$HomeLoaderTask$1;->val$duplicateList:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;->bindItemsRemoved(Ljava/util/ArrayList;)V

    .line 254
    :cond_0
    return-void
.end method
