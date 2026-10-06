.class Lcom/miui/appmanager/fragment/ManageFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/appmanager/fragment/ManageFragment;
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

    iput-object p1, p0, Lcom/miui/appmanager/fragment/ManageFragment$b;->a:Lcom/miui/appmanager/fragment/ManageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ManageFragment$b;->a:Lcom/miui/appmanager/fragment/ManageFragment;

    invoke-static {v0}, Lcom/miui/appmanager/fragment/ManageFragment;->g0(Lcom/miui/appmanager/fragment/ManageFragment;)Lcom/miui/appmanager/widget/AMMessageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ManageFragment$b;->a:Lcom/miui/appmanager/fragment/ManageFragment;

    invoke-static {v0}, Lcom/miui/appmanager/fragment/ManageFragment;->h0(Lcom/miui/appmanager/fragment/ManageFragment;)Lcom/miui/appmanager/widget/AMMainTopView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ManageFragment$b;->a:Lcom/miui/appmanager/fragment/ManageFragment;

    invoke-static {v0, p1}, Lcom/miui/appmanager/fragment/ManageFragment;->i0(Lcom/miui/appmanager/fragment/ManageFragment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/appmanager/fragment/ManageFragment$b;->a:Lcom/miui/appmanager/fragment/ManageFragment;

    invoke-static {p1}, Lcom/miui/appmanager/fragment/ManageFragment;->j0(Lcom/miui/appmanager/fragment/ManageFragment;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "search"

    invoke-static {p1}, Lf3/a;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/appmanager/fragment/ManageFragment$b;->a:Lcom/miui/appmanager/fragment/ManageFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/appmanager/fragment/ManageFragment;->k0(Lcom/miui/appmanager/fragment/ManageFragment;Z)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/appmanager/fragment/ManageFragment$b;->a:Lcom/miui/appmanager/fragment/ManageFragment;

    invoke-static {p1}, Lcom/miui/appmanager/fragment/ManageFragment;->l0(Lcom/miui/appmanager/fragment/ManageFragment;)V

    iget-object p1, p0, Lcom/miui/appmanager/fragment/ManageFragment$b;->a:Lcom/miui/appmanager/fragment/ManageFragment;

    invoke-static {p1}, Lcom/miui/appmanager/fragment/ManageFragment;->d0(Lcom/miui/appmanager/fragment/ManageFragment;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
