.class Lcom/sec/android/app/camera/CameraDialog$9;
.super Ljava/lang/Object;
.source "CameraDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 717
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraDialog$9;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .prologue
    .line 720
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraDialog$9;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    # invokes: Lcom/sec/android/app/camera/CameraDialog;->setDialogCheckBoxValueForLocationTag(Z)V
    invoke-static {v0, p2}, Lcom/sec/android/app/camera/CameraDialog;->access$400(Lcom/sec/android/app/camera/CameraDialog;Z)V

    .line 721
    const-string v2, "9054"

    if-eqz p2, :cond_0

    const-wide/16 v0, 0x1

    :goto_0
    invoke-static {v2, v0, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    .line 722
    return-void

    .line 721
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
