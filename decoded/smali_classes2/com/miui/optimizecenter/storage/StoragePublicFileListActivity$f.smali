.class Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$f;->a:Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$f;->a:Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;

    if-nez p3, :cond_0

    invoke-static {p1}, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->m0(Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;)Ljava/util/Comparator;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->n0(Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;)Ljava/util/Comparator;

    move-result-object p2

    :goto_0
    invoke-static {p1, p2}, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->h0(Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;Ljava/util/Comparator;)Ljava/util/Comparator;

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$f;->a:Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;

    invoke-static {p1}, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->i0(Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;)Lcom/miui/optimizecenter/storage/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/optimizecenter/storage/b;->getData()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$f;->a:Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;

    invoke-static {p2}, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->g0(Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;)Ljava/util/Comparator;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$f;->a:Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;

    invoke-static {p1}, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->i0(Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;)Lcom/miui/optimizecenter/storage/b;

    move-result-object p1

    const/4 p2, 0x0

    iget-object p3, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$f;->a:Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;

    invoke-static {p3}, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->i0(Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;)Lcom/miui/optimizecenter/storage/b;

    move-result-object p3

    invoke-virtual {p3}, Lcom/miui/optimizecenter/storage/b;->getData()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
