.class public Lcom/android/systemui/recents/views/NestedAppListView$NestedAppListViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "NestedAppListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/views/NestedAppListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NestedAppListViewAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/android/systemui/recents/views/NestedAppListView$NestedViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/systemui/recents/views/NestedAppListView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/views/NestedAppListView;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/recents/views/NestedAppListView;
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/systemui/recents/views/NestedAppListView$NestedAppListViewAdapter;->this$0:Lcom/android/systemui/recents/views/NestedAppListView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 166
    iput-object p2, p0, Lcom/android/systemui/recents/views/NestedAppListView$NestedAppListViewAdapter;->mContext:Landroid/content/Context;

    .line 167
    iget-object v0, p0, Lcom/android/systemui/recents/views/NestedAppListView$NestedAppListViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/NestedAppListView$NestedAppListViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 165
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/systemui/recents/views/NestedAppListView$NestedAppListViewAdapter;->this$0:Lcom/android/systemui/recents/views/NestedAppListView;

    iget-object v0, v0, Lcom/android/systemui/recents/views/NestedAppListView;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 178
    check-cast p1, Lcom/android/systemui/recents/views/NestedAppListView$NestedViewHolder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/views/NestedAppListView$NestedAppListViewAdapter;->onBindViewHolder(Lcom/android/systemui/recents/views/NestedAppListView$NestedViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/systemui/recents/views/NestedAppListView$NestedViewHolder;I)V
    .locals 5
    .param p1, "holder"    # Lcom/android/systemui/recents/views/NestedAppListView$NestedViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 179
    const-string/jumbo v0, "NestedAppListView"

    const-string/jumbo v1, "onBindViewHolder(%d)\n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 171
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/views/NestedAppListView$NestedAppListViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/recents/views/NestedAppListView$NestedViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/recents/views/NestedAppListView$NestedViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 172
    iget-object v2, p0, Lcom/android/systemui/recents/views/NestedAppListView$NestedAppListViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040116

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 173
    .local v0, "convertView":Landroid/view/View;
    new-instance v1, Lcom/android/systemui/recents/views/NestedAppListView$NestedViewHolder;

    iget-object v2, p0, Lcom/android/systemui/recents/views/NestedAppListView$NestedAppListViewAdapter;->this$0:Lcom/android/systemui/recents/views/NestedAppListView;

    invoke-direct {v1, v2, v0}, Lcom/android/systemui/recents/views/NestedAppListView$NestedViewHolder;-><init>(Lcom/android/systemui/recents/views/NestedAppListView;Landroid/view/View;)V

    .line 174
    .local v1, "holder":Lcom/android/systemui/recents/views/NestedAppListView$NestedViewHolder;
    return-object v1
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 183
    check-cast p1, Lcom/android/systemui/recents/views/NestedAppListView$NestedViewHolder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/NestedAppListView$NestedAppListViewAdapter;->onViewAttachedToWindow(Lcom/android/systemui/recents/views/NestedAppListView$NestedViewHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lcom/android/systemui/recents/views/NestedAppListView$NestedViewHolder;)V
    .locals 16
    .param p1, "holder"    # Lcom/android/systemui/recents/views/NestedAppListView$NestedViewHolder;

    .prologue
    .line 184
    invoke-super/range {p0 .. p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 186
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/views/NestedAppListView$NestedViewHolder;->getAdapterPosition()I

    move-result v9

    .line 187
    .local v9, "position":I
    const/4 v11, -0x1

    if-ne v9, v11, :cond_0

    .line 188
    return-void

    .line 190
    :cond_0
    const-string/jumbo v11, "NestedAppListView"

    const-string/jumbo v12, "onViewAttachedToWindow(%d)\n"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/recents/views/NestedAppListView$NestedAppListViewAdapter;->this$0:Lcom/android/systemui/recents/views/NestedAppListView;

    iget-object v11, v11, Lcom/android/systemui/recents/views/NestedAppListView;->mList:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;

    .line 192
    .local v1, "appInfo":Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;
    iget-object v11, v1, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v11, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v11}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    .line 195
    .local v3, "componentName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/systemui/recents/views/NestedAppListView$NestedViewHolder;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 196
    .local v7, "p":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/recents/views/NestedAppListView$NestedAppListViewAdapter;->this$0:Lcom/android/systemui/recents/views/NestedAppListView;

    iget v11, v11, Lcom/android/systemui/recents/views/NestedAppListView;->mDisplayOrientation:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    .line 197
    sget v11, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->mItemContentWidth:I

    iput v11, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 202
    :goto_0
    const/4 v5, 0x0

    .line 203
    .local v5, "hasIconCache":Z
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/recents/views/NestedAppListView$NestedAppListViewAdapter;->this$0:Lcom/android/systemui/recents/views/NestedAppListView;

    iget-object v11, v11, Lcom/android/systemui/recents/views/NestedAppListView;->mLoader:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    invoke-virtual {v11, v3}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->getIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 204
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/systemui/recents/views/NestedAppListView$NestedViewHolder;->iconView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/recents/views/NestedAppListView$NestedAppListViewAdapter;->this$0:Lcom/android/systemui/recents/views/NestedAppListView;

    iget-object v12, v12, Lcom/android/systemui/recents/views/NestedAppListView;->mLoader:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    invoke-virtual {v12, v3}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->getIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 205
    const/4 v5, 0x1

    .line 208
    :cond_1
    iget-object v11, v1, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;->title:Ljava/lang/String;

    if-eqz v11, :cond_2

    .line 209
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/systemui/recents/views/NestedAppListView$NestedViewHolder;->labelView:Landroid/widget/TextView;

    iget-object v12, v1, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;->title:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/systemui/recents/views/NestedAppListView$NestedViewHolder;->itemView:Landroid/view/View;

    iget-object v12, v1, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;->title:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 213
    :cond_2
    iget-object v11, v1, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v11, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 214
    .local v8, "packageName":Ljava/lang/String;
    iget-object v11, v1, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v11, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v11, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 215
    .local v10, "taskAffinity":Ljava/lang/String;
    iget-boolean v11, v1, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;->supportMultiInstance:Z

    if-nez v11, :cond_7

    .line 216
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/recents/views/NestedAppListView$NestedAppListViewAdapter;->this$0:Lcom/android/systemui/recents/views/NestedAppListView;

    iget-object v11, v11, Lcom/android/systemui/recents/views/NestedAppListView;->mTopRunningTaskPackageName:Ljava/lang/String;

    if-eqz v11, :cond_7

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/recents/views/NestedAppListView$NestedAppListViewAdapter;->this$0:Lcom/android/systemui/recents/views/NestedAppListView;

    iget-object v11, v11, Lcom/android/systemui/recents/views/NestedAppListView;->mTopRunningTaskAffinity:Ljava/lang/String;

    if-eqz v11, :cond_7

    .line 217
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/recents/views/NestedAppListView$NestedAppListViewAdapter;->this$0:Lcom/android/systemui/recents/views/NestedAppListView;

    iget-object v11, v11, Lcom/android/systemui/recents/views/NestedAppListView;->mTopRunningTaskPackageName:Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 215
    if-eqz v11, :cond_7

    .line 218
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/recents/views/NestedAppListView$NestedAppListViewAdapter;->this$0:Lcom/android/systemui/recents/views/NestedAppListView;

    iget-object v11, v11, Lcom/android/systemui/recents/views/NestedAppListView;->mTopRunningTaskAffinity:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 220
    :goto_1
    if-nez v5, :cond_4

    .line 221
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/systemui/recents/views/NestedAppListView$NestedViewHolder;->iconView:Landroid/widget/ImageView;

    const v12, 0x3f333333    # 0.7f

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 223
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/systemui/recents/views/NestedAppListView$NestedViewHolder;->asyncTask:Ljava/lang/ref/WeakReference;

    if-eqz v11, :cond_3

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/systemui/recents/views/NestedAppListView$NestedViewHolder;->asyncTask:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 224
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/systemui/recents/views/NestedAppListView$NestedViewHolder;->asyncTask:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/RecentsAppListLoader$LoadIconDynamicAsyncTask;

    .line 225
    .local v2, "asyncTask":Lcom/android/systemui/recents/model/RecentsAppListLoader$LoadIconDynamicAsyncTask;
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Lcom/android/systemui/recents/model/RecentsAppListLoader$LoadIconDynamicAsyncTask;->cancel(Z)Z

    .line 228
    .end local v2    # "asyncTask":Lcom/android/systemui/recents/model/RecentsAppListLoader$LoadIconDynamicAsyncTask;
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/recents/views/NestedAppListView$NestedAppListViewAdapter;->this$0:Lcom/android/systemui/recents/views/NestedAppListView;

    iget-object v11, v11, Lcom/android/systemui/recents/views/NestedAppListView;->mLoader:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v1, v4}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->loadIcon(Lcom/android/systemui/recents/views/BaseAppListViewHolder;Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;Z)Lcom/android/systemui/recents/model/RecentsAppListLoader$LoadIconDynamicAsyncTask;

    move-result-object v6

    .line 229
    .local v6, "mLoadAsyncTask":Lcom/android/systemui/recents/model/RecentsAppListLoader$LoadIconDynamicAsyncTask;
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/android/systemui/recents/views/NestedAppListView$NestedViewHolder;->setAsyncTask(Lcom/android/systemui/recents/model/RecentsAppListLoader$LoadIconDynamicAsyncTask;)V

    .line 232
    .end local v6    # "mLoadAsyncTask":Lcom/android/systemui/recents/model/RecentsAppListLoader$LoadIconDynamicAsyncTask;
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/recents/views/NestedAppListView$NestedAppListViewAdapter;->this$0:Lcom/android/systemui/recents/views/NestedAppListView;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/systemui/recents/views/NestedAppListView$NestedViewHolder;->labelView:Landroid/widget/TextView;

    invoke-static {v11, v12, v4}, Lcom/android/systemui/recents/views/NestedAppListView;->-wrap0(Lcom/android/systemui/recents/views/NestedAppListView;Landroid/widget/TextView;Z)V

    .line 233
    if-eqz v4, :cond_8

    .line 234
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/systemui/recents/views/NestedAppListView$NestedViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 235
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/systemui/recents/views/NestedAppListView$NestedViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    const/16 v12, 0x4c

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 237
    :cond_5
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/systemui/recents/views/NestedAppListView$NestedViewHolder;->labelView:Landroid/widget/TextView;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/systemui/recents/views/NestedAppListView$NestedViewHolder;->labelView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v12

    const/16 v13, 0x4c

    invoke-virtual {v12, v13}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 238
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/systemui/recents/views/NestedAppListView$NestedViewHolder;->itemView:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setEnabled(Z)V

    .line 246
    :goto_2
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/systemui/recents/views/NestedAppListView$NestedViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->invalidate()V

    .line 248
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/systemui/recents/views/NestedAppListView$NestedViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    return-void

    .line 199
    .end local v5    # "hasIconCache":Z
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v10    # "taskAffinity":Ljava/lang/String;
    :cond_6
    sget v11, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->mItemContentWidthLand:I

    iput v11, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto/16 :goto_0

    .line 215
    .restart local v5    # "hasIconCache":Z
    .restart local v8    # "packageName":Ljava/lang/String;
    .restart local v10    # "taskAffinity":Ljava/lang/String;
    :cond_7
    const/4 v4, 0x0

    .local v4, "disabled":Z
    goto/16 :goto_1

    .line 240
    .end local v4    # "disabled":Z
    :cond_8
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/systemui/recents/views/NestedAppListView$NestedViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v11, :cond_9

    .line 241
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/systemui/recents/views/NestedAppListView$NestedViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    const/16 v12, 0xff

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 243
    :cond_9
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/systemui/recents/views/NestedAppListView$NestedViewHolder;->labelView:Landroid/widget/TextView;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/systemui/recents/views/NestedAppListView$NestedViewHolder;->labelView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v12

    const/16 v13, 0xff

    invoke-virtual {v12, v13}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 244
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/systemui/recents/views/NestedAppListView$NestedViewHolder;->itemView:Landroid/view/View;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_2
.end method

