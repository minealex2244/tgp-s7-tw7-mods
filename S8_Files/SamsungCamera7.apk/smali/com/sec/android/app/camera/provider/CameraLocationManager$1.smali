.class Lcom/sec/android/app/camera/provider/CameraLocationManager$1;
.super Ljava/lang/Object;
.source "CameraLocationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/provider/CameraLocationManager;->setLocationRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/provider/CameraLocationManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/provider/CameraLocationManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/provider/CameraLocationManager;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$1;->this$0:Lcom/sec/android/app/camera/provider/CameraLocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 135
    const-string v0, "CameraLocationManager"

    const-string v1, "setLocationRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager$1;->this$0:Lcom/sec/android/app/camera/provider/CameraLocationManager;

    # invokes: Lcom/sec/android/app/camera/provider/CameraLocationManager;->startReceivingLocationUpdates()V
    invoke-static {v0}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->access$000(Lcom/sec/android/app/camera/provider/CameraLocationManager;)V

    .line 137
    return-void
.end method
