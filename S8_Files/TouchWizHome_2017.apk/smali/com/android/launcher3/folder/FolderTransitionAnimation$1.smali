.class Lcom/android/launcher3/folder/FolderTransitionAnimation$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolderTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/FolderTransitionAnimation;->getExitToHomeOrAppsAnimation(Lcom/android/launcher3/folder/view/FolderView;Lcom/android/launcher3/folder/view/FolderIconView;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/FolderTransitionAnimation;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/FolderTransitionAnimation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/folder/FolderTransitionAnimation;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$1;->this$0:Lcom/android/launcher3/folder/FolderTransitionAnimation;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 181
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderTransitionAnimation$1;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 182
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$1;->this$0:Lcom/android/launcher3/folder/FolderTransitionAnimation;

    const/4 v1, 0x0

    # setter for: Lcom/android/launcher3/folder/FolderTransitionAnimation;->mAnimInfoForClosing:Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;
    invoke-static {v0, v1}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->access$102(Lcom/android/launcher3/folder/FolderTransitionAnimation;Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;)Lcom/android/launcher3/folder/FolderTransitionAnimation$AnimationInfo;

    .line 177
    return-void
.end method
