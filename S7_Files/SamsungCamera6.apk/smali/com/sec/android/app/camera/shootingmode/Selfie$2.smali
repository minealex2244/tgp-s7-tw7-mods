.class Lcom/sec/android/app/camera/shootingmode/Selfie$2;
.super Ljava/lang/Object;
.source "Selfie.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/Selfie;->onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/Selfie;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/Selfie;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/shootingmode/Selfie;

    .prologue
    .line 535
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie$2;->this$0:Lcom/sec/android/app/camera/shootingmode/Selfie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 538
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie$2;->this$0:Lcom/sec/android/app/camera/shootingmode/Selfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->access$100(Lcom/sec/android/app/camera/shootingmode/Selfie;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->startWechatSightMode()V

    .line 539
    const/4 v0, 0x0

    return v0
.end method
