.class Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu$1;
.super Ljava/lang/Object;
.source "FoodColorTuneSliderMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLSlider$SliderChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu$1;->this$0:Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStepChanged(I)V
    .locals 4
    .param p1, "step"    # I

    .prologue
    .line 69
    const-string v0, "2503"

    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu$1;->this$0:Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFoodColorTuneValue(I)V

    .line 71
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu$1;->this$0:Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;->restartSliderMenuTimer()V

    .line 72
    return-void
.end method
