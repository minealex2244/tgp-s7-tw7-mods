.class Lcom/android/launcher3/home/HomeBindController$10;
.super Ljava/lang/Object;
.source "HomeBindController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeBindController;->finishBindingItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeBindController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeBindController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/HomeBindController;

    .prologue
    .line 524
    iput-object p1, p0, Lcom/android/launcher3/home/HomeBindController$10;->this$0:Lcom/android/launcher3/home/HomeBindController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 527
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/logging/GSIMLogging;->runFirstAppStatusLogging()V

    .line 528
    return-void
.end method
