.class Lcom/sec/android/app/camera/menu/ProSlider$SliderChangeListener;
.super Ljava/lang/Object;
.source "ProSlider.java"

# interfaces
.implements Lcom/samsung/android/glview/GLSlider$SliderChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/ProSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SliderChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/ProSlider;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/menu/ProSlider;)V
    .locals 0

    .prologue
    .line 1026
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProSlider$SliderChangeListener;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/menu/ProSlider;Lcom/sec/android/app/camera/menu/ProSlider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/camera/menu/ProSlider;
    .param p2, "x1"    # Lcom/sec/android/app/camera/menu/ProSlider$1;

    .prologue
    .line 1026
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/ProSlider$SliderChangeListener;-><init>(Lcom/sec/android/app/camera/menu/ProSlider;)V

    return-void
.end method


# virtual methods
.method public onStepChanged(I)V
    .locals 1
    .param p1, "step"    # I

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider$SliderChangeListener;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    # invokes: Lcom/sec/android/app/camera/menu/ProSlider;->setChangedStep(I)V
    invoke-static {v0, p1}, Lcom/sec/android/app/camera/menu/ProSlider;->access$3000(Lcom/sec/android/app/camera/menu/ProSlider;I)V

    .line 1030
    return-void
.end method
