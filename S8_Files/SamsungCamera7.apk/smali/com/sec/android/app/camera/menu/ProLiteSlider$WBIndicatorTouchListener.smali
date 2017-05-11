.class Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorTouchListener;
.super Ljava/lang/Object;
.source "ProLiteSlider.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$TouchListener;
.implements Lcom/samsung/android/glview/GLView$KeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/ProLiteSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WBIndicatorTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;)V
    .locals 0

    .prologue
    .line 794
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;Lcom/sec/android/app/camera/menu/ProLiteSlider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/camera/menu/ProLiteSlider;
    .param p2, "x1"    # Lcom/sec/android/app/camera/menu/ProLiteSlider$1;

    .prologue
    .line 794
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorTouchListener;-><init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;)V

    return-void
.end method

.method private handleIndicatorTouchEvent(Lcom/samsung/android/glview/GLView;)V
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 828
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    # invokes: Lcom/sec/android/app/camera/menu/ProLiteSlider;->getOffset()I
    invoke-static {v2}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$2000(Lcom/sec/android/app/camera/menu/ProLiteSlider;)I

    move-result v2

    add-int v0, v1, v2

    .line 830
    .local v0, "value":I
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderValueSelectListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderValueSelectListener;

    if-eqz v1, :cond_1

    .line 831
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSliderId:I
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$700(Lcom/sec/android/app/camera/menu/ProLiteSlider;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 832
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderValueSelectListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderValueSelectListener;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderValueSelectListener;->onWBValueMenuSelect(I)V

    .line 834
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    # invokes: Lcom/sec/android/app/camera/menu/ProLiteSlider;->setValueText(I)V
    invoke-static {v1, v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$2100(Lcom/sec/android/app/camera/menu/ProLiteSlider;I)V

    .line 835
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->restartSliderMenuTimer()V

    .line 837
    :cond_1
    return-void
.end method


# virtual methods
.method public onKeyDown(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 797
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    .line 798
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorTouchListener;->handleIndicatorTouchEvent(Lcom/samsung/android/glview/GLView;)V

    .line 799
    const/4 v0, 0x1

    .line 801
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
    .line 807
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
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 812
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProLiteSlider;->mWBSelectedIndicator:Lcom/samsung/android/glview/GLView;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$2900(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProLiteSlider;->mWBSelectedIndicator:Lcom/samsung/android/glview/GLView;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$2900(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->resetTint()V

    .line 815
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 816
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProLiteSlider;->LABEL_SELECTED_COLOR:I
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$900(Lcom/sec/android/app/camera/menu/ProLiteSlider;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLView;->setTint(I)V

    .line 817
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    # setter for: Lcom/sec/android/app/camera/menu/ProLiteSlider;->mWBSelectedIndicator:Lcom/samsung/android/glview/GLView;
    invoke-static {v0, p1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$2902(Lcom/sec/android/app/camera/menu/ProLiteSlider;Lcom/samsung/android/glview/GLView;)Lcom/samsung/android/glview/GLView;

    .line 818
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorTouchListener;->handleIndicatorTouchEvent(Lcom/samsung/android/glview/GLView;)V

    .line 823
    :goto_0
    return v1

    .line 820
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProLiteSlider;->LABEL_PRESSED_COLOR:I
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$3000(Lcom/sec/android/app/camera/menu/ProLiteSlider;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLView;->setTint(I)V

    .line 821
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->stopSliderMenuTimer()V

    goto :goto_0
.end method
