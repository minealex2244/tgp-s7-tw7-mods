.class Lcom/android/launcher3/allapps/controller/AppsReorderController$1;
.super Ljava/lang/Object;
.source "AppsReorderController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/controller/AppsReorderController;->removeEmptyCellsAndViews(Ljava/util/ArrayList;Lcom/android/launcher3/allapps/controller/DragAppIcon;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/launcher3/allapps/controller/DragAppIcon;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/AppsReorderController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/AppsReorderController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/controller/AppsReorderController;

    .prologue
    .line 473
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController$1;->this$0:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/launcher3/allapps/controller/DragAppIcon;Lcom/android/launcher3/allapps/controller/DragAppIcon;)I
    .locals 4
    .param p1, "lhs"    # Lcom/android/launcher3/allapps/controller/DragAppIcon;
    .param p2, "rhs"    # Lcom/android/launcher3/allapps/controller/DragAppIcon;

    .prologue
    .line 476
    iget-wide v0, p2, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x64

    iget v1, p2, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    add-int/2addr v0, v1

    iget-wide v2, p1, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    long-to-int v1, v2

    mul-int/lit8 v1, v1, 0x64

    iget v2, p1, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 473
    check-cast p1, Lcom/android/launcher3/allapps/controller/DragAppIcon;

    check-cast p2, Lcom/android/launcher3/allapps/controller/DragAppIcon;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/allapps/controller/AppsReorderController$1;->compare(Lcom/android/launcher3/allapps/controller/DragAppIcon;Lcom/android/launcher3/allapps/controller/DragAppIcon;)I

    move-result v0

    return v0
.end method
