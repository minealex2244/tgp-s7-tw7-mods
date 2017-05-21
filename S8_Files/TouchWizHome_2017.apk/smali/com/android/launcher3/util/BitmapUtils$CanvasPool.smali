.class Lcom/android/launcher3/util/BitmapUtils$CanvasPool;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/BitmapUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CanvasPool"
.end annotation


# instance fields
.field private final mCanvasPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Canvas;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/BitmapUtils$CanvasPool;->mCanvasPool:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/util/BitmapUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher3/util/BitmapUtils$1;

    .prologue
    .line 386
    invoke-direct {p0}, Lcom/android/launcher3/util/BitmapUtils$CanvasPool;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized get()Landroid/graphics/Canvas;
    .locals 4

    .prologue
    .line 390
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/util/BitmapUtils$CanvasPool;->mCanvasPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 391
    iget-object v1, p0, Lcom/android/launcher3/util/BitmapUtils$CanvasPool;->mCanvasPool:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Canvas;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    :goto_0
    monitor-exit p0

    return-object v1

    .line 393
    :cond_0
    :try_start_1
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 394
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    .line 396
    goto :goto_0

    .line 390
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized recycle(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 401
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/util/BitmapUtils$CanvasPool;->mCanvasPool:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    monitor-exit p0

    return-void

    .line 401
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
