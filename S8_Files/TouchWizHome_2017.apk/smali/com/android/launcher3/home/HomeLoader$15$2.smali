.class Lcom/android/launcher3/home/HomeLoader$15$2;
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

.field final synthetic val$addedItemsFinal:Ljava/util/ArrayList;

.field final synthetic val$moveShortcut:Lcom/android/launcher3/common/base/item/ItemInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeLoader$15;Lcom/android/launcher3/common/base/item/ItemInfo;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/launcher3/home/HomeLoader$15;

    .prologue
    .line 1909
    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader$15$2;->this$1:Lcom/android/launcher3/home/HomeLoader$15;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeLoader$15$2;->val$moveShortcut:Lcom/android/launcher3/common/base/item/ItemInfo;

    iput-object p3, p0, Lcom/android/launcher3/home/HomeLoader$15$2;->val$addedItemsFinal:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1911
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$15$2;->this$1:Lcom/android/launcher3/home/HomeLoader$15;

    iget-object v1, v1, Lcom/android/launcher3/home/HomeLoader$15;->this$0:Lcom/android/launcher3/home/HomeLoader;

    # invokes: Lcom/android/launcher3/home/HomeLoader;->getCallback()Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    invoke-static {v1}, Lcom/android/launcher3/home/HomeLoader;->access$3900(Lcom/android/launcher3/home/HomeLoader;)Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    move-result-object v0

    .line 1912
    .local v0, "cb":Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$15$2;->this$1:Lcom/android/launcher3/home/HomeLoader$15;

    iget-object v1, v1, Lcom/android/launcher3/home/HomeLoader$15;->val$callbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    if-ne v1, v0, :cond_1

    .line 1913
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$15$2;->val$moveShortcut:Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v1, :cond_0

    .line 1914
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$15$2;->this$1:Lcom/android/launcher3/home/HomeLoader$15;

    iget-object v1, v1, Lcom/android/launcher3/home/HomeLoader$15;->val$callbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader$15$2;->val$moveShortcut:Lcom/android/launcher3/common/base/item/ItemInfo;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;->bindItem(Lcom/android/launcher3/common/base/item/ItemInfo;Z)V

    .line 1916
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$15$2;->this$1:Lcom/android/launcher3/home/HomeLoader$15;

    iget-object v1, v1, Lcom/android/launcher3/home/HomeLoader$15;->val$callbacks:Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeLoader$15$2;->val$addedItemsFinal:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lcom/android/launcher3/home/HomeLoader$HomeCallbacks;->bindAppsButton(Ljava/util/ArrayList;)V

    .line 1918
    :cond_1
    return-void
.end method
