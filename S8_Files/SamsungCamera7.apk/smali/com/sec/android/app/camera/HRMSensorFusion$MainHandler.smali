.class Lcom/sec/android/app/camera/HRMSensorFusion$MainHandler;
.super Landroid/os/Handler;
.source "HRMSensorFusion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/HRMSensorFusion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainHandler"
.end annotation


# instance fields
.field private mHRMSensorFusion:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/camera/HRMSensorFusion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/HRMSensorFusion;)V
    .locals 1
    .param p1, "hrmSensorFusion"    # Lcom/sec/android/app/camera/HRMSensorFusion;

    .prologue
    .line 202
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 203
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/HRMSensorFusion$MainHandler;->mHRMSensorFusion:Ljava/lang/ref/WeakReference;

    .line 204
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 208
    iget-object v1, p0, Lcom/sec/android/app/camera/HRMSensorFusion$MainHandler;->mHRMSensorFusion:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/HRMSensorFusion;

    .line 209
    .local v0, "hrmSensorFusion":Lcom/sec/android/app/camera/HRMSensorFusion;
    if-nez v0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 212
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 214
    :pswitch_0
    const-string v1, "HRMSensorFusion"

    const-string v2, "Start capture by HRM sensor"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 v1, 0x1

    # setter for: Lcom/sec/android/app/camera/HRMSensorFusion;->mHRMSensorCaptureStart:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/HRMSensorFusion;->access$002(Lcom/sec/android/app/camera/HRMSensorFusion;Z)Z

    goto :goto_0

    .line 218
    :pswitch_1
    const-string v1, "HRMSensorFusion"

    const-string v2, "Timeout capture by HRM sensor"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/camera/HRMSensorFusion;->mHRMSensorCaptureStart:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/HRMSensorFusion;->access$002(Lcom/sec/android/app/camera/HRMSensorFusion;Z)Z

    goto :goto_0

    .line 212
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
