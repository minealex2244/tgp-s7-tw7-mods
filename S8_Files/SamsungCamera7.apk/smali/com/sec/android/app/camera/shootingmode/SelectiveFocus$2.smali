.class Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$2;
.super Ljava/lang/Object;
.source "SelectiveFocus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->onSelectiveFocusComplete(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;

    .prologue
    .line 413
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$2;->this$0:Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 416
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$2;->this$0:Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$2;->this$0:Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;

    # getter for: Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->access$200(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    const v2, 0x7f09021b

    const/16 v3, 0x3e8

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v1

    # setter for: Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mSelectiveFocusToast:Landroid/widget/Toast;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->access$502(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 417
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$2;->this$0:Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;

    # getter for: Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mSelectiveFocusToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->access$500(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 418
    return-void
.end method
