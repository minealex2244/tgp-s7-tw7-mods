.class Lcom/android/launcher3/home/Workspace$6;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/Workspace;->snapToPage(IIZLandroid/animation/TimeInterpolator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/Workspace;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/Workspace;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/Workspace;

    .prologue
    .line 893
    iput-object p1, p0, Lcom/android/launcher3/home/Workspace$6;->this$0:Lcom/android/launcher3/home/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 896
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace$6;->this$0:Lcom/android/launcher3/home/Workspace;

    # getter for: Lcom/android/launcher3/home/Workspace;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;
    invoke-static {v0}, Lcom/android/launcher3/home/Workspace;->access$400(Lcom/android/launcher3/home/Workspace;)Lcom/android/launcher3/home/ZeroPageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/home/ZeroPageController;->switchToZeroPage()V

    .line 897
    return-void
.end method
