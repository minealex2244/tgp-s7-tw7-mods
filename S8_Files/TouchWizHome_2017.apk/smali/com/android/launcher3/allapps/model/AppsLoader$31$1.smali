.class Lcom/android/launcher3/allapps/model/AppsLoader$31$1;
.super Ljava/lang/Object;
.source "AppsLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/model/AppsLoader$31;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/allapps/model/AppsLoader$31;

.field final synthetic val$oldCallbacks:Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

.field final synthetic val$updates:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/model/AppsLoader$31;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Ljava/util/HashSet;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/launcher3/allapps/model/AppsLoader$31;

    .prologue
    .line 2257
    iput-object p1, p0, Lcom/android/launcher3/allapps/model/AppsLoader$31$1;->this$1:Lcom/android/launcher3/allapps/model/AppsLoader$31;

    iput-object p2, p0, Lcom/android/launcher3/allapps/model/AppsLoader$31$1;->val$oldCallbacks:Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    iput-object p3, p0, Lcom/android/launcher3/allapps/model/AppsLoader$31$1;->val$updates:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2259
    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsLoader$31$1;->this$1:Lcom/android/launcher3/allapps/model/AppsLoader$31;

    iget-object v1, v1, Lcom/android/launcher3/allapps/model/AppsLoader$31;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    iget-object v2, p0, Lcom/android/launcher3/allapps/model/AppsLoader$31$1;->val$oldCallbacks:Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    .line 2260
    # getter for: Lcom/android/launcher3/allapps/model/AppsLoader;->sLauncherModel:Lcom/android/launcher3/LauncherModel;
    invoke-static {}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$4100()Lcom/android/launcher3/LauncherModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherModel;->getLoaderTask()Lcom/android/launcher3/LauncherModel$LoaderTask;

    move-result-object v3

    .line 2259
    # invokes: Lcom/android/launcher3/allapps/model/AppsLoader;->tryGetCallbacks(Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    invoke-static {v1, v2, v3}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$1400(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    move-result-object v0

    .line 2261
    .local v0, "callbacks":Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    if-eqz v0, :cond_0

    .line 2262
    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsLoader$31$1;->val$updates:Ljava/util/HashSet;

    invoke-interface {v0, v1}, Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;->bindRestoreItemsChange(Ljava/util/HashSet;)V

    .line 2264
    :cond_0
    return-void
.end method
