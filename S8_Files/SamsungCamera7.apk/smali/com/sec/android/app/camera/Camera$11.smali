.class Lcom/sec/android/app/camera/Camera$11;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera;->finishOnError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/Camera;

    .prologue
    .line 773
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$11;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 776
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$11;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$11;->this$0:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f090124

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 777
    return-void
.end method
