.class Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$7;
.super Ljava/lang/Object;
.source "DefaultAppSearchController.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$7;->this$0:Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 275
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f00f3

    if-ne v0, v1, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$7;->this$0:Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;

    # getter for: Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;
    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->access$500(Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;)Lcom/android/launcher3/allapps/controller/AppsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->chooseViewType()V

    .line 292
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 277
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f00f7

    if-ne v0, v1, :cond_1

    .line 278
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$7;->this$0:Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;

    # getter for: Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;
    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->access$500(Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;)Lcom/android/launcher3/allapps/controller/AppsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->startContactUs()V

    goto :goto_0

    .line 279
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f00f8

    if-ne v0, v1, :cond_2

    .line 280
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$7;->this$0:Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;

    # getter for: Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;
    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->access$500(Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;)Lcom/android/launcher3/allapps/controller/AppsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->onOptionSelectedSearchRecommend()V

    goto :goto_0

    .line 281
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f00f4

    if-ne v0, v1, :cond_3

    .line 282
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$7;->this$0:Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;

    # getter for: Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;
    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->access$500(Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;)Lcom/android/launcher3/allapps/controller/AppsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->prepareTidedUpPages()V

    goto :goto_0

    .line 283
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f00f9

    if-ne v0, v1, :cond_4

    .line 284
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$7;->this$0:Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;

    # getter for: Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;
    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->access$500(Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;)Lcom/android/launcher3/allapps/controller/AppsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsSearchView()Lcom/android/launcher3/allapps/view/AppsSearchContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->setClearRecentAppList()V

    goto :goto_0

    .line 285
    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f00f5

    if-ne v0, v1, :cond_5

    .line 286
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$7;->this$0:Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;

    # getter for: Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;
    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->access$500(Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;)Lcom/android/launcher3/allapps/controller/AppsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->startHomeSetting()V

    goto :goto_0

    .line 287
    :cond_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f00f6

    if-ne v0, v1, :cond_6

    .line 288
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$7;->this$0:Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;

    # getter for: Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;
    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->access$500(Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;)Lcom/android/launcher3/allapps/controller/AppsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->startGalaxyEssentials()V

    goto :goto_0

    .line 290
    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method
