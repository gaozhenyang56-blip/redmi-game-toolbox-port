.class Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/miui/optimizecenter/storage/model/PublicFileModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;


# direct methods
.method constructor <init>(Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$c;->a:Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/miui/optimizecenter/storage/model/PublicFileModel;Lcom/miui/optimizecenter/storage/model/PublicFileModel;)I
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 v2, -0x1

    if-nez p2, :cond_2

    return v2

    :cond_2
    invoke-virtual {p1}, Lcom/miui/optimizecenter/storage/model/PublicFileModel;->getFileSize()J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/miui/optimizecenter/storage/model/PublicFileModel;->getFileSize()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p2}, Lcom/miui/optimizecenter/storage/model/PublicFileModel;->getFileSize()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/miui/optimizecenter/storage/model/PublicFileModel;->getFileSize()J

    move-result-wide p1

    cmp-long p1, v2, p1

    if-lez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/miui/optimizecenter/storage/model/PublicFileModel;

    check-cast p2, Lcom/miui/optimizecenter/storage/model/PublicFileModel;

    invoke-virtual {p0, p1, p2}, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$c;->a(Lcom/miui/optimizecenter/storage/model/PublicFileModel;Lcom/miui/optimizecenter/storage/model/PublicFileModel;)I

    move-result p1

    return p1
.end method
