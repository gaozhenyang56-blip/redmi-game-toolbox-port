.class Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$e$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$e$a;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$e$a;


# direct methods
.method constructor <init>(Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$e$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$e$a$a;->a:Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$e$a$a;->a:Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$e$a;

    iget-object v0, v0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$e$a;->a:Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$e;

    iget-object v0, v0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$e;->a:Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;

    invoke-static {v0}, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;->k0(Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;)Lcb/c;

    move-result-object v0

    invoke-virtual {v0}, Lcb/c;->b()V

    return-void
.end method
