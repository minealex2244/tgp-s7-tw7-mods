.class Lcom/sec/android/app/camera/menu/BaseMenu$2;
.super Ljava/lang/Object;
.source "BaseMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$DragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/BaseMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/BaseMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/BaseMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/menu/BaseMenu;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/BaseMenu$2;->this$0:Lcom/sec/android/app/camera/menu/BaseMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Lcom/samsung/android/glview/GLView;FFFF)V
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "dx"    # F
    .param p5, "dy"    # F

    .prologue
    const/4 v2, 0x0

    .line 175
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getCurrentLeft()F

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v1

    add-float/2addr v0, v1

    add-float/2addr v0, p4

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu$2;->this$0:Lcom/sec/android/app/camera/menu/BaseMenu;

    # getter for: Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_WIDTH:I
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/BaseMenu;->access$000(Lcom/sec/android/app/camera/menu/BaseMenu;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu$2;->this$0:Lcom/sec/android/app/camera/menu/BaseMenu;

    # getter for: Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_WIDTH:I
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/BaseMenu;->access$000(Lcom/sec/android/app/camera/menu/BaseMenu;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getCurrentLeft()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v1

    sub-float p4, v0, v1

    .line 180
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getCurrentTop()F

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v1

    add-float/2addr v0, v1

    add-float/2addr v0, p5

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu$2;->this$0:Lcom/sec/android/app/camera/menu/BaseMenu;

    # getter for: Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_HEIGHT:I
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/BaseMenu;->access$100(Lcom/sec/android/app/camera/menu/BaseMenu;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 181
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu$2;->this$0:Lcom/sec/android/app/camera/menu/BaseMenu;

    # getter for: Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_HEIGHT:I
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/BaseMenu;->access$100(Lcom/sec/android/app/camera/menu/BaseMenu;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getCurrentTop()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v1

    sub-float p5, v0, v1

    .line 185
    :cond_1
    :goto_1
    invoke-virtual {p1, p4, p5}, Lcom/samsung/android/glview/GLView;->moveBaseLayout(FF)V

    .line 186
    return-void

    .line 177
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getCurrentLeft()F

    move-result v0

    add-float/2addr v0, p4

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 178
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getCurrentLeft()F

    move-result v0

    neg-float p4, v0

    goto :goto_0

    .line 182
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getCurrentTop()F

    move-result v0

    add-float/2addr v0, p5

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 183
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getCurrentTop()F

    move-result v0

    neg-float p5, v0

    goto :goto_1
.end method

.method public onDragEnd(Lcom/samsung/android/glview/GLView;FF)V
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu$2;->this$0:Lcom/sec/android/app/camera/menu/BaseMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_floating_camera_mode_pos_x_key"

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu$2;->this$0:Lcom/sec/android/app/camera/menu/BaseMenu;

    iget-object v2, v2, Lcom/sec/android/app/camera/menu/BaseMenu;->mFloatingCameraButton:Lcom/sec/android/app/camera/widget/gl/FloatingButton;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/FloatingButton;->getCurrentLeft()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu$2;->this$0:Lcom/sec/android/app/camera/menu/BaseMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_floating_camera_mode_pos_y_key"

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu$2;->this$0:Lcom/sec/android/app/camera/menu/BaseMenu;

    iget-object v2, v2, Lcom/sec/android/app/camera/menu/BaseMenu;->mFloatingCameraButton:Lcom/sec/android/app/camera/widget/gl/FloatingButton;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/FloatingButton;->getCurrentTop()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 192
    return-void
.end method

.method public onDragStart(Lcom/samsung/android/glview/GLView;FF)V
    .locals 0
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 196
    return-void
.end method
