.class Lcom/sec/android/app/camera/menu/VisualInteraction$5;
.super Ljava/lang/Object;
.source "VisualInteraction.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$AnimationEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/VisualInteraction;->hidePreviewChangingAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/VisualInteraction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/menu/VisualInteraction;

    .prologue
    .line 1059
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/samsung/android/glview/GLView;Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x0

    .line 1062
    const-string v0, "Camera7VI"

    const-string v1, "hidePreviewChangingAnimation.onAnimationEnd"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mIsPreviewChangingAnimationRunning:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$902(Lcom/sec/android/app/camera/menu/VisualInteraction;Z)Z

    .line 1065
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    # getter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$800(Lcom/sec/android/app/camera/menu/VisualInteraction;)Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1066
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    # getter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$1000(Lcom/sec/android/app/camera/menu/VisualInteraction;)Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getVisualInteractionRoot()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    # getter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$800(Lcom/sec/android/app/camera/menu/VisualInteraction;)Lcom/samsung/android/glview/GLImage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 1067
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    # getter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$800(Lcom/sec/android/app/camera/menu/VisualInteraction;)Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 1068
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    # getter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$800(Lcom/sec/android/app/camera/menu/VisualInteraction;)Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1069
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    # getter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$800(Lcom/sec/android/app/camera/menu/VisualInteraction;)Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->clear()V

    .line 1070
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$5;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    # setter for: Lcom/sec/android/app/camera/menu/VisualInteraction;->mPreviewImage:Lcom/samsung/android/glview/GLImage;
    invoke-static {v0, v2}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$802(Lcom/sec/android/app/camera/menu/VisualInteraction;Lcom/samsung/android/glview/GLImage;)Lcom/samsung/android/glview/GLImage;

    .line 1072
    :cond_0
    return-void
.end method

.method public onAnimationStart(Lcom/samsung/android/glview/GLView;Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1076
    const-string v0, "Camera7VI"

    const-string v1, "hidePreviewChangingAnimation.onAnimationStart"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    return-void
.end method
