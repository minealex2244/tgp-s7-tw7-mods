.class Lcom/android/launcher3/LauncherModel$7;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherModel;->updateItemInfoToAppsItems(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherModel;

.field final synthetic val$updateItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/LauncherModel;

    .prologue
    .line 1233
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$7;->this$0:Lcom/android/launcher3/LauncherModel;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$7;->val$updateItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1236
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$7;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mAppsLoader:Lcom/android/launcher3/allapps/model/AppsLoader;

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$7;->val$updateItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/launcher3/allapps/model/AppsLoader;->addViewAndUpdateItemInfoToDb(Ljava/util/ArrayList;ZZ)V

    .line 1237
    return-void
.end method