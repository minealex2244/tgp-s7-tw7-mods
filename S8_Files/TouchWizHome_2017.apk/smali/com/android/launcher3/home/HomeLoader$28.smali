.class Lcom/android/launcher3/home/HomeLoader$28;
.super Ljava/lang/Object;
.source "HomeLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeLoader;->bindItemsSync(ILcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeLoader;

.field final synthetic val$task:Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/HomeLoader;

    .prologue
    .line 2735
    iput-object p1, p0, Lcom/android/launcher3/home/HomeLoader$28;->this$0:Lcom/android/launcher3/home/HomeLoader;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeLoader$28;->val$task:Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2737
    iget-object v0, p0, Lcom/android/launcher3/home/HomeLoader$28;->this$0:Lcom/android/launcher3/home/HomeLoader;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeLoader$28;->val$task:Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;

    # invokes: Lcom/android/launcher3/home/HomeLoader;->bindFestivalPageIfNecessary(Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V
    invoke-static {v0, v1}, Lcom/android/launcher3/home/HomeLoader;->access$2800(Lcom/android/launcher3/home/HomeLoader;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)V

    .line 2738
    return-void
.end method
