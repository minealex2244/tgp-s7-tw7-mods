.class Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$8;
.super Ljava/lang/Object;
.source "EffectThumbnailListMenu.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->startAnimationForChangingCategory(ILcom/samsung/android/glview/GLGridList;Lcom/samsung/android/glview/GLGridList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

.field final synthetic val$inList:Lcom/samsung/android/glview/GLGridList;

.field final synthetic val$outList:Lcom/samsung/android/glview/GLGridList;

.field final synthetic val$showInAnim:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;Lcom/samsung/android/glview/GLGridList;Lcom/samsung/android/glview/GLGridList;Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    .prologue
    .line 1936
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$8;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    iput-object p2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$8;->val$outList:Lcom/samsung/android/glview/GLGridList;

    iput-object p3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$8;->val$inList:Lcom/samsung/android/glview/GLGridList;

    iput-object p4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$8;->val$showInAnim:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 1939
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$8;->val$outList:Lcom/samsung/android/glview/GLGridList;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLGridList;->setVisibility(I)V

    .line 1940
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$8;->val$inList:Lcom/samsung/android/glview/GLGridList;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$8;->val$showInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLGridList;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1941
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$8;->val$inList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLGridList;->startAnimation()V

    .line 1942
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$8;->val$inList:Lcom/samsung/android/glview/GLGridList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLGridList;->setVisibility(I)V

    .line 1943
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 1947
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 1951
    return-void
.end method
