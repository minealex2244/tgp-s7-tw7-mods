.class Lcom/android/launcher3/allapps/controller/AppsController$16;
.super Ljava/lang/Object;
.source "AppsController.java"

# interfaces
.implements Lcom/android/launcher3/common/base/item/ItemOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/controller/AppsController;->getFirstMatch(Lcom/android/launcher3/common/base/item/ItemOperator;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/AppsController;

.field final synthetic val$operator:Lcom/android/launcher3/common/base/item/ItemOperator;

.field final synthetic val$value:[Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/AppsController;Lcom/android/launcher3/common/base/item/ItemOperator;[Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/controller/AppsController;

    .prologue
    .line 1888
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsController$16;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    iput-object p2, p0, Lcom/android/launcher3/allapps/controller/AppsController$16;->val$operator:Lcom/android/launcher3/common/base/item/ItemOperator;

    iput-object p3, p0, Lcom/android/launcher3/allapps/controller/AppsController$16;->val$value:[Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;Landroid/view/View;)Z
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 1891
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController$16;->val$operator:Lcom/android/launcher3/common/base/item/ItemOperator;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/launcher3/common/base/item/ItemOperator;->evaluate(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1892
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController$16;->val$value:[Landroid/view/View;

    aput-object p2, v1, v0

    .line 1893
    const/4 v0, 0x1

    .line 1895
    :cond_0
    return v0
.end method
