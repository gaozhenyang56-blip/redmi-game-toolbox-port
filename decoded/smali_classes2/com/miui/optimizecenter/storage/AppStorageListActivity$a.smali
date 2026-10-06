.class Lcom/miui/optimizecenter/storage/AppStorageListActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/optimizecenter/storage/AppStorageListActivity;->onCreate(Landroid/os/Bundle;)V
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
        "Lwa/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/optimizecenter/storage/AppStorageListActivity;


# direct methods
.method constructor <init>(Lcom/miui/optimizecenter/storage/AppStorageListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageListActivity$a;->a:Lcom/miui/optimizecenter/storage/AppStorageListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lwa/a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageListActivity$a;->a:Lcom/miui/optimizecenter/storage/AppStorageListActivity;

    invoke-static {v0}, Lcom/miui/optimizecenter/storage/AppStorageListActivity;->f0(Lcom/miui/optimizecenter/storage/AppStorageListActivity;)Lcom/miui/optimizecenter/storage/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/optimizecenter/storage/a;->A(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/optimizecenter/storage/AppStorageListActivity;->e0(Lcom/miui/optimizecenter/storage/AppStorageListActivity;Ljava/util/List;)Ljava/util/List;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/optimizecenter/storage/a;->D(Landroid/content/Context;)Lcom/miui/optimizecenter/storage/a;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageListActivity$a;->a:Lcom/miui/optimizecenter/storage/AppStorageListActivity;

    invoke-static {v0}, Lcom/miui/optimizecenter/storage/AppStorageListActivity;->d0(Lcom/miui/optimizecenter/storage/AppStorageListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/optimizecenter/storage/a;->Y(Ljava/util/List;)V

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageListActivity$a;->a:Lcom/miui/optimizecenter/storage/AppStorageListActivity;

    invoke-static {p1}, Lcom/miui/optimizecenter/storage/AppStorageListActivity;->g0(Lcom/miui/optimizecenter/storage/AppStorageListActivity;)Lra/d;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageListActivity$a;->a:Lcom/miui/optimizecenter/storage/AppStorageListActivity;

    invoke-static {v0}, Lcom/miui/optimizecenter/storage/AppStorageListActivity;->d0(Lcom/miui/optimizecenter/storage/AppStorageListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lra/d;->setData(Ljava/util/List;)V

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageListActivity$a;->a:Lcom/miui/optimizecenter/storage/AppStorageListActivity;

    invoke-static {p1}, Lcom/miui/optimizecenter/storage/AppStorageListActivity;->d0(Lcom/miui/optimizecenter/storage/AppStorageListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/miui/optimizecenter/storage/AppStorageListActivity;->h0(Lcom/miui/optimizecenter/storage/AppStorageListActivity;Z)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/optimizecenter/storage/AppStorageListActivity$a;->a(Ljava/util/List;)V

    return-void
.end method
