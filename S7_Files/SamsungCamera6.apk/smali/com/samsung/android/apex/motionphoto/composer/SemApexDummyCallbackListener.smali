.class public Lcom/samsung/android/apex/motionphoto/composer/SemApexDummyCallbackListener;
.super Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;
.source "SemApexDummyCallbackListener.java"


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
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/samsung/android/apex/motionphoto/composer/SemApexDummyCallbackListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/SemApexDummyCallbackListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;)V
    .locals 1
    .param p1, "semMotionPhotoComposer"    # Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexDummyCallbackListener;->mOwner:Ljava/lang/ref/WeakReference;

    .line 37
    return-void
.end method

.method private handleError(IIILjava/lang/Object;)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "ext1"    # I
    .param p3, "ext2"    # I
    .param p4, "data"    # Ljava/lang/Object;

    .prologue
    .line 104
    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexDummyCallbackListener;->mOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 105
    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/SemApexDummyCallbackListener;->TAG:Ljava/lang/String;

    const-string v2, "composer is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexDummyCallbackListener;->mOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    .line 110
    .local v0, "impl":Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;
    iget-object v1, v0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mOnErrorListener:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnErrorListener;

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, v0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mOnErrorListener:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnErrorListener;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnErrorListener;->onError(IIILjava/lang/Object;)V

    goto :goto_0
.end method

.method private handleInfo(IIILjava/lang/Object;)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "ext1"    # I
    .param p3, "ext2"    # I
    .param p4, "data"    # Ljava/lang/Object;

    .prologue
    .line 92
    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexDummyCallbackListener;->mOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 93
    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/SemApexDummyCallbackListener;->TAG:Ljava/lang/String;

    const-string v2, "composer is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexDummyCallbackListener;->mOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    .line 98
    .local v0, "impl":Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;
    iget-object v1, v0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mOnInfoListener:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnInfoListener;

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, v0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mOnInfoListener:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnInfoListener;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnInfoListener;->onInfo(IIILjava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public onApexServerDead(Ljava/lang/String;I)V
    .locals 3
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "token"    # I

    .prologue
    .line 63
    const/16 v0, -0x2700

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/samsung/android/apex/motionphoto/composer/SemApexDummyCallbackListener;->handleError(IIILjava/lang/Object;)V

    .line 64
    return-void
.end method

.method public onRecoderStopped(Ljava/lang/String;)V
    .locals 3
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 88
    const/16 v0, 0x2719

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/samsung/android/apex/motionphoto/composer/SemApexDummyCallbackListener;->handleInfo(IIILjava/lang/Object;)V

    .line 89
    return-void
.end method

.method public onRecorderConnected(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 2
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "token"    # I
    .param p3, "listener"    # Ljava/lang/Object;

    .prologue
    .line 73
    const/16 v0, 0x2716

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/samsung/android/apex/motionphoto/composer/SemApexDummyCallbackListener;->handleInfo(IIILjava/lang/Object;)V

    .line 74
    return-void
.end method

.method public onRecorderDisconnected(Ljava/lang/String;)V
    .locals 3
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 78
    const/16 v0, 0x2717

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/samsung/android/apex/motionphoto/composer/SemApexDummyCallbackListener;->handleInfo(IIILjava/lang/Object;)V

    .line 79
    return-void
.end method

.method public onRecorderReleased(I)V
    .locals 3
    .param p1, "token"    # I

    .prologue
    .line 68
    const/16 v0, 0x2713

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/samsung/android/apex/motionphoto/composer/SemApexDummyCallbackListener;->handleInfo(IIILjava/lang/Object;)V

    .line 69
    return-void
.end method

.method public onRecorderStrated(Ljava/lang/String;)V
    .locals 3
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 83
    const/16 v0, 0x2718

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/samsung/android/apex/motionphoto/composer/SemApexDummyCallbackListener;->handleInfo(IIILjava/lang/Object;)V

    .line 84
    return-void
.end method

.method public onRecordingCancel(Ljava/util/HashMap;)V
    .locals 0
    .param p1, "data"    # Ljava/util/HashMap;

    .prologue
    .line 54
    return-void
.end method

.method public onRecordingComplete(Ljava/util/HashMap;)V
    .locals 0
    .param p1, "data"    # Ljava/util/HashMap;

    .prologue
    .line 50
    return-void
.end method

.method public onRecordingProxyDead(Ljava/lang/String;I)V
    .locals 3
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "token"    # I

    .prologue
    .line 58
    const/16 v0, -0x270e

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/samsung/android/apex/motionphoto/composer/SemApexDummyCallbackListener;->handleError(IIILjava/lang/Object;)V

    .line 59
    return-void
.end method

.method public onRequestId()J
    .locals 2

    .prologue
    .line 41
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public onStoreData(Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;)V
    .locals 0
    .param p1, "data"    # Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;

    .prologue
    .line 46
    return-void
.end method
