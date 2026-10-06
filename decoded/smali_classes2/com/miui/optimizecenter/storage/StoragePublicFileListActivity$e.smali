.class Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$e;->a:Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$e;->a:Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity;

    invoke-direct {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f12186c

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f12186b

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    new-instance v0, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$e$a;

    invoke-direct {v0, p0}, Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$e$a;-><init>(Lcom/miui/optimizecenter/storage/StoragePublicFileListActivity$e;)V

    const v1, 0x7f120644

    invoke-virtual {p1, v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f120499

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method
