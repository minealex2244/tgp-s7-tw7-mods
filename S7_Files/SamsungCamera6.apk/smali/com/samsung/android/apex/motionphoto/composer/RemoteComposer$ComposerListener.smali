.class Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$ComposerListener;
.super Lcom/samsung/android/apex/service/IMotionPhotoComposerListener$Stub;
.source "RemoteComposer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ComposerListener"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mOwner:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-listener"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$ComposerListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;)V
    .locals 1
    .param p1, "owner"    # Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    .prologue
    .line 401
    invoke-direct {p0}, Lcom/samsung/android/apex/service/IMotionPhotoComposerListener$Stub;-><init>()V

    .line 402
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$ComposerListener;->mOwner:Ljava/lang/ref/WeakReference;

    .line 403
    return-void
.end method


# virtual methods
.method public notify(IIILandroid/os/Bundle;)V
    .locals 9
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 407
    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$ComposerListener;->TAG:Ljava/lang/String;

    const-string v3, "notify: what=%d, arg1=%d, arg2=%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$ComposerListener;->mOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 410
    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$ComposerListener;->TAG:Ljava/lang/String;

    const-string v3, "composer is already released!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :goto_0
    return-void

    .line 414
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$ComposerListener;->mOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    .line 416
    .local v0, "impl":Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 418
    :pswitch_0
    iget-object v2, v0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mOnInfoListener:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnInfoListener;

    if-nez v2, :cond_1

    .line 419
    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$ComposerListener;->TAG:Ljava/lang/String;

    const-string v3, "onInfo listener is not set"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 423
    :cond_1
    iget-object v1, v0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mOnInfoListener:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnInfoListener;

    .line 425
    .local v1, "l":Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnInfoListener;
    invoke-interface {v1, p2, p3, v7, v8}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnInfoListener;->onInfo(IIILjava/lang/Object;)V

    goto :goto_0

    .line 429
    .end local v1    # "l":Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnInfoListener;
    :pswitch_1
    iget-object v2, v0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mOnErrorListener:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnErrorListener;

    if-nez v2, :cond_2

    .line 430
    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$ComposerListener;->TAG:Ljava/lang/String;

    const-string v3, "onError listener is not set"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 434
    :cond_2
    iget-object v1, v0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mOnErrorListener:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnErrorListener;

    .line 436
    .local v1, "l":Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnErrorListener;
    invoke-interface {v1, p2, p3, v7, v8}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnErrorListener;->onError(IIILjava/lang/Object;)V

    .line 438
    invoke-virtual {v0}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->release()V

    goto :goto_0

    .line 416
    nop

    :pswitch_data_0
    .packed-switch 0xbb9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
