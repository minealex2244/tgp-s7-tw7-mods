.class Lcom/sec/android/app/camera/engine/AeAfManagerImpl$MainHandler;
.super Landroid/os/Handler;
.source "AeAfManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/AeAfManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainHandler"
.end annotation


# instance fields
.field private final mManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/camera/engine/AeAfManagerImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)V
    .locals 1
    .param p1, "manager"    # Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    .prologue
    .line 1227
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1228
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$MainHandler;->mManager:Ljava/lang/ref/WeakReference;

    .line 1229
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1233
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$MainHandler;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    .line 1234
    .local v0, "manager":Lcom/sec/android/app/camera/engine/AeAfManagerImpl;
    if-nez v0, :cond_0

    .line 1235
    const-string v1, "AeAfManagerImpl"

    const-string v2, "handleMessage :: Reference is not valid, return."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    :goto_0
    return-void

    .line 1238
    :cond_0
    # invokes: Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->handleMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$000(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;Landroid/os/Message;)V

    goto :goto_0
.end method
