.class Lcom/android/launcher3/allapps/controller/AppsController$2;
.super Ljava/lang/Object;
.source "AppsController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/controller/AppsController;->initStageView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/AppsController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/AppsController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/controller/AppsController;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsController$2;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 362
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController$2;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    # setter for: Lcom/android/launcher3/allapps/controller/AppsController;->mApplyTideUpPage:Z
    invoke-static {v0, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->access$102(Lcom/android/launcher3/allapps/controller/AppsController;Z)Z

    .line 363
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController$2;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZ)Z

    .line 364
    return-void
.end method
