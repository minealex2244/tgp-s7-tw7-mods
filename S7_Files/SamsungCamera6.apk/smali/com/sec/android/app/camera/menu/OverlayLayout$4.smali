.class Lcom/sec/android/app/camera/menu/OverlayLayout$4;
.super Ljava/lang/Object;
.source "OverlayLayout.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/OverlayLayout;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/OverlayLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/menu/OverlayLayout;

    .prologue
    .line 1230
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$4;->this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 1233
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->isVisible()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$4;->this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->access$200(Lcom/sec/android/app/camera/menu/OverlayLayout;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1239
    :cond_0
    :goto_0
    return v2

    .line 1236
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$4;->this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayLayout;->mEffectEditButton:Lcom/samsung/android/glview/GLButton;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->access$300(Lcom/sec/android/app/camera/menu/OverlayLayout;)Lcom/samsung/android/glview/GLButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1237
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$4;->this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayLayout;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->access$400(Lcom/sec/android/app/camera/menu/OverlayLayout;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    const/16 v1, 0x232f

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    .line 1238
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$4;->this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->hideTouchEVSlider()V

    goto :goto_0
.end method
