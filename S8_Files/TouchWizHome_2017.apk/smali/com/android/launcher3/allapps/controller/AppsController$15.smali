.class Lcom/android/launcher3/allapps/controller/AppsController$15;
.super Ljava/lang/Object;
.source "AppsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/controller/AppsController;->onOptionSelectedSearchRecommend()V
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
    .line 1814
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsController$15;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1817
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController$15;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->searchSettingCheck()V

    .line 1821
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController$15;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZ)Z

    .line 1822
    return-void
.end method
