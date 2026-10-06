.class Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxa/b$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/optimizecenter/storage/model/PublicFileModel;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;


# direct methods
.method constructor <init>(Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$b;->b:Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$b;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/optimizecenter/storage/model/PublicFileModel;",
            ">;J)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$b;->b:Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;

    invoke-static {v0}, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->k0(Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;)Lcb/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcb/c;->e(Ljava/util/List;)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/optimizecenter/storage/a;->D(Landroid/content/Context;)Lcom/miui/optimizecenter/storage/a;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/miui/optimizecenter/storage/a;->Z(J)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/optimizecenter/storage/a;->D(Landroid/content/Context;)Lcom/miui/optimizecenter/storage/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/optimizecenter/storage/a;->Q()V

    return-void
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/optimizecenter/storage/model/PublicFileModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$b;->a:Ljava/util/List;

    return-object v0
.end method
