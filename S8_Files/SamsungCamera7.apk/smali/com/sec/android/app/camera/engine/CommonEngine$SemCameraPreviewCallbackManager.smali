.class public Lcom/sec/android/app/camera/engine/CommonEngine$SemCameraPreviewCallbackManager;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/CommonEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SemCameraPreviewCallbackManager"
.end annotation


# static fields
.field private static final BUFFERS_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PreviewCallbackManager"


# instance fields
.field private final mBuffersHeap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<[B",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviewCallbackFormat:I

.field final synthetic this$0:Lcom/sec/android/app/camera/engine/CommonEngine;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V
    .locals 2
    .param p1, "this$0"    # Lcom/sec/android/app/camera/engine/CommonEngine;

    .prologue
    .line 9556
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$SemCameraPreviewCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9560
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$SemCameraPreviewCallbackManager;->mBuffersHeap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9561
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$SemCameraPreviewCallbackManager;->mPreviewCallbackFormat:I

    return-void
.end method

.method private releasePreviewBuffer([B)V
    .locals 2
    .param p1, "buf"    # [B

    .prologue
    .line 9610
    if-nez p1, :cond_1

    .line 9616
    :cond_0
    :goto_0
    return-void

    .line 9612
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$SemCameraPreviewCallbackManager;->mBuffersHeap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9615
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$SemCameraPreviewCallbackManager;->mBuffersHeap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public clearPreviewBuffer()V
    .locals 1

    .prologue
    .line 9564
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$SemCameraPreviewCallbackManager;->mPreviewCallbackFormat:I

    .line 9565
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$SemCameraPreviewCallbackManager;->mBuffersHeap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 9566
    return-void
.end method

.method public getPreviewCallbackFormat()I
    .locals 1

    .prologue
    .line 9569
    iget v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$SemCameraPreviewCallbackManager;->mPreviewCallbackFormat:I

    return v0
.end method

.method public initBuffers(III)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I

    .prologue
    const-wide v4, 0x3ff028f5c28f5c29L    # 1.01

    .line 9573
    iput p3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$SemCameraPreviewCallbackManager;->mPreviewCallbackFormat:I

    .line 9574
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CommonEngine$SemCameraPreviewCallbackManager;->mBuffersHeap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 9576
    const/4 v1, 0x0

    .line 9577
    .local v1, "size":I
    iget v2, p0, Lcom/sec/android/app/camera/engine/CommonEngine$SemCameraPreviewCallbackManager;->mPreviewCallbackFormat:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 9578
    mul-int v2, p1, p2

    mul-int/lit8 v2, v2, 0x4

    int-to-double v2, v2

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 9582
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    .line 9583
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CommonEngine$SemCameraPreviewCallbackManager;->mBuffersHeap:Ljava/util/concurrent/ConcurrentHashMap;

    new-array v3, v1, [B

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9582
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9580
    .end local v0    # "i":I
    :cond_0
    mul-int v2, p1, p2

    mul-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    mul-double/2addr v2, v4

    double-to-int v1, v2

    goto :goto_0

    .line 9585
    .restart local v0    # "i":I
    :cond_1
    return-void
.end method

.method public onPreviewFrame([BLcom/samsung/android/camera/core/SemCamera;)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "arg1"    # Lcom/samsung/android/camera/core/SemCamera;

    .prologue
    .line 9589
    const-string v0, "PreviewCallbackManager"

    const-string v1, "onPreviewFrame"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9591
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$SemCameraPreviewCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$300(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9592
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$SemCameraPreviewCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$300(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$SemCameraPreviewCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getPreviewWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CommonEngine$SemCameraPreviewCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->getPreviewHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/samsung/android/glview/GLContext;->setPreviewData(II[B)V

    .line 9594
    :cond_0
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/engine/CommonEngine$SemCameraPreviewCallbackManager;->setPreviewBuffer(Lcom/samsung/android/camera/core/SemCamera;)V

    .line 9595
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine$SemCameraPreviewCallbackManager;->releasePreviewBuffer([B)V

    .line 9596
    return-void
.end method

.method public setPreviewBuffer(Lcom/samsung/android/camera/core/SemCamera;)V
    .locals 3
    .param p1, "arg1"    # Lcom/samsung/android/camera/core/SemCamera;

    .prologue
    .line 9599
    if-eqz p1, :cond_1

    .line 9600
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$SemCameraPreviewCallbackManager;->mBuffersHeap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 9601
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<[BLjava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9602
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9603
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {p1, v1}, Lcom/samsung/android/camera/core/SemCamera;->addCallbackBuffer([B)V

    goto :goto_0

    .line 9607
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<[BLjava/lang/Boolean;>;"
    :cond_1
    return-void
.end method
