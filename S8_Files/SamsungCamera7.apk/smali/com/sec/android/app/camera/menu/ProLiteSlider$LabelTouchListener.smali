.class Lcom/sec/android/app/camera/menu/ProLiteSlider$LabelTouchListener;
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
    name = "LabelTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;)V
    .locals 0

    .prologue
    .line 660
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$LabelTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;Lcom/sec/android/app/camera/menu/ProLiteSlider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/camera/menu/ProLiteSlider;
    .param p2, "x1"    # Lcom/sec/android/app/camera/menu/ProLiteSlider$1;

    .prologue
    .line 660
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/ProLiteSlider$LabelTouchListener;-><init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;)V

    return-void
.end method

.method private handleTouchEvent(Lcom/samsung/android/glview/GLView;)V
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v2, 0x0

    .line 687
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$LabelTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$1000(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->getMarkerVisible()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 688
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$LabelTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$1000(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->setMarkerVisible(I)V

    .line 690
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$LabelTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProLiteSlider;->mAutoButton:Lcom/samsung/android/glview/GLButton;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$800(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/samsung/android/glview/GLButton;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$LabelTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProLiteSlider;->mAutoButton:Lcom/samsung/android/glview/GLButton;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$800(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/samsung/android/glview/GLButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 691
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$LabelTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProLiteSlider;->mAutoButton:Lcom/samsung/android/glview/GLButton;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$800(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/samsung/android/glview/GLButton;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$LabelTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProLiteSlider;->LABEL_NORMAL_COLOR:I
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$600(Lcom/sec/android/app/camera/menu/ProLiteSlider;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTint(I)V

    .line 692
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$LabelTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProLiteSlider;->mAutoButton:Lcom/samsung/android/glview/GLButton;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$800(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/samsung/android/glview/GLButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setSelected(Z)V

    .line 694
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$LabelTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSelectedLabel:Lcom/samsung/android/glview/GLView;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$500(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 695
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$LabelTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSelectedLabel:Lcom/samsung/android/glview/GLView;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$500(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$LabelTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProLiteSlider;->LABEL_NORMAL_COLOR:I
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$600(Lcom/sec/android/app/camera/menu/ProLiteSlider;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setTint(I)V

    .line 697
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$LabelTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProLiteSlider;->LABEL_SELECTED_COLOR:I
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$900(Lcom/sec/android/app/camera/menu/ProLiteSlider;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLView;->setTint(I)V

    .line 698
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$LabelTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    # setter for: Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSelectedLabel:Lcom/samsung/android/glview/GLView;
    invoke-static {v0, p1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$502(Lcom/sec/android/app/camera/menu/ProLiteSlider;Lcom/samsung/android/glview/GLView;)Lcom/samsung/android/glview/GLView;

    .line 699
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$LabelTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$1000(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->moveStep(I)Z

    .line 700
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$LabelTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->restartSliderMenuTimer()V

    .line 701
    return-void
.end method


# virtual methods
.method public onKeyDown(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 663
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    .line 664
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/ProLiteSlider$LabelTouchListener;->handleTouchEvent(Lcom/samsung/android/glview/GLView;)V

    .line 665
    const/4 v0, 0x1

    .line 667
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
    .line 673
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

    .line 678
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 679
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/ProLiteSlider$LabelTouchListener;->handleTouchEvent(Lcom/samsung/android/glview/GLView;)V

    .line 683
    :goto_0
    return v1

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$LabelTouchListener;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->stopSliderMenuTimer()V

    goto :goto_0
.end method
