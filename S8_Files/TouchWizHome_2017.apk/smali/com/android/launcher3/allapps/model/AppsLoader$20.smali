.class Lcom/android/launcher3/allapps/model/AppsLoader$20;
.super Ljava/lang/Object;
.source "AppsLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/model/AppsLoader;->addOrUpdater([Ljava/lang/String;Ljava/util/HashMap;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

.field final synthetic val$oldCallbacks:Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

.field final synthetic val$removedApps:Ljava/util/ArrayList;

.field final synthetic val$updatedApps:Ljava/util/ArrayList;

.field final synthetic val$user:Lcom/android/launcher3/common/compat/UserHandleCompat;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/model/AppsLoader;

    .prologue
    .line 1569
    iput-object p1, p0, Lcom/android/launcher3/allapps/model/AppsLoader$20;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    iput-object p2, p0, Lcom/android/launcher3/allapps/model/AppsLoader$20;->val$oldCallbacks:Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    iput-object p3, p0, Lcom/android/launcher3/allapps/model/AppsLoader$20;->val$updatedApps:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/launcher3/allapps/model/AppsLoader$20;->val$removedApps:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/android/launcher3/allapps/model/AppsLoader$20;->val$user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1571
    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsLoader$20;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    # invokes: Lcom/android/launcher3/allapps/model/AppsLoader;->getCallback()Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    invoke-static {v1}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$1700(Lcom/android/launcher3/allapps/model/AppsLoader;)Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    move-result-object v0

    .line 1572
    .local v0, "cb":Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsLoader$20;->val$oldCallbacks:Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsLoader$20;->val$oldCallbacks:Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    if-ne v0, v1, :cond_0

    .line 1573
    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsLoader$20;->val$updatedApps:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/allapps/model/AppsLoader$20;->val$removedApps:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher3/allapps/model/AppsLoader$20;->val$user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;->bindAppsChanged(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 1575
    :cond_0
    return-void
.end method
