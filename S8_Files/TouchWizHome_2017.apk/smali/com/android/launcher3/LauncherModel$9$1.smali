.class Lcom/android/launcher3/LauncherModel$9$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherModel$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/LauncherModel$9;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel$9;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/launcher3/LauncherModel$9;

    .prologue
    .line 1498
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$9$1;->this$1:Lcom/android/launcher3/LauncherModel$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1501
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$9$1;->this$1:Lcom/android/launcher3/LauncherModel$9;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel$9;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    .line 1502
    return-void
.end method
