.class Lcom/android/launcher3/LauncherModel$3;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherModel;->loadWidgetsAndShortcuts([Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherModel;

.field final synthetic val$refresh:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/LauncherModel;

    .prologue
    .line 1146
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$3;->this$0:Lcom/android/launcher3/LauncherModel;

    iput-boolean p2, p0, Lcom/android/launcher3/LauncherModel$3;->val$refresh:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$3;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-boolean v1, p0, Lcom/android/launcher3/LauncherModel$3;->val$refresh:Z

    # invokes: Lcom/android/launcher3/LauncherModel;->updateWidgetsProviders(Z)V
    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherModel;->access$1800(Lcom/android/launcher3/LauncherModel;Z)V

    .line 1150
    return-void
.end method
