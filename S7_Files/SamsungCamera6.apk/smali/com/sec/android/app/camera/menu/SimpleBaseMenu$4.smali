.class Lcom/sec/android/app/camera/menu/SimpleBaseMenu$4;
.super Ljava/lang/Object;
.source "SimpleBaseMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$AnimationEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->makeRecordingMenuVIAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/SimpleBaseMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/SimpleBaseMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/menu/SimpleBaseMenu;

    .prologue
    .line 762
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu$4;->this$0:Lcom/sec/android/app/camera/menu/SimpleBaseMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/samsung/android/glview/GLView;Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 766
    const-string v0, "SimpleBaseMenu"

    const-string v1, "onAnimationEnd - mTopVIButton"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu$4;->this$0:Lcom/sec/android/app/camera/menu/SimpleBaseMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu$4;->this$0:Lcom/sec/android/app/camera/menu/SimpleBaseMenu;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 768
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu$4;->this$0:Lcom/sec/android/app/camera/menu/SimpleBaseMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu$4;->this$0:Lcom/sec/android/app/camera/menu/SimpleBaseMenu;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mTopParentView:Lcom/samsung/android/glview/GLView;

    iput-object v1, v0, Lcom/samsung/android/glview/GLButton;->mParent:Lcom/samsung/android/glview/GLView;

    .line 769
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu$4;->this$0:Lcom/sec/android/app/camera/menu/SimpleBaseMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    .line 770
    return-void
.end method

.method public onAnimationStart(Lcom/samsung/android/glview/GLView;Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 774
    const-string v0, "SimpleBaseMenu"

    const-string v1, "onAnimationStart - mTopVIButton"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    return-void
.end method
