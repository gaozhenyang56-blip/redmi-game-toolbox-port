.class Lcom/miui/gamebooster/predownload/PreDownloadFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk7/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/predownload/PreDownloadFragment;->j0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/predownload/PreDownloadFragment;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/predownload/PreDownloadFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/predownload/PreDownloadFragment$a;->a:Lcom/miui/gamebooster/predownload/PreDownloadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public b(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lj7/a;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Li7/a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/gamebooster/predownload/PreDownloadFragment$a;->a:Lcom/miui/gamebooster/predownload/PreDownloadFragment;

    invoke-static {v0}, Lcom/miui/gamebooster/predownload/PreDownloadFragment;->d0(Lcom/miui/gamebooster/predownload/PreDownloadFragment;)V

    iget-object v0, p0, Lcom/miui/gamebooster/predownload/PreDownloadFragment$a;->a:Lcom/miui/gamebooster/predownload/PreDownloadFragment;

    invoke-static {v0, p1}, Lcom/miui/gamebooster/predownload/PreDownloadFragment;->f0(Lcom/miui/gamebooster/predownload/PreDownloadFragment;Ljava/util/List;)Ljava/util/List;

    iget-object p1, p0, Lcom/miui/gamebooster/predownload/PreDownloadFragment$a;->a:Lcom/miui/gamebooster/predownload/PreDownloadFragment;

    invoke-static {p1}, Lcom/miui/gamebooster/predownload/PreDownloadFragment;->e0(Lcom/miui/gamebooster/predownload/PreDownloadFragment;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/gamebooster/predownload/PreDownloadFragment;->l0(Ljava/util/List;)V

    return-void
.end method