.method public bridge synthetic onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 252
    check-cast p1, Lcom/android/systemui/recents/views/NestedAppListView$NestedViewHolder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/NestedAppListView$NestedAppListViewAdapter;->onViewDetachedFromWindow(Lcom/android/systemui/recents/views/NestedAppListView$NestedViewHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Lcom/android/systemui/recents/views/NestedAppListView$NestedViewHolder;)V
    .locals 7
    .param p1, "holder"    # Lcom/android/systemui/recents/views/NestedAppListView$NestedViewHolder;

    .prologue
    const/4 v6, 0x0

    .line 253
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 254
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/NestedAppListView$NestedViewHolder;->getAdapterPosition()I

    move-result v0

    .line 255
    .local v0, "position":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 256
    return-void

    .line 258
    :cond_0
    const-string/jumbo v1, "NestedAppListView"

    const-string/jumbo v2, "onViewDetachedToWindow(%d)\n"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v1, p1, Lcom/android/systemui/recents/views/NestedAppListView$NestedViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 261
    iget-object v1, p1, Lcom/android/systemui/recents/views/NestedAppListView$NestedViewHolder;->labelView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v1, p1, Lcom/android/systemui/recents/views/NestedAppListView$NestedViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v1, p1, Lcom/android/systemui/recents/views/NestedAppListView$NestedViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    return-void
.end method
