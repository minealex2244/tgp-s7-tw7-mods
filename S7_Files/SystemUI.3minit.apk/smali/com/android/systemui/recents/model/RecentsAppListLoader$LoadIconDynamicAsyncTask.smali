.class public Lcom/android/systemui/recents/model/RecentsAppListLoader$LoadIconDynamicAsyncTask;
.super Landroid/os/AsyncTask;
.source "RecentsAppListLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/model/RecentsAppListLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoadIconDynamicAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;",
        "Ljava/lang/Integer;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field mComponentName:Ljava/lang/String;

.field mDisabled:Z

.field mViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/systemui/recents/views/BaseAppListViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field onlyLoad:Z

.field final synthetic this$0:Lcom/android/systemui/recents/model/RecentsAppListLoader;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/model/RecentsAppListLoader;Lcom/android/systemui/recents/views/BaseAppListViewHolder;Z)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/recents/model/RecentsAppListLoader;
    .param p2, "view"    # Lcom/android/systemui/recents/views/BaseAppListViewHolder;
    .param p3, "disabled"    # Z

    .prologue
    const/4 v0, 0x0

    .line 298
    iput-object p1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$LoadIconDynamicAsyncTask;->this$0:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 295
    iput-boolean v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$LoadIconDynamicAsyncTask;->onlyLoad:Z

    .line 296
    iput-boolean v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$LoadIconDynamicAsyncTask;->mDisabled:Z

    .line 299
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$LoadIconDynamicAsyncTask;->mViewReference:Ljava/lang/ref/WeakReference;

    .line 300
    iput-boolean p3, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$LoadIconDynamicAsyncTask;->mDisabled:Z

    .line 298
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "params"    # [Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;

    .prologue
    .line 305
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 306
    .local v0, "appInfo":Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;
    iget-object v1, v0, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$LoadIconDynamicAsyncTask;->mComponentName:Ljava/lang/String;

    .line 309
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$LoadIconDynamicAsyncTask;->this$0:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    iget-object v2, v0, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-static {v1, v2}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->-wrap0(Lcom/android/systemui/recents/model/RecentsAppListLoader;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 304
    check-cast p1, [Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/model/RecentsAppListLoader$LoadIconDynamicAsyncTask;->doInBackground([Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v4, 0x0

    .line 324
    iget-object v2, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$LoadIconDynamicAsyncTask;->mViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/BaseAppListViewHolder;

    .line 325
    .local v0, "holder":Lcom/android/systemui/recents/views/BaseAppListViewHolder;
    if-eqz v0, :cond_2

    .line 326
    iget-object v2, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$LoadIconDynamicAsyncTask;->this$0:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$LoadIconDynamicAsyncTask;->mComponentName:Ljava/lang/String;

    invoke-static {v2, v3, p1}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->-wrap1(Lcom/android/systemui/recents/model/RecentsAppListLoader;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 328
    iget-boolean v2, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$LoadIconDynamicAsyncTask;->onlyLoad:Z

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/android/systemui/recents/views/BaseAppListViewHolder;->iconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 329
    iget-object v2, v0, Lcom/android/systemui/recents/views/BaseAppListViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 330
    iget-boolean v2, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$LoadIconDynamicAsyncTask;->mDisabled:Z

    if-eqz v2, :cond_3

    .line 331
    iget-object v2, v0, Lcom/android/systemui/recents/views/BaseAppListViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 332
    iget-object v2, v0, Lcom/android/systemui/recents/views/BaseAppListViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0x4c

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 339
    :cond_0
    :goto_0
    iget-object v2, v0, Lcom/android/systemui/recents/views/BaseAppListViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->invalidate()V

    .line 343
    iget-object v2, v0, Lcom/android/systemui/recents/views/BaseAppListViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 344
    .local v1, "viewAnimator":Landroid/view/ViewPropertyAnimator;
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 345
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 346
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 349
    .end local v1    # "viewAnimator":Landroid/view/ViewPropertyAnimator;
    :cond_1
    iput-object v4, v0, Lcom/android/systemui/recents/views/BaseAppListViewHolder;->asyncTask:Ljava/lang/ref/WeakReference;

    .line 323
    :cond_2
    return-void

    .line 335
    :cond_3
    iget-object v2, v0, Lcom/android/systemui/recents/views/BaseAppListViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 336
    iget-object v2, v0, Lcom/android/systemui/recents/views/BaseAppListViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "icon"    # Ljava/lang/Object;

    .prologue
    .line 323
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .end local p1    # "icon":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/model/RecentsAppListLoader$LoadIconDynamicAsyncTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 314
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 313
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .param p1, "values"    # [Ljava/lang/Integer;

    .prologue
    .line 319
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 318
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "values"    # [Ljava/lang/Object;

    .prologue
    .line 318
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "values":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/model/RecentsAppListLoader$LoadIconDynamicAsyncTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
