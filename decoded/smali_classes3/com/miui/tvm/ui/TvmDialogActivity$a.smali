.class Lcom/miui/tvm/ui/TvmDialogActivity$a;
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

    iput-object p1, p0, Lcom/miui/tvm/ui/TvmDialogActivity$a;->a:Lcom/miui/tvm/ui/TvmDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    invoke-static {}, Lef/x;->z()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/tvm/ui/TvmDialogActivity$a;->a:Lcom/miui/tvm/ui/TvmDialogActivity;

    invoke-static {p1}, Lcom/miui/tvm/ui/TvmDialogActivity;->d0(Lcom/miui/tvm/ui/TvmDialogActivity;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/tvm/ui/TvmDialogActivity$a;->a:Lcom/miui/tvm/ui/TvmDialogActivity;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/miui/tvm/ui/TvmDialogActivity;->c:Z

    invoke-static {p1}, Lcom/miui/tvm/ui/TvmDialogActivity;->e0(Lcom/miui/tvm/ui/TvmDialogActivity;)Z

    :goto_0
    return-void
.end method
