.class Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$1;
.super Ljava/lang/Object;
.source "DashboardEditFavoriteAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->onBindViewHolder(Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$DashboardEditFavoriteTileViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;

.field final synthetic val$holder:Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$DashboardEditFavoriteTileViewHolder;

.field final synthetic val$tile:Lcom/android/settingslib/drawer/Tile;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$DashboardEditFavoriteTileViewHolder;Lcom/android/settingslib/drawer/Tile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;
    .param p2, "val$holder"    # Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$DashboardEditFavoriteTileViewHolder;
    .param p3, "val$tile"    # Lcom/android/settingslib/drawer/Tile;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$1;->this$0:Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;

    iput-object p2, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$1;->val$holder:Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$DashboardEditFavoriteTileViewHolder;

    iput-object p3, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$1;->val$tile:Lcom/android/settingslib/drawer/Tile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v6, 0x9

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f110221

    if-ne v2, v3, :cond_0

    .line 184
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$1;->this$0:Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;

    invoke-static {v2}, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->-get0(Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->getFavoriteCount(Landroid/content/Context;)I

    move-result v0

    .line 185
    .local v0, "cnt":I
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$1;->val$holder:Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$DashboardEditFavoriteTileViewHolder;

    iget-object v2, v2, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$DashboardEditFavoriteTileViewHolder;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 186
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$1;->this$0:Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;

    invoke-static {v2}, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->-get0(Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$1;->val$tile:Lcom/android/settingslib/drawer/Tile;

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->removeFavorite(Landroid/content/Context;Lcom/android/settingslib/drawer/Tile;)V

    .line 187
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$1;->val$holder:Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$DashboardEditFavoriteTileViewHolder;

    iget-object v2, v2, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$DashboardEditFavoriteTileViewHolder;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 198
    :goto_0
    invoke-static {}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->UpdateSelectionMenu()V

    .line 182
    .end local v0    # "cnt":I
    :cond_0
    return-void

    .line 189
    .restart local v0    # "cnt":I
    :cond_1
    if-ge v0, v6, :cond_2

    .line 190
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$1;->this$0:Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;

    invoke-static {v2}, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->-get0(Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$1;->val$tile:Lcom/android/settingslib/drawer/Tile;

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->saveFavorite(Landroid/content/Context;Lcom/android/settingslib/drawer/Tile;)V

    .line 191
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$1;->val$holder:Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$DashboardEditFavoriteTileViewHolder;

    iget-object v2, v2, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$DashboardEditFavoriteTileViewHolder;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 193
    :cond_2
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$1;->this$0:Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;

    invoke-static {v2}, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->-get0(Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;)Landroid/content/Context;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0b0e9d

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$1;->this$0:Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;

    invoke-static {v2}, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->-get0(Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 195
    return-void
.end method