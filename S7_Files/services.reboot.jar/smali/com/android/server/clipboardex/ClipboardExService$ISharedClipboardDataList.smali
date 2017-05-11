.class Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;
.super Ljava/lang/Object;
.source "ClipboardExService.java"

# interfaces
.implements Landroid/sec/clipboard/data/IClipboardDataList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/clipboardex/ClipboardExService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ISharedClipboardDataList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList$1;
    }
.end annotation


# instance fields
.field private final mBind:Landroid/sec/clipboard/data/IClipboardDataList$Stub;

.field final synthetic this$0:Lcom/android/server/clipboardex/ClipboardExService;


# direct methods
.method private constructor <init>(Lcom/android/server/clipboardex/ClipboardExService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/clipboardex/ClipboardExService;

    .prologue
    .line 1263
    iput-object p1, p0, Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1264
    new-instance v0, Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList$1;

    invoke-direct {v0, p0}, Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList$1;-><init>(Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;)V

    iput-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;->mBind:Landroid/sec/clipboard/data/IClipboardDataList$Stub;

    .line 1263
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/clipboardex/ClipboardExService;Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/clipboardex/ClipboardExService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;-><init>(Lcom/android/server/clipboardex/ClipboardExService;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 1365
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;->mBind:Landroid/sec/clipboard/data/IClipboardDataList$Stub;

    return-object v0
.end method

.method public getClipByID(Ljava/lang/String;)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1355
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v1}, Lcom/android/server/clipboardex/ClipboardExService;->-get3(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getClipByID(Ljava/lang/String;)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v0

    .line 1356
    .local v0, "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    if-nez v0, :cond_0

    .line 1357
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v1}, Lcom/android/server/clipboardex/ClipboardExService;->-get9(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getClipByID(Ljava/lang/String;)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v0

    .line 1360
    :cond_0
    return-object v0
.end method

.method public getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 1305
    const-string/jumbo v2, "ClipboardExService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ISharedClipboardDataList getItem : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v2}, Lcom/android/server/clipboardex/ClipboardExService;->-get3(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v0

    .line 1307
    .local v0, "dataListSize":I
    if-ge p1, v0, :cond_0

    .line 1308
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v2}, Lcom/android/server/clipboardex/ClipboardExService;->-get3(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v2

    return-object v2

    .line 1310
    :cond_0
    sub-int v1, p1, v0

    .line 1311
    .local v1, "ownerIndex":I
    const-string/jumbo v2, "ClipboardExService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "data list size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " shared index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v2}, Lcom/android/server/clipboardex/ClipboardExService;->-get9(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getSharedItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v2

    return-object v2
.end method

.method public removeData(I)Z
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 1318
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1319
    const-string/jumbo v2, "ClipboardExService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ISharedClipboardDataList removeData() - index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    :cond_0
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v2}, Lcom/android/server/clipboardex/ClipboardExService;->-get3(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v0

    .line 1322
    .local v0, "dataListSize":I
    if-ge p1, v0, :cond_1

    .line 1323
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v2}, Lcom/android/server/clipboardex/ClipboardExService;->-get3(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeData(I)Z

    move-result v2

    return v2

    .line 1325
    :cond_1
    sub-int v1, p1, v0

    .line 1326
    .local v1, "ownerIndex":I
    const-string/jumbo v2, "ClipboardExService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "data list size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " shared index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v2}, Lcom/android/server/clipboardex/ClipboardExService;->-get9(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeData(I)Z

    move-result v2

    return v2
.end method

.method public size()I
    .locals 3

    .prologue
    .line 1295
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v1}, Lcom/android/server/clipboardex/ClipboardExService;->-wrap1(Lcom/android/server/clipboardex/ClipboardExService;)Z

    move-result v0

    .line 1296
    .local v0, "kioskEnabled":Z
    if-eqz v0, :cond_0

    .line 1297
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v1}, Lcom/android/server/clipboardex/ClipboardExService;->-get3(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v1

    return v1

    .line 1299
    :cond_0
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v1}, Lcom/android/server/clipboardex/ClipboardExService;->-get9(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->sharedSize()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v2}, Lcom/android/server/clipboardex/ClipboardExService;->-get3(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public updateData(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z
    .locals 4
    .param p1, "index"    # I
    .param p2, "clipData"    # Lcom/samsung/android/content/clipboard/data/SemClipData;

    .prologue
    .line 1333
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1334
    const-string/jumbo v1, "ClipboardExService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ISharedClipboardDataList updateData() - index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    :cond_0
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v1}, Lcom/android/server/clipboardex/ClipboardExService;->-get3(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 1338
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 1339
    const-string/jumbo v1, "ClipboardExService"

    const-string/jumbo v2, "ISharedClipboardDataList updateData() - index = is for regular mDataList"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    :cond_1
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v1}, Lcom/android/server/clipboardex/ClipboardExService;->-get3(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->updateData(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z

    move-result v1

    return v1

    .line 1343
    :cond_2
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v1}, Lcom/android/server/clipboardex/ClipboardExService;->-get3(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v1

    sub-int v0, p1, v1

    .line 1344
    .local v0, "newIndex":I
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 1345
    const-string/jumbo v1, "ClipboardExService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ISharedClipboardDataList updateData() - index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1346
    const-string/jumbo v3, " was higher than mDataList "

    .line 1345
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1346
    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v3}, Lcom/android/server/clipboardex/ClipboardExService;->-get3(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v3

    .line 1345
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1347
    const-string/jumbo v3, " newINxed to update from shared = "

    .line 1345
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    :cond_3
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v1}, Lcom/android/server/clipboardex/ClipboardExService;->-get9(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->updateData(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z

    move-result v1

    return v1
.end method
