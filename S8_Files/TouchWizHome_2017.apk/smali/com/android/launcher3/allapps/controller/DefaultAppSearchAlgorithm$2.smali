.class Lcom/android/launcher3/allapps/controller/DefaultAppSearchAlgorithm$2;
.super Ljava/lang/Object;
.source "DefaultAppSearchAlgorithm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/controller/DefaultAppSearchAlgorithm;->doGalaxyAppsSearch(Ljava/lang/String;Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController$Callbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/DefaultAppSearchAlgorithm;

.field final synthetic val$callback:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController$Callbacks;

.field final synthetic val$query:Ljava/lang/String;

.field final synthetic val$result:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/DefaultAppSearchAlgorithm;Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController$Callbacks;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/controller/DefaultAppSearchAlgorithm;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchAlgorithm$2;->this$0:Lcom/android/launcher3/allapps/controller/DefaultAppSearchAlgorithm;

    iput-object p2, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchAlgorithm$2;->val$callback:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController$Callbacks;

    iput-object p3, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchAlgorithm$2;->val$query:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchAlgorithm$2;->val$result:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchAlgorithm$2;->val$callback:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController$Callbacks;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchAlgorithm$2;->val$query:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchAlgorithm$2;->val$result:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController$Callbacks;->onGalaxyAppsSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 108
    return-void
.end method
