.class Lcom/miui/appmanager/fragment/ManageFragment$i;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/appmanager/fragment/ManageFragment;->l1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/appmanager/fragment/ManageFragment;


# direct methods
.method constructor <init>(Lcom/miui/appmanager/fragment/ManageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/fragment/ManageFragment$i;->a:Lcom/miui/appmanager/fragment/ManageFragment;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/appmanager/fragment/ManageFragment$i;->a:Lcom/miui/appmanager/fragment/ManageFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/appmanager/fragment/ManageFragment;->H0(Lcom/miui/appmanager/fragment/ManageFragment;Z)V

    iget-object p1, p0, Lcom/miui/appmanager/fragment/ManageFragment$i;->a:Lcom/miui/appmanager/fragment/ManageFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    const v0, 0x7f1201f4

    invoke-static {p1, v0}, Leg/c;->n(Landroid/content/Context;I)V

    :cond_0
    iget-object p1, p0, Lcom/miui/appmanager/fragment/ManageFragment$i;->a:Lcom/miui/appmanager/fragment/ManageFragment;

    iget-object v0, p1, Lcom/miui/appmanager/fragment/ManageFragment;->k0:Lmiuix/view/l;

    invoke-interface {v0}, Lmiuix/view/l;->getSearchInput()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/appmanager/fragment/ManageFragment;->i0(Lcom/miui/appmanager/fragment/ManageFragment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/appmanager/fragment/ManageFragment$i;->a:Lcom/miui/appmanager/fragment/ManageFragment;

    invoke-virtual {p1}, Lcom/miui/appmanager/fragment/ManageFragment;->h1()V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ManageFragment$i;->a:Lcom/miui/appmanager/fragment/ManageFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060098

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method
