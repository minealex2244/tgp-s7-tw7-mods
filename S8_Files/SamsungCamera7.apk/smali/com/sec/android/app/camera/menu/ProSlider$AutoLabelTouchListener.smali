.class Lcom/sec/android/app/camera/menu/ProSlider$AutoLabelTouchListener;
.super Ljava/lang/Object;
.source "ProSlider.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$TouchListener;
.implements Lcom/samsung/android/glview/GLView$KeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/ProSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoLabelTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/ProSlider;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/menu/ProSlider;)V
    .locals 0

    .prologue
    .line 781
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProSlider$AutoLabelTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/menu/ProSlider;Lcom/sec/android/app/camera/menu/ProSlider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/camera/menu/ProSlider;
    .param p2, "x1"    # Lcom/sec/android/app/camera/menu/ProSlider$1;

    .prologue
    .line 781
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/ProSlider$AutoLabelTouchListener;-><init>(Lcom/sec/android/app/camera/menu/ProSlider;)V

    return-void
.end method

.method private handleTouchEvent(Lcom/samsung/android/glview/GLView;)V
    .locals 4
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v2, 0x0

    .line 809
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider$AutoLabelTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->mSelectedLabel:Lcom/samsung/android/glview/GLView;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->access$1400(Lcom/sec/android/app/camera/menu/ProSlider;)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider$AutoLabelTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->mSelectedLabel:Lcom/samsung/android/glview/GLView;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->access$1400(Lcom/sec/android/app/camera/menu/ProSlider;)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider$AutoLabelTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_NORMAL_COLOR:I
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ProSlider;->access$1500(Lcom/sec/android/app/camera/menu/ProSlider;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setTint(I)V

    .line 811
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider$AutoLabelTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->mSelectedLabel:Lcom/samsung/android/glview/GLView;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->access$1400(Lcom/sec/android/app/camera/menu/ProSlider;)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setShaderProgram(I)V

    .line 814
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider$AutoLabelTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->mSliderId:I
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->access$1300(Lcom/sec/android/app/camera/menu/ProSlider;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 832
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider$AutoLabelTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->mAutoButton:Lcom/samsung/android/glview/GLButton;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->access$1600(Lcom/sec/android/app/camera/menu/ProSlider;)Lcom/samsung/android/glview/GLButton;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider$AutoLabelTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_SELECTED_COLOR:I
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ProSlider;->access$1700(Lcom/sec/android/app/camera/menu/ProSlider;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTint(I)V

    .line 833
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider$AutoLabelTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->mAutoButton:Lcom/samsung/android/glview/GLButton;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->access$1600(Lcom/sec/android/app/camera/menu/ProSlider;)Lcom/samsung/android/glview/GLButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setSelected(Z)V

    .line 834
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider$AutoLabelTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->access$1800(Lcom/sec/android/app/camera/menu/ProSlider;)Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->setMarkerVisible(I)V

    .line 836
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider$AutoLabelTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->hideValueText()V

    .line 837
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider$AutoLabelTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->restartSliderMenuTimer()V

    .line 838
    :cond_1
    return-void

    .line 816
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider$AutoLabelTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderValueSelectListener:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderValueSelectListener;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/menu/ProSlider$ProSliderValueSelectListener;->onShutterSpeedValueMenuSelect(I)V

    .line 817
    const-string v0, "2027"

    const-string v1, "1"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    goto :goto_0

    .line 820
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider$AutoLabelTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->mAutoButton:Lcom/samsung/android/glview/GLButton;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->access$1600(Lcom/sec/android/app/camera/menu/ProSlider;)Lcom/samsung/android/glview/GLButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v0

    if-nez v0, :cond_1

    .line 823
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider$AutoLabelTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderValueSelectListener:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderValueSelectListener;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/menu/ProSlider$ProSliderValueSelectListener;->onISOValueMenuSelect(I)V

    .line 824
    const-string v0, "2021"

    const-string v1, "1"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    goto :goto_0

    .line 827
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider$AutoLabelTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderValueSelectListener:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderValueSelectListener;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/menu/ProSlider$ProSliderValueSelectListener;->onManualFocusValueMenuSelect(I)V

    .line 828
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider$AutoLabelTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderLoggingListener:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderLoggingListener;

    const-string v1, "1"

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/menu/ProSlider$ProSliderLoggingListener;->onManualFocusAutoLoggingEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 814
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onKeyDown(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 784
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    .line 785
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/ProSlider$AutoLabelTouchListener;->handleTouchEvent(Lcom/samsung/android/glview/GLView;)V

    .line 786
    const/4 v0, 0x1

    .line 788
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 794
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 799
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 800
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/ProSlider$AutoLabelTouchListener;->handleTouchEvent(Lcom/samsung/android/glview/GLView;)V

    .line 801
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider$AutoLabelTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderLoggingListener:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderLoggingListener;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider$AutoLabelTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->mSliderId:I
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ProSlider;->access$1300(Lcom/sec/android/app/camera/menu/ProSlider;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/menu/ProSlider$ProSliderLoggingListener;->onProSliderLoggingEvent(I)V

    .line 805
    :goto_0
    return v2

    .line 803
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider$AutoLabelTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->stopSliderMenuTimer()V

    goto :goto_0
.end method
