.class Landroid/widget/AbsListView$19;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AbsListView;->semSetFastScrollEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;Z)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/AbsListView;
    .param p2, "val$enabled"    # Z

    .prologue
    .line 11332
    iput-object p1, p0, Landroid/widget/AbsListView$19;->this$0:Landroid/widget/AbsListView;

    iput-boolean p2, p0, Landroid/widget/AbsListView$19;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 11335
    iget-object v0, p0, Landroid/widget/AbsListView$19;->this$0:Landroid/widget/AbsListView;

    iget-boolean v1, p0, Landroid/widget/AbsListView$19;->val$enabled:Z

    invoke-static {v0, v1}, Landroid/widget/AbsListView;->-wrap16(Landroid/widget/AbsListView;Z)V

    .line 11334
    return-void
.end method
