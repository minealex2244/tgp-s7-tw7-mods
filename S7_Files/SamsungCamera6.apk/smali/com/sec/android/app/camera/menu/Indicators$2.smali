.class Lcom/sec/android/app/camera/menu/Indicators$2;
.super Ljava/lang/Object;
.source "Indicators.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/Indicators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/Indicators;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/Indicators;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/menu/Indicators;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/Indicators$2;->this$0:Lcom/sec/android/app/camera/menu/Indicators;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 81
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_PREVIEW_FIT_TO_FULL_SCREEN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators$2;->this$0:Lcom/sec/android/app/camera/menu/Indicators;

    # getter for: Lcom/sec/android/app/camera/menu/Indicators;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/Indicators;->access$000(Lcom/sec/android/app/camera/menu/Indicators;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Indicators$2;->this$0:Lcom/sec/android/app/camera/menu/Indicators;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/Indicators;->setViewModeIndicator(I)V

    .line 84
    :cond_0
    return-void
.end method
