.class Lcom/sec/android/app/camera/Camera$18;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera;->sendBroadcastChangeSettings(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;

.field final synthetic val$menuCommandId:I

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/Camera;

    .prologue
    .line 3426
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$18;->this$0:Lcom/sec/android/app/camera/Camera;

    iput p2, p0, Lcom/sec/android/app/camera/Camera$18;->val$menuCommandId:I

    iput-object p3, p0, Lcom/sec/android/app/camera/Camera$18;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 3429
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$18;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/Camera$18;->val$menuCommandId:I

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$18;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v4}, Lcom/sec/android/app/camera/Camera;->access$000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFeatureValueByCommandIdForLogging(IZ)Ljava/lang/String;

    move-result-object v1

    .line 3430
    .local v1, "featureID":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$18;->val$value:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 3431
    .local v0, "cv":Landroid/content/ContentValues;
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$18;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/sec/android/app/camera/util/Util;->broadcastGeneralEventForLogging(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 3432
    return-void
.end method
