.class Lcom/android/launcher3/LauncherModel$8$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherModel$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/LauncherModel$8;

.field final synthetic val$badgeItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel$8;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/launcher3/LauncherModel$8;

    .prologue
    .line 1301
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$8$1;->this$1:Lcom/android/launcher3/LauncherModel$8;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$8$1;->val$badgeItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$8$1;->this$1:Lcom/android/launcher3/LauncherModel$8;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$8;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$8$1;->val$badgeItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherModel;->onBadgeBindingCompleted(Ljava/util/ArrayList;)V

    .line 1305
    return-void
.end method