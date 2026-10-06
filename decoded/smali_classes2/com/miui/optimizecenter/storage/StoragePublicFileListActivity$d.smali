.class Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$d;
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

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$d;->a:Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/miui/optimizecenter/storage/model/PublicFileModel;Lcom/miui/optimizecenter/storage/model/PublicFileModel;)I
    .locals 0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    if-nez p2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    invoke-virtual {p1}, Lcom/miui/optimizecenter/storage/model/PublicFileModel;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/miui/optimizecenter/storage/model/PublicFileModel;->getFileName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/miui/optimizecenter/storage/model/PublicFileModel;

    check-cast p2, Lcom/miui/optimizecenter/storage/model/PublicFileModel;

    invoke-virtual {p0, p1, p2}, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$d;->a(Lcom/miui/optimizecenter/storage/model/PublicFileModel;Lcom/miui/optimizecenter/storage/model/PublicFileModel;)I

    move-result p1

    return p1
.end method
