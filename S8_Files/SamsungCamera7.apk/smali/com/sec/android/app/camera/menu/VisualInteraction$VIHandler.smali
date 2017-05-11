.class Lcom/sec/android/app/camera/menu/VisualInteraction$VIHandler;
.super Landroid/os/Handler;
.source "VisualInteraction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/VisualInteraction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VIHandler"
.end annotation


# instance fields
.field private final mVisualInteraction:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/camera/menu/VisualInteraction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/menu/VisualInteraction;Landroid/os/Looper;)V
    .locals 1
    .param p1, "visualInteraction"    # Lcom/sec/android/app/camera/menu/VisualInteraction;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1643
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1644
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$VIHandler;->mVisualInteraction:Ljava/lang/ref/WeakReference;

    .line 1645
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1649
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$VIHandler;->mVisualInteraction:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/VisualInteraction;

    .line 1650
    .local v0, "visualInteraction":Lcom/sec/android/app/camera/menu/VisualInteraction;
    if-nez v0, :cond_0

    .line 1651
    const-string v1, "Camera7VI"

    const-string v2, "handleMessage :: visualInteraction is not running, return."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    :goto_0
    return-void

    .line 1654
    :cond_0
    # invokes: Lcom/sec/android/app/camera/menu/VisualInteraction;->handleMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$2100(Lcom/sec/android/app/camera/menu/VisualInteraction;Landroid/os/Message;)V

    goto :goto_0
.end method
