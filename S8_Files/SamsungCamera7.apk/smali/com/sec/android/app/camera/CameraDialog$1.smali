.class Lcom/sec/android/app/camera/CameraDialog$1;
.super Ljava/lang/Object;
.source "CameraDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CameraDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CameraDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CameraDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/CameraDialog;

    .prologue
    .line 488
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraDialog$1;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 491
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraDialog$1;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->GPS_EULA:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    # invokes: Lcom/sec/android/app/camera/CameraDialog;->showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->access$300(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V

    .line 492
    return-void
.end method
