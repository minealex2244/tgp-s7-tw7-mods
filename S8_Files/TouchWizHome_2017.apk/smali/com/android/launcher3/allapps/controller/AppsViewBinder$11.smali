.class Lcom/android/launcher3/allapps/controller/AppsViewBinder$11;
.super Ljava/lang/Object;
.source "AppsViewBinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/controller/AppsViewBinder;->bindAppsInFolderRemoved(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/AppsViewBinder;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/AppsViewBinder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/controller/AppsViewBinder;

    .prologue
    .line 418
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$11;->this$0:Lcom/android/launcher3/allapps/controller/AppsViewBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$11;->this$0:Lcom/android/launcher3/allapps/controller/AppsViewBinder;

    # getter for: Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;
    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->access$000(Lcom/android/launcher3/allapps/controller/AppsViewBinder;)Lcom/android/launcher3/allapps/controller/AppsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->setAlphabeticList()V

    .line 422
    return-void
.end method
