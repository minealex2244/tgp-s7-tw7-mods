.class Lcom/sec/android/app/camera/menu/ProSlider$SliderTouchListener;
.super Ljava/lang/Object;
.source "ProSlider.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$TouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/ProSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SliderTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/ProSlider;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/menu/ProSlider;)V
    .locals 0

    .prologue
    .line 1033
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProSlider$SliderTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/menu/ProSlider;Lcom/sec/android/app/camera/menu/ProSlider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/camera/menu/ProSlider;
    .param p2, "x1"    # Lcom/sec/android/app/camera/menu/ProSlider$1;

    .prologue
    .line 1033
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/ProSlider$SliderTouchListener;-><init>(Lcom/sec/android/app/camera/menu/ProSlider;)V

    return-void
.end method


# virtual methods
.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1036
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1037
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider$SliderTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->mSliderId:I
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->access$1300(Lcom/sec/android/app/camera/menu/ProSlider;)I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 1038
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider$SliderTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    # invokes: Lcom/sec/android/app/camera/menu/ProSlider;->stopManualFocusAssist()V
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->access$3100(Lcom/sec/android/app/camera/menu/ProSlider;)V

    .line 1039
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider$SliderTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    # setter for: Lcom/sec/android/app/camera/menu/ProSlider;->mIsManualFocusAssistPressed:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/camera/menu/ProSlider;->access$1002(Lcom/sec/android/app/camera/menu/ProSlider;Z)Z

    .line 1041
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider$SliderTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->restartSliderMenuTimer()V

    .line 1042
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider$SliderTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderLoggingListener:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderLoggingListener;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider$SliderTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->mSliderId:I
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ProSlider;->access$1300(Lcom/sec/android/app/camera/menu/ProSlider;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/menu/ProSlider$ProSliderLoggingListener;->onProSliderLoggingEvent(I)V

    .line 1052
    :cond_2
    :goto_0
    return v2

    .line 1043
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    .line 1044
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider$SliderTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->mSliderId:I
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->access$1300(Lcom/sec/android/app/camera/menu/ProSlider;)I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 1045
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider$SliderTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->stopSliderMenuTimer()V

    .line 1046
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider$SliderTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    # invokes: Lcom/sec/android/app/camera/menu/ProSlider;->startManualFocusAssistPressTimer()V
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->access$3200(Lcom/sec/android/app/camera/menu/ProSlider;)V

    .line 1047
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider$SliderTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    # setter for: Lcom/sec/android/app/camera/menu/ProSlider;->mIsManualFocusAssistPressed:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/camera/menu/ProSlider;->access$1002(Lcom/sec/android/app/camera/menu/ProSlider;Z)Z

    goto :goto_0

    .line 1050
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider$SliderTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->stopSliderMenuTimer()V

    goto :goto_0
.end method
