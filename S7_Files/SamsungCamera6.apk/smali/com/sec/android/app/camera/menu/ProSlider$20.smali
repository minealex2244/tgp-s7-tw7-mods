.class Lcom/sec/android/app/camera/menu/ProSlider$20;
.super Ljava/lang/Object;
.source "ProSlider.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$TouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/ProSlider;->initProSlider()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/ProSlider;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/ProSlider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/menu/ProSlider;

    .prologue
    .line 1033
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProSlider$20;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1036
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 1037
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider$20;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->stopSliderMenuTimer()V

    .line 1038
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider$20;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    # setter for: Lcom/sec/android/app/camera/menu/ProSlider;->mIsManualFocusZoomPressed:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/menu/ProSlider;->access$1502(Lcom/sec/android/app/camera/menu/ProSlider;Z)Z

    .line 1039
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider$20;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    # invokes: Lcom/sec/android/app/camera/menu/ProSlider;->startManualFocusZoomPressTimer()V
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->access$1600(Lcom/sec/android/app/camera/menu/ProSlider;)V

    .line 1049
    :goto_0
    return v2

    .line 1040
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1041
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider$20;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->restartSliderMenuTimer()V

    .line 1042
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider$20;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    # invokes: Lcom/sec/android/app/camera/menu/ProSlider;->stopManualFocusZoom()V
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->access$1700(Lcom/sec/android/app/camera/menu/ProSlider;)V

    .line 1043
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider$20;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    # setter for: Lcom/sec/android/app/camera/menu/ProSlider;->mIsManualFocusZoomPressed:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/camera/menu/ProSlider;->access$1502(Lcom/sec/android/app/camera/menu/ProSlider;Z)Z

    .line 1045
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider$20;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderLoggingListener:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderLoggingListener;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider$20;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->mSliderId:I
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ProSlider;->access$700(Lcom/sec/android/app/camera/menu/ProSlider;)I

    move-result v1

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/menu/ProSlider$ProSliderLoggingListener;->onProSliderLoggingEvent(II)V

    goto :goto_0

    .line 1047
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider$20;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->stopSliderMenuTimer()V

    goto :goto_0
.end method
