.class Lcom/android/launcher3/home/HomeLoader$7;
.super Ljava/lang/Object;
.source "HomeLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeLoader;->unbindItemsOnMainThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeLoader;

.field final synthetic val$tmpItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeLoader;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 1612
    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader$7;->this$0:Lcom/android/launcher3/home/HomeLoader;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeLoader$7;->val$tmpItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1615
    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$7;->val$tmpItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1616
    .local v0, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/item/ItemInfo;->unbind()V

    goto :goto_0

    .line 1618
    .end local v0    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_0
    return-void
.end method
