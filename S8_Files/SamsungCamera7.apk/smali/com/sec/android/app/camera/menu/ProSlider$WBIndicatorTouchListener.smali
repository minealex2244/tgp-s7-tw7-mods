.class Lcom/sec/android/app/camera/menu/ProSlider$WBIndicatorTouchListener;
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
    name = "WBIndicatorTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/ProSlider;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/menu/ProSlider;)V
    .locals 0

    .prologue
    .line 1097
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProSlider$WBIndicatorTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/menu/ProSlider;Lcom/sec/android/app/camera/menu/ProSlider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/camera/menu/ProSlider;
    .param p2, "x1"    # Lcom/sec/android/app/camera/menu/ProSlider$1;

    .prologue
    .line 1097
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/ProSlider$WBIndicatorTouchListener;-><init>(Lcom/sec/android/app/camera/menu/ProSlider;)V

    return-void
.end method

.method private handleIndicatorTouchEvent(Lcom/samsung/android/glview/GLView;)V
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 1132
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider$WBIndicatorTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    # invokes: Lcom/sec/android/app/camera/menu/ProSlider;->getOffset()I
    invoke-static {v2}, Lcom/sec/android/app/camera/menu/ProSlider;->access$3800(Lcom/sec/android/app/camera/menu/ProSlider;)I

    move-result v2

    add-int v0, v1, v2

    .line 1134
    .local v0, "value":I
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider$WBIndicatorTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderValueSelectListener:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderValueSelectListener;

    if-eqz v1, :cond_1

    .line 1135
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider$WBIndicatorTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->mSliderId:I
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ProSlider;->access$1300(Lcom/sec/android/app/camera/menu/ProSlider;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1136
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider$WBIndicatorTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderValueSelectListener:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderValueSelectListener;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/menu/ProSlider$ProSliderValueSelectListener;->onWBValueMenuSelect(I)V

    .line 1138
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider$WBIndicatorTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    # invokes: Lcom/sec/android/app/camera/menu/ProSlider;->setValueText(I)V
    invoke-static {v1, v0}, Lcom/sec/android/app/camera/menu/ProSlider;->access$3900(Lcom/sec/android/app/camera/menu/ProSlider;I)V

    .line 1139
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider$WBIndicatorTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProSlider;->restartSliderMenuTimer()V

    .line 1141
    :cond_1
    return-void
.end method


# virtual methods
.method public onKeyDown(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1100
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    .line 1101
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/ProSlider$WBIndicatorTouchListener;->handleIndicatorTouchEvent(Lcom/samsung/android/glview/GLView;)V

    .line 1102
    const/4 v0, 0x1

    .line 1104
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
    .line 1110
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

    .line 1115
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider$WBIndicatorTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->mWBSelectedIndicator:Lcom/samsung/android/glview/GLView;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->access$3600(Lcom/sec/android/app/camera/menu/ProSlider;)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1116
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider$WBIndicatorTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->mWBSelectedIndicator:Lcom/samsung/android/glview/GLView;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->access$3600(Lcom/sec/android/app/camera/menu/ProSlider;)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->resetTint()V

    .line 1118
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 1119
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider$WBIndicatorTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_SELECTED_COLOR:I
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->access$1700(Lcom/sec/android/app/camera/menu/ProSlider;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLView;->setTint(I)V

    .line 1120
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider$WBIndicatorTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    # setter for: Lcom/sec/android/app/camera/menu/ProSlider;->mWBSelectedIndicator:Lcom/samsung/android/glview/GLView;
    invoke-static {v0, p1}, Lcom/sec/android/app/camera/menu/ProSlider;->access$3602(Lcom/sec/android/app/camera/menu/ProSlider;Lcom/samsung/android/glview/GLView;)Lcom/samsung/android/glview/GLView;

    .line 1121
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/ProSlider$WBIndicatorTouchListener;->handleIndicatorTouchEvent(Lcom/samsung/android/glview/GLView;)V

    .line 1122
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider$WBIndicatorTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderLoggingListener:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderLoggingListener;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider$WBIndicatorTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->mSliderId:I
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ProSlider;->access$1300(Lcom/sec/android/app/camera/menu/ProSlider;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/menu/ProSlider$ProSliderLoggingListener;->onProSliderLoggingEvent(I)V

    .line 1127
    :goto_0
    return v2

    .line 1124
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider$WBIndicatorTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_PRESSED_COLOR:I
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->access$3700(Lcom/sec/android/app/camera/menu/ProSlider;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLView;->setTint(I)V

    .line 1125
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider$WBIndicatorTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->stopSliderMenuTimer()V

    goto :goto_0
.end method
