.class Lcom/sec/android/app/camera/Camera$CallStateListener$1;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera$CallStateListener;->onCallStateChanged(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/Camera$CallStateListener;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera$CallStateListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sec/android/app/camera/Camera$CallStateListener;

    .prologue
    .line 7973
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$CallStateListener$1;->this$1:Lcom/sec/android/app/camera/Camera$CallStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 7976
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$CallStateListener$1;->this$1:Lcom/sec/android/app/camera/Camera$CallStateListener;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$CallStateListener;->this$0:Lcom/sec/android/app/camera/Camera;

    const v1, 0x7f0901fb

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 7977
    return-void
.end method
