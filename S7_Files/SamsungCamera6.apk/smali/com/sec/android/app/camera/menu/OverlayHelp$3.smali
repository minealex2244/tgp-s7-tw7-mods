.class Lcom/sec/android/app/camera/menu/OverlayHelp$3;
.super Ljava/lang/Object;
.source "OverlayHelp.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/OverlayHelp;->hideHelp(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/OverlayHelp;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/menu/OverlayHelp;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$3;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$3;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    # invokes: Lcom/sec/android/app/camera/menu/OverlayHelp;->removePalmCaptureGuide()V
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$200(Lcom/sec/android/app/camera/menu/OverlayHelp;)V

    .line 197
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 201
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 205
    return-void
.end method
