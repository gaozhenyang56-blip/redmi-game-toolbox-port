.class Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/d0<",
        "Ljava/util/List<",
        "Lcom/miui/optimizecenter/storage/model/PublicFileModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;


# direct methods
.method constructor <init>(Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$a;->a:Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$a;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$a;->b(Ljava/util/List;)V

    return-void
.end method

.method private synthetic b(Ljava/util/List;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$a;->a:Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;

    invoke-static {v0}, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->d0(Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;)Lcom/miui/optimizecenter/storage/view/EmptyView;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/miui/optimizecenter/storage/view/EmptyView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$a;->a:Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;

    invoke-static {v0}, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->e0(Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;)Lmiuix/appcompat/widget/Spinner;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$a;->a:Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;

    invoke-static {v0}, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->f0(Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$a;->a:Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;

    invoke-static {v0}, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->g0(Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$a;->a:Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;

    invoke-static {v0}, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->i0(Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;)Lcom/miui/optimizecenter/storage/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/optimizecenter/storage/b;->setData(Ljava/util/List;)V

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$a;->a:Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;

    invoke-static {p1}, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->j0(Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/optimizecenter/storage/model/PublicFileModel;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$a;->a:Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;

    new-instance v1, Lcom/miui/optimizecenter/storage/c;

    invoke-direct {v1, p0, p1}, Lcom/miui/optimizecenter/storage/c;-><init>(Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$a;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$a;->c(Ljava/util/List;)V

    return-void
.end method
