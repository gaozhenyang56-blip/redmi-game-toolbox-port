.class Lcom/miui/gamebooster/ui/WonderFullVideoFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->x0(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/miui/gamebooster/ui/WonderFullVideoFragment;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/WonderFullVideoFragment;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment$d;->b:Lcom/miui/gamebooster/ui/WonderFullVideoFragment;

    iput-object p2, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment$d;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment$d;->a:Landroid/content/Context;

    iget-object p2, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment$d;->b:Lcom/miui/gamebooster/ui/WonderFullVideoFragment;

    const v0, 0x7f120a61

    invoke-virtual {p2, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment$d;->b:Lcom/miui/gamebooster/ui/WonderFullVideoFragment;

    iget-object p2, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment$d;->a:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->i0(Lcom/miui/gamebooster/ui/WonderFullVideoFragment;Landroid/content/Context;)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment$d;->b:Lcom/miui/gamebooster/ui/WonderFullVideoFragment;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->j0(Lcom/miui/gamebooster/ui/WonderFullVideoFragment;)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment$d;->b:Lcom/miui/gamebooster/ui/WonderFullVideoFragment;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->k0(Lcom/miui/gamebooster/ui/WonderFullVideoFragment;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment$d;->b:Lcom/miui/gamebooster/ui/WonderFullVideoFragment;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->h0(Lcom/miui/gamebooster/ui/WonderFullVideoFragment;)Landroid/widget/ListView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment$d;->b:Lcom/miui/gamebooster/ui/WonderFullVideoFragment;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->l0(Lcom/miui/gamebooster/ui/WonderFullVideoFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/WonderFullVideoFragment$d;->b:Lcom/miui/gamebooster/ui/WonderFullVideoFragment;

    const/4 p2, -0x1

    invoke-virtual {p1, p2, v0}, Lcom/miui/gamebooster/ui/WonderFullVideoFragment;->t(IZ)V

    :cond_0
    return-void
.end method
