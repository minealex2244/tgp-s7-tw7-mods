.class Lcom/sec/android/app/camera/menu/ProSlider$19;
.super Ljava/lang/Object;
.source "ProSlider.java"

# interfaces
.implements Lcom/samsung/android/glview/GLSlider$SliderChangeListener;


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
    .line 1022
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProSlider$19;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStepChanged(I)V
    .locals 3
    .param p1, "step"    # I

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider$19;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    # setter for: Lcom/sec/android/app/camera/menu/ProSlider;->mValue:I
    invoke-static {v0, p1}, Lcom/sec/android/app/camera/menu/ProSlider;->access$102(Lcom/sec/android/app/camera/menu/ProSlider;I)I

    .line 1026
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider$19;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/ProSlider;->mProSliderValueSelectListener:Lcom/sec/android/app/camera/menu/ProSlider$ProSliderValueSelectListener;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/menu/ProSlider$ProSliderValueSelectListener;->onManualFocusValueMenuSelect(I)V

    .line 1027
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider$19;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->restartSliderMenuTimer()V

    .line 1028
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider$19;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    # invokes: Lcom/sec/android/app/camera/menu/ProSlider;->isTtsEnabled()Z
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProSlider;->access$300(Lcom/sec/android/app/camera/menu/ProSlider;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1029
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider$19;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider$19;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->mProDividedSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;
    invoke-static {v2}, Lcom/sec/android/app/camera/menu/ProSlider;->access$800(Lcom/sec/android/app/camera/menu/ProSlider;)Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/DividedSlider;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider$19;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->mValueText:Lcom/samsung/android/glview/GLText;
    invoke-static {v2}, Lcom/sec/android/app/camera/menu/ProSlider;->access$500(Lcom/sec/android/app/camera/menu/ProSlider;)Lcom/samsung/android/glview/GLText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLText;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/sec/android/app/camera/menu/ProSlider;->speakTtsString(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/menu/ProSlider;->access$600(Lcom/sec/android/app/camera/menu/ProSlider;Ljava/lang/String;)V

    .line 1031
    :cond_0
    return-void
.end method
