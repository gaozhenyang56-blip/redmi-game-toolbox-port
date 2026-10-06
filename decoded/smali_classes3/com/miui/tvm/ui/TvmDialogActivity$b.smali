.class Lcom/miui/tvm/ui/TvmDialogActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/tvm/ui/TvmDialogActivity;->h0(Lmiuix/appcompat/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/tvm/ui/TvmDialogActivity;


# direct methods
.method constructor <init>(Lcom/miui/tvm/ui/TvmDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/tvm/ui/TvmDialogActivity$b;->a:Lcom/miui/tvm/ui/TvmDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/miui/tvm/ui/TvmDialogActivity$b;->a:Lcom/miui/tvm/ui/TvmDialogActivity;

    invoke-static {p1}, Lcom/miui/tvm/ui/TvmDialogActivity;->f0(Lcom/miui/tvm/ui/TvmDialogActivity;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    invoke-static {}, Lcom/miui/tvm/TvmManager;->f()Lcom/miui/tvm/TvmManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/tvm/TvmManager;->c()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/miui/tvm/TvmManager;->f()Lcom/miui/tvm/TvmManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/tvm/TvmManager;->c()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f121ae4

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    invoke-static {}, Lcom/miui/tvm/TvmManager;->f()Lcom/miui/tvm/TvmManager;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lcom/miui/tvm/TvmManager;->m(I)V

    iget-object p1, p0, Lcom/miui/tvm/ui/TvmDialogActivity$b;->a:Lcom/miui/tvm/ui/TvmDialogActivity;

    invoke-virtual {p1}, Lcom/miui/tvm/ui/TvmDialogActivity;->g0()V

    return-void
.end method
