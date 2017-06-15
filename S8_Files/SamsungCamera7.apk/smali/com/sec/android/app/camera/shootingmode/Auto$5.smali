.class Lcom/sec/android/app/camera/shootingmode/Auto$5;
.super Ljava/lang/Object;
.source "Auto.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/Auto;->showStickerToast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/Auto;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/Auto;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/shootingmode/Auto;

    .prologue
    .line 1421
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Auto$5;->this$0:Lcom/sec/android/app/camera/shootingmode/Auto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto$5;->this$0:Lcom/sec/android/app/camera/shootingmode/Auto;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Auto$5;->this$0:Lcom/sec/android/app/camera/shootingmode/Auto;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Auto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Auto;->access$700(Lcom/sec/android/app/camera/shootingmode/Auto;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    const v2, 0x7f090233

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v1

    # setter for: Lcom/sec/android/app/camera/shootingmode/Auto;->mStickerToast:Landroid/widget/Toast;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Auto;->access$902(Lcom/sec/android/app/camera/shootingmode/Auto;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 1425
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto$5;->this$0:Lcom/sec/android/app/camera/shootingmode/Auto;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Auto;->mStickerToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Auto;->access$900(Lcom/sec/android/app/camera/shootingmode/Auto;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1426
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto$5;->this$0:Lcom/sec/android/app/camera/shootingmode/Auto;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Auto;->mStickerToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Auto;->access$900(Lcom/sec/android/app/camera/shootingmode/Auto;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1427
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto$5;->this$0:Lcom/sec/android/app/camera/shootingmode/Auto;

    const/4 v1, 0x1

    # setter for: Lcom/sec/android/app/camera/shootingmode/Auto;->mIsAlreadyShowStickerToast:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Auto;->access$1002(Lcom/sec/android/app/camera/shootingmode/Auto;Z)Z

    .line 1430
    :cond_0
    return-void
.end method
