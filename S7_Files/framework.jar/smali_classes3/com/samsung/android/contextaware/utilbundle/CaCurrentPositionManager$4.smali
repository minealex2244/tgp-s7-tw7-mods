.class Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$4;
.super Ljava/lang/Object;
.source "CaCurrentPositionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->enable(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    .prologue
    .line 666
    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$4;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 672
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$4;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->-wrap1(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V

    .line 674
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$4;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->-wrap2(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V

    .line 676
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$4;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->-get0(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->-set0(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;I)I

    .line 670
    return-void
.end method
