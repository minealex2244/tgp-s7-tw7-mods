.class Lcom/sec/android/app/camera/menu/MenuManagerImpl$6;
.super Ljava/lang/Object;
.source "MenuManagerImpl.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/MenuManagerImpl;->onShowMenu(Lcom/sec/android/app/camera/menu/AbstractMenu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/MenuManagerImpl;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/MenuManagerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    .prologue
    .line 884
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl$6;->this$0:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 887
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl$6;->this$0:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    # getter for: Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->access$100(Lcom/sec/android/app/camera/menu/MenuManagerImpl;)Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    move-result-object v0

    const/16 v1, -0x201

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->hideView(I)V

    .line 888
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 892
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 896
    return-void
.end method
