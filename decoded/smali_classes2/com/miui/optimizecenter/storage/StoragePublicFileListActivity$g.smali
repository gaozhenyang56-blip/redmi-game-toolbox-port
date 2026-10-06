.class Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/optimizecenter/storage/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;


# direct methods
.method constructor <init>(Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$g;->a:Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$g;->a:Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;

    invoke-static {p1}, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->i0(Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;)Lcom/miui/optimizecenter/storage/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/optimizecenter/storage/b;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/optimizecenter/storage/model/PublicFileModel;

    invoke-virtual {p1}, Lcom/miui/optimizecenter/storage/model/PublicFileModel;->changeChecked()V

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$g;->a:Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;

    invoke-static {p1}, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->i0(Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;)Lcom/miui/optimizecenter/storage/b;

    move-result-object p1

    const-string v0, "checked"

    invoke-virtual {p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$g;->a:Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;

    invoke-static {p1}, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->j0(Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;)V

    return-void
.end method
