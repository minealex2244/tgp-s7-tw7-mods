.class Landroid/support/v7/widget/FastScroller$1;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/FastScroller;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/FastScroller;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/widget/FastScroller;

    .prologue
    .line 114
    iput-object p1, p0, Landroid/support/v7/widget/FastScroller$1;->this$0:Landroid/support/v7/widget/FastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller$1;->this$0:Landroid/support/v7/widget/FastScroller;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/FastScroller;->hide(I)V

    .line 118
    return-void
.end method
