.class Lcom/sec/android/app/camera/shootingmode/Auto$AutoHandler;
.super Landroid/os/Handler;
.source "Auto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/Auto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AutoHandler"
.end annotation


# instance fields
.field private final mAuto:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/camera/shootingmode/Auto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/shootingmode/Auto;)V
    .locals 1
    .param p1, "auto"    # Lcom/sec/android/app/camera/shootingmode/Auto;

    .prologue
    .line 1462
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1463
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto$AutoHandler;->mAuto:Ljava/lang/ref/WeakReference;

    .line 1464
    return-void
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto$AutoHandler;->mAuto:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 1488
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1468
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto$AutoHandler;->mAuto:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/Auto;

    .line 1470
    .local v0, "auto":Lcom/sec/android/app/camera/shootingmode/Auto;
    if-nez v0, :cond_1

    .line 1484
    :cond_0
    :goto_0
    return-void

    .line 1474
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1476
    :pswitch_0
    # getter for: Lcom/sec/android/app/camera/shootingmode/Auto;->mStickerGuideText:Lcom/samsung/android/glview/GLText;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Auto;->access$1100(Lcom/sec/android/app/camera/shootingmode/Auto;)Lcom/samsung/android/glview/GLText;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1477
    # getter for: Lcom/sec/android/app/camera/shootingmode/Auto;->mStickerGuideText:Lcom/samsung/android/glview/GLText;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Auto;->access$1100(Lcom/sec/android/app/camera/shootingmode/Auto;)Lcom/samsung/android/glview/GLText;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0

    .line 1474
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
