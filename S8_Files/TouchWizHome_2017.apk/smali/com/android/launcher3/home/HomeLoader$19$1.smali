.class Lcom/android/launcher3/home/HomeLoader$19$1;
.super Ljava/lang/Object;
.source "HomeLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeLoader$19;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/home/HomeLoader$19;

.field final synthetic val$removeItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeLoader$19;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/launcher3/home/HomeLoader$19;

    .prologue
    .line 2128
    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader$19$1;->this$1:Lcom/android/launcher3/home/HomeLoader$19;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeLoader$19$1;->val$removeItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2130
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$19$1;->this$1:Lcom/android/launcher3/home/HomeLoader$19;

    iget-object v1, v1, Lcom/android/launcher3/home/HomeLoader$19;->this$0:Lcom/android/launcher3/home/HomeLoader;

    # invokes: Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    invoke-static {v1}, Lcom/android/launcher3/home/HomeLoader;->access$3900(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v0

    .line 2131
    .local v0, "cb":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$19$1;->this$1:Lcom/android/launcher3/home/HomeLoader$19;

    iget-object v1, v1, Lcom/android/launcher3/home/HomeLoader$19;->val$callbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    if-ne v1, v0, :cond_0

    if-eqz v0, :cond_0

    .line 2132
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$19$1;->val$removeItems:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;->bindItemsRemoved(Ljava/util/ArrayList;)V

    .line 2134
    :cond_0
    return-void
.end method
