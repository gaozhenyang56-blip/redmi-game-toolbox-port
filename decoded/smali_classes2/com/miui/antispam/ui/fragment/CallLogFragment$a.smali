.class Lcom/miui/antispam/ui/fragment/CallLogFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/ui/fragment/CallLogFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antispam/ui/fragment/CallLogFragment;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/fragment/CallLogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment$a;->a:Lcom/miui/antispam/ui/fragment/CallLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment$a;->a:Lcom/miui/antispam/ui/fragment/CallLogFragment;

    invoke-static {v0}, Lcom/miui/antispam/ui/fragment/CallLogFragment;->b0(Lcom/miui/antispam/ui/fragment/CallLogFragment;)Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1206ac

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f1206ab

    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/miui/antispam/ui/fragment/CallLogFragment$a$a;

    invoke-direct {v1, p0}, Lcom/miui/antispam/ui/fragment/CallLogFragment$a$a;-><init>(Lcom/miui/antispam/ui/fragment/CallLogFragment$a;)V

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method
