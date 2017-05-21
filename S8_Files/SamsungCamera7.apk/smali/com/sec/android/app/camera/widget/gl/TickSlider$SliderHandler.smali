.class Lcom/sec/android/app/camera/widget/gl/TickSlider$SliderHandler;
.super Landroid/os/Handler;
.source "TickSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/widget/gl/TickSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SliderHandler"
.end annotation


# instance fields
.field private final mSlider:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/camera/widget/gl/TickSlider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/widget/gl/TickSlider;)V
    .locals 1
    .param p1, "slider"    # Lcom/sec/android/app/camera/widget/gl/TickSlider;

    .prologue
    .line 415
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 416
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider$SliderHandler;->mSlider:Ljava/lang/ref/WeakReference;

    .line 417
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider$SliderHandler;->mSlider:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 421
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 425
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider$SliderHandler;->mSlider:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/TickSlider;

    .line 426
    .local v0, "slider":Lcom/sec/android/app/camera/widget/gl/TickSlider;
    if-nez v0, :cond_1

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 430
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 432
    :pswitch_0
    # getter for: Lcom/sec/android/app/camera/widget/gl/TickSlider;->mIsLongPressStarted:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->access$200(Lcom/sec/android/app/camera/widget/gl/TickSlider;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 433
    # invokes: Lcom/sec/android/app/camera/widget/gl/TickSlider;->startSliderExpandAnimation()V
    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->access$300(Lcom/sec/android/app/camera/widget/gl/TickSlider;)V

    .line 434
    # invokes: Lcom/sec/android/app/camera/widget/gl/TickSlider;->stopLongPressTimer()V
    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->access$400(Lcom/sec/android/app/camera/widget/gl/TickSlider;)V

    goto :goto_0

    .line 430
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
