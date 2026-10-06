.class Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$e;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$e;


# direct methods
.method constructor <init>(Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$e;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$e$a;->a:Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$e$a;->a:Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$e;

    iget-object p1, p1, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$e;->a:Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;

    invoke-static {p1}, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->l0(Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;)V

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object p1

    new-instance p2, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$e$a$a;

    invoke-direct {p2, p0}, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$e$a$a;-><init>(Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$e$a;)V

    invoke-virtual {p1, p2}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void
.end method
