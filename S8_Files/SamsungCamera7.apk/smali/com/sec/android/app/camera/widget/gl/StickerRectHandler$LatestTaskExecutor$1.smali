.class Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$LatestTaskExecutor$1;
.super Ljava/lang/Object;
.source "StickerRectHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$LatestTaskExecutor;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$LatestTaskExecutor;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$LatestTaskExecutor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$LatestTaskExecutor;

    .prologue
    .line 851
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$LatestTaskExecutor$1;->this$0:Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$LatestTaskExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 854
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$LatestTaskExecutor$1;->this$0:Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$LatestTaskExecutor;

    # getter for: Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$LatestTaskExecutor;->lastTask:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v1}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$LatestTaskExecutor;->access$400(Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$LatestTaskExecutor;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 855
    .local v0, "task":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 856
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 858
    :cond_0
    return-void
.end method
