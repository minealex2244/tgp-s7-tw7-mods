.class Lcom/sec/android/app/camera/shootingmode/Selfie$SelfieHandler;
.super Landroid/os/Handler;
.source "Selfie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/Selfie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelfieHandler"
.end annotation


# instance fields
.field private final mSelfie:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/camera/shootingmode/Selfie;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/shootingmode/Selfie;)V
    .locals 1
    .param p1, "selfie"    # Lcom/sec/android/app/camera/shootingmode/Selfie;

    .prologue
    .line 1673
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1674
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie$SelfieHandler;->mSelfie:Ljava/lang/ref/WeakReference;

    .line 1675
    return-void
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 1698
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie$SelfieHandler;->mSelfie:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 1699
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1679
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie$SelfieHandler;->mSelfie:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/Selfie;

    .line 1681
    .local v0, "selfie":Lcom/sec/android/app/camera/shootingmode/Selfie;
    if-nez v0, :cond_1

    .line 1695
    :cond_0
    :goto_0
    return-void

    .line 1685
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1687
    :pswitch_0
    # getter for: Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerGuideText:Lcom/samsung/android/glview/GLText;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->access$1400(Lcom/sec/android/app/camera/shootingmode/Selfie;)Lcom/samsung/android/glview/GLText;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1688
    # getter for: Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerGuideText:Lcom/samsung/android/glview/GLText;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->access$1400(Lcom/sec/android/app/camera/shootingmode/Selfie;)Lcom/samsung/android/glview/GLText;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0

    .line 1685
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
